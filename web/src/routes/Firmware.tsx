import React, { useState, useCallback, useEffect, useRef } from "react";
import { useDispatch } from "react-redux";
import { Link } from "react-router-dom";
import {saveAs} from "file-saver"

import { lpModels, lpOptions, svgs, bltext } from "../constants";
import { useKonami, useLaunchpads, useWasm, useAppState } from "../hooks";
import { flattenObject } from "../utils";
import MidiButton from "../components/MidiButton";
import { showNotice, hideNotice } from "../store/actions/notice";
import PaletteGrid from "../components/PaletteGrid";

const isWindows = window.navigator.platform.indexOf("Win") !== -1;

const Firmware = () => {
  const [selectedLp, setSelectedLp] = useState(lpModels[0]);
  const [optionState, setOptionState]: any = useState({});

  const paletteDirty = useAppState(({ palette }) => palette.dirty);

  const dispatch = useDispatch();

  const konamiSuccess = useKonami();
  const { patchFirmware, verifyFirmware } = useWasm();
  const { launchpads, queueFirmwareFlash } = useLaunchpads();

  const fileRef = useRef<HTMLInputElement | null>(null);

  const getOptions = useCallback(
    (options: any, recursion = 0, parent?: string) =>
      Object.entries(options).map(([name, value]) => {
        let children: any;
        if (value !== false) children = getOptions(value, recursion + 1, name);

        return (
          <div
            className={recursion === 0 ? "mainOption" : undefined}
            key={name}
            style={{ paddingLeft: recursion * 15 }}
          >
            <input
              type="checkbox"
              disabled={!!parent && !optionState[parent]}
              defaultChecked={false}
              value={optionState[name]}
              onChange={() =>
                setOptionState((s: any) => ({
                  ...s,
                  [name]: !s[name],
                }))
              }
            />
            <span>{name}</span>
            {children}
          </div>
        );
      }),
    [optionState, setOptionState]
  );

  const flashFirmware = useCallback(
    async (
      selectedLp: string,
      options: { [key: string]: any },
      rawFW?: Uint8Array
    ) => {
      try {
        let firmware: Uint8Array = new Uint8Array();

        if (!rawFW) firmware = await patchFirmware(selectedLp, options);

        let targetLp =
          lpModels.indexOf(selectedLp) === 6 ? lpModels[5] : selectedLp;

        let { cancelFlash, flashPromise } = queueFirmwareFlash(
          rawFW || firmware,
          targetLp
        );

        flashPromise
          .then(async (continueFlashing: any) => {
            if (!continueFlashing) return;
            dispatch(
              showNotice({
                text: "Updating...",
                dismissable: false,
                showProgress: true,
              })
            );
            return await continueFlashing();
          })
          .then(() => dispatch(hideNotice));

        if (!launchpads.some((lp) => lp.type === targetLp))
          dispatch(
            showNotice({
              text: `Please connect a ${selectedLp} in bootloader mode to continue flashing.`,
              dismissable: true,
              svg: `./svg/${svgs[selectedLp]}.svg`,
              bl: `You can enter the bootloader by holding ${bltext[selectedLp]} while turning your Launchpad on.`,
              callback: cancelFlash,
            })
          );
      } catch (e) {
        dispatch(
          showNotice({
            text: e.toString(),
            dismissable: true,
          })
        );
      }
    },
    [patchFirmware, queueFirmwareFlash, launchpads, dispatch]
  );

  const downloadFirmware = useCallback(
    async (selectedLp: string, options: any) => {
      try {
        const fw = await patchFirmware(selectedLp, options);

        saveAs(new Blob([fw.buffer]), "output.syx");
      } catch (e) {
        dispatch(
          showNotice({
            text: e.toString(),
            dismissable: true,
          })
        );
      }
    },
    [patchFirmware, dispatch]
  );

  const uploadFirmware = useCallback(
    async (file?: File) => {
      if (!file) return;
      let firmware = new Uint8Array(await file.arrayBuffer());

      try {
        const targetLp = verifyFirmware(firmware);

        flashFirmware(targetLp, {}, firmware);
      } catch (e) {
        dispatch(
          showNotice({
            text: e.toString(),
            dismissable: true,
          })
        );
      }
    },
    [flashFirmware, verifyFirmware, dispatch]
  );

  // Update patch options when selected LP changed
  useEffect(() => {
    setOptionState(flattenObject(lpOptions[selectedLp]));
  }, [selectedLp, setOptionState]);

  return (
    <div className="inner">
      <select
        className="launchpads"
        onChange={(e) =>
          e.target.value === "Custom SysEx File"
            ? fileRef.current?.click()
            : setSelectedLp(e.target.value)
        }
      >
        {lpModels
          .concat(konamiSuccess ? ["Custom SysEx File"] : [])
          .map((model) => (
            <option value={model} key={model}>
              {model}
            </option>
          ))}
      </select>

      <div className="options">{getOptions(lpOptions[selectedLp])}</div>

      <MidiButton
        onClick={() => flashFirmware(selectedLp, optionState)}
        action="flash firmware"
      />
      <input
        type="file"
        accept=".syx"
        style={{ display: "none" }}
        onChange={(e) => uploadFirmware(e.target.files?.[0])}
        ref={fileRef}
      />

      <div style={{ marginTop: -15 }} className="smol">
        <span>...or</span>
        <p onClick={() => downloadFirmware(selectedLp, optionState)}>
          download
        </p>
      </div>

      {isWindows && (
        <div
          className="smol"
          style={{
            marginTop: 20,
          }}
        >
          Don't forget to install
          <a
            href="https://github.com/mat1jaczyyy/apollo-studio/raw/master/Publish/nvnusbaudio-2.15.5.exe"
            target="_blank"
            rel="noopener noreferrer"
          >
            Novation's USB driver
          </a>
          !
        </div>
      )}
      
      {paletteDirty && (
        <>
          {" "}
          <p>Palette being applied:</p>
          <PaletteGrid />
        </>
      )}

      <Link
        to="/palette"
        style={{ color: "#FFF", opacity: 0.5, marginTop: 10 }}
      >
        {"Palette Utility >"}
      </Link>
    </div>
  );
};

export default Firmware;
