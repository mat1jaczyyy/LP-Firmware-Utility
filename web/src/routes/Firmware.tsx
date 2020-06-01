import React, { useState, useCallback, useEffect, useRef } from "react";
import { useDispatch } from "react-redux";
import { Link } from "react-router-dom";
import { saveAs } from "file-saver";

import { lpModels, lpOptions, svgs, bltext, LaunchpadType } from "../constants";
import MidiButton from "../components/MidiButton";
import PaletteGrid from "../components/PaletteGrid";
import { useKonami, useLaunchpads, useWasm, useAppState } from "../hooks";
import { flattenObject } from "../utils";
import { showNotice, hideNotice } from "../store/actions/notice";

const isWindows = window.navigator.platform.indexOf("Win") !== -1;

const Firmware = () => {
  const [selectedLp, setSelectedLp] = useState<LaunchpadType>(
    lpModels[0] as LaunchpadType
  );
  const [optionList, setOptionList] = useState(lpOptions[selectedLp]);
  const [optionState, setOptionState]: any = useState({});

  const paletteDirty = useAppState(({ palette }) => palette.dirty);
  const palette = useAppState(({ palette }) => palette.colors);

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
            style={{ paddingLeft: recursion * 15, margin: "5px 0" }}
          >
            <input
              type="checkbox"
              disabled={!!parent && !optionState[parent]}
              checked={optionState[name]}
              style={{ marginRight: 5 }}
              onChange={() =>
                setOptionState((s: any) => ({
                  ...s,
                  [name]: !s[name],
                }))
              }
            />
            <span
              onClick={() =>
                setOptionState((s: any) => ({
                  ...s,
                  [name]: !s[name],
                }))
              }
            >
              {name}
            </span>
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
      palette: { [index: number]: number[] },
      rawFW?: Uint8Array
    ) => {
      try {
        let firmware: Uint8Array = new Uint8Array();

        if (!rawFW)
          firmware = await patchFirmware(selectedLp, options, palette);

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
    async (selectedLp: string, options: any, palette: any) => {
      try {
        const fw = await patchFirmware(selectedLp, options, palette);

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

        flashFirmware(targetLp, {}, palette, firmware);
      } catch (e) {
        dispatch(
          showNotice({
            text: e.toString(),
            dismissable: true,
          })
        );
      }
    },
    [flashFirmware, verifyFirmware, dispatch, palette]
  );

  // Update patch options when selected LP changed
  useEffect(() => {
    if (paletteDirty && selectedLp !== LaunchpadType.BL_LPPROMK3)
      lpOptions[selectedLp]["Custom Palette"] = true;
    else delete lpOptions[selectedLp]["Custom Palette"];

    setOptionList(lpOptions[selectedLp]);
    setOptionState(flattenObject(lpOptions[selectedLp]));
  }, [selectedLp, setOptionState, paletteDirty]);

  return (
    <div className="inner">
      <select
        className="launchpads"
        onChange={(e) =>
          e.target.value === "Custom SysEx File"
            ? fileRef.current?.click()
            : setSelectedLp(e.target.value as LaunchpadType)
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

      <div className="options">{getOptions(optionList)}</div>
      
      {selectedLp !== LaunchpadType.BL_LPPROMK3 && (
        <Link
          to="/palette"
          style={{ color: "#FFF", opacity: 0.5, margin: 0, marginBottom: 10 }}
        >
          {"Palette Utility >"}
        </Link>
      )}

      {optionState["Custom Palette"] && (
        <>
          <p style={{ margin: 0, transform: "translateY(10px)" }}>
            Palette being applied:
          </p>
          <div style={{ transform: "scale(0.8)" }}>
            <PaletteGrid />
          </div>
        </>
      )}

      <MidiButton
        onClick={() => flashFirmware(selectedLp, optionState, palette)}
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
        <p onClick={() => downloadFirmware(selectedLp, optionState, palette)}>
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
    </div>
  );
};

export default Firmware;
