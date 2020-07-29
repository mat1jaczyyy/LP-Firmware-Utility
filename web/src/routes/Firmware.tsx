import React, { useState, useCallback, useEffect, useRef } from "react";
import { Link } from "react-router-dom";
import { saveAs } from "file-saver";
import { useObserver } from "mobx-react-lite";

import { lpModels, lpOptions, svgs, bltext, LaunchpadType } from "../constants";
import MidiButton from "../components/MidiButton";
import PaletteGrid from "../components/PaletteGrid";
import { useStore } from "../hooks";
import { flattenObject } from "../utils";

const isWindows = window.navigator.platform.indexOf("Win") !== -1;

const Firmware = () => {
  const uiStore = useStore(({ ui }) => ui);
  const paletteStore = useStore(({ palette }) => palette);
  const wasmStore = useStore(({ wasm }) => wasm);
  const launchpadStore = useStore(({ launchpads }) => launchpads);
  const noticeStore = useStore(({ notice }) => notice);

  const [optionList, setOptionList] = useState(lpOptions[uiStore.selectedLp]);
  const [optionState, setOptionState]: any = useState({});

  const fileRef = useRef<HTMLInputElement | null>(null);

  const getOptions = useCallback(
    (options: any, recursion = 0, parent?: string) =>
      Object.entries(options).map(([name, value]) => {
        let children: any;
        if (value !== false) children = getOptions(value, recursion + 1, name);

        if (
          name === "Custom Palette" &&
          uiStore.selectedLp === LaunchpadType.CFW
        )
          return null;

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
    [optionState, setOptionState, uiStore.selectedLp]
  );

  const flashFirmware = useCallback(
    async (
      selectedLp: LaunchpadType,
      options: { [key: string]: any },
      palette: { [index: number]: number[] },
      rawFW?: Uint8Array
    ) => {
      try {
        let firmware: Uint8Array = new Uint8Array();

        if (!rawFW)
          firmware = await wasmStore.patch(selectedLp, options, palette);

        let targetLp =
          (selectedLp === LaunchpadType.CFW || selectedLp === LaunchpadType.CFY)
            ? LaunchpadType.BL_LPPRO
            : selectedLp;

        let { cancelFlash, flashPromise } = launchpadStore.queueFirmwareFlash(
          rawFW || firmware,
          targetLp
        );

        flashPromise
          .then(async (continueFlashing: any) => {
            if (!continueFlashing) return;
            noticeStore.show({
              text: "Updating...",
              dismissable: false,
              showProgress: true,
            });
            return await continueFlashing();
          })
          .then(noticeStore.hide);

        if (!launchpadStore.launchpads.some((lp) => lp.type === targetLp))
          noticeStore.show({
            text: `Please connect a ${targetLp} in bootloader mode to continue flashing.`,
            dismissable: true,
            svg: `./svg/${svgs[selectedLp]}.svg`,
            bl: `You can enter the bootloader by holding ${bltext[selectedLp]} while turning your Launchpad on.`,
            callback: cancelFlash,
          });
      } catch (e) {
        noticeStore.show({
          text: e.toString(),
          dismissable: true,
        });
      }
    },
    [wasmStore, launchpadStore, noticeStore]
  );

  const downloadFirmware = useCallback(
    async (selectedLp: string, options: any, palette: any) => {
      try {
        const fw = await wasmStore.patch(selectedLp, options, palette);

        saveAs(new Blob([fw.buffer]), "output.syx");
      } catch (e) {
        noticeStore.show({
          text: e.toString(),
          dismissable: true,
        });
      }
    },
    [wasmStore, noticeStore]
  );

  const uploadFirmware = useCallback(
    async (file?: File) => {
      if (!file) return;
      let firmware = new Uint8Array(await file.arrayBuffer());

      try {
        const targetLp = wasmStore.verify(firmware);

        flashFirmware(targetLp, {}, paletteStore.palette, firmware);
      } catch (e) {
        noticeStore.show({
          text: e.toString(),
          dismissable: true,
        });
      }
    },
    [flashFirmware, wasmStore, paletteStore.palette, noticeStore]
  );

  useEffect(() => {
    let selectedLp = uiStore.selectedLp;

    if (paletteStore.dirty && selectedLp !== LaunchpadType.BL_LPPROMK3)
      lpOptions[selectedLp]["Custom Palette"] = true;
    else delete lpOptions[selectedLp]["Custom Palette"];

    setOptionList(lpOptions[selectedLp]);
    setOptionState(flattenObject(lpOptions[selectedLp]));
  }, [paletteStore.dirty, uiStore.selectedLp]);

  return useObserver(() => (
    <div className="inner">
      <select
        className="launchpads"
        onChange={(e) =>
          e.target.value === "Custom SysEx File"
            ? fileRef.current?.click()
            : (uiStore.selectedLp = e.target.value as LaunchpadType)
        }
        value={uiStore.selectedLp}
      >
        {lpModels
          .concat(uiStore.konamiSuccess ? [LaunchpadType.CFY, "Custom SysEx File"] : [])
          .map((model) => (
            <option value={model} key={model}>
              {model}
            </option>
          ))}
      </select>

      <div className="options">{getOptions(optionList)}</div>

      {uiStore.selectedLp === LaunchpadType.CFW &&
        optionState["Custom Palette"] && (
          <p style={{ margin: 0, textAlign: "center", opacity: 0.5 }}>
            Upload custom palettes
            <br />
            to CFW using the
          </p>
        )}

      {uiStore.selectedLp !== LaunchpadType.BL_LPPROMK3 && (
        <Link
          to="/palette"
          style={{ color: "#FFF", opacity: 0.5, margin: 0, marginBottom: 10 }}
        >
          {"Palette Utility >"}
        </Link>
      )}

      {optionState["Custom Palette"] &&
        uiStore.selectedLp !== LaunchpadType.CFW && (
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
        onClick={() =>
          flashFirmware(uiStore.selectedLp, optionState, paletteStore.palette)
        }
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
        <p
          onClick={() =>
            downloadFirmware(
              uiStore.selectedLp,
              optionState,
              paletteStore.palette
            )
          }
        >
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
            href="https://github.com/mat1jaczyyy/apollo-studio/raw/master/Publish/novationusbmidi.exe"
            target="_blank"
            rel="noopener noreferrer"
          >
            Novation's USB driver
          </a>
          !
        </div>
      )}
    </div>
  ));
};

export default Firmware;
