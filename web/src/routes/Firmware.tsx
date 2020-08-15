import React, { useState, useCallback, useEffect, useRef } from "react";
import { Link } from "react-router-dom";
import { saveAs } from "file-saver";
import { useObserver } from "mobx-react-lite";

import {
  lpModels,
  lpOptions,
  svgs,
  bltext,
  LaunchpadTypes,
  FirmwareTypes,
} from "../constants";
import Button from "../components/Button";
import PaletteGrid from "../components/PaletteGrid";
import { useStore } from "../hooks";
import { flattenObject, deviceIsBLForFW } from "../utils";
import RouteContainer from "../components/RouteContainer";
import { useDropzone } from "react-dropzone";

const isWindows = window.navigator.platform.indexOf("Win") !== -1;

const Firmware = () => {
  const uiStore = useStore(({ ui }) => ui);
  const paletteStore = useStore(({ palette }) => palette);
  const wasmStore = useStore(({ wasm }) => wasm);
  const launchpadStore = useStore(({ launchpads }) => launchpads);
  const noticeStore = useStore(({ notice }) => notice);

  const [optionList, setOptionList] = useState<undefined | any>(
    lpOptions[uiStore.selectedFirmware]
  );

  const [optionState, setOptionState] = useState<Record<string, boolean>>({});

  const fileRef = useRef<HTMLInputElement | null>(null);

  const renderOptions = useCallback(
    (options: any, recursion = 0, parent?: string) =>
      Object.entries(options).map(([name, value]) => {
        let children: any;
        if (value !== false)
          children = renderOptions(value, recursion + 1, name);

        if (
          name === "Apply Palette" &&
          uiStore.selectedFirmware === LaunchpadTypes.CFW
        )
          return null;

        return (
          <div
            className={recursion === 0 ? "w-auto" : undefined}
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
    [optionState, setOptionState, uiStore.selectedFirmware]
  );

  const flashFirmware = useCallback(
    async (
      selectedLp: FirmwareTypes,
      options: { [key: string]: any },
      palette: { [index: number]: number[] },
      rawFW?: Uint8Array
    ) => {
      try {
        let firmware: Uint8Array = new Uint8Array();

        if (!rawFW)
          firmware = await wasmStore.patch(selectedLp, options, palette);

        let targetLp =
          selectedLp === FirmwareTypes.CFW || selectedLp === FirmwareTypes.CFY
            ? FirmwareTypes.LPPRO
            : selectedLp;

        let {
          cancelFlash,
          flashPromise: startFlash,
        } = launchpadStore.queueFirmwareFlash(rawFW || firmware, targetLp);

        startFlash()
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

        if (
          !launchpadStore.launchpad ||
          !deviceIsBLForFW(launchpadStore.launchpad.type, targetLp)
        )
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
    async (selectedLp: FirmwareTypes, options: any, palette: any) => {
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

  const onDrop = useCallback(
    ([file]: File[]) => uiStore.konamiSuccess && uploadFirmware(file),
    [uiStore.konamiSuccess, uploadFirmware]
  );

  const { getInputProps, getRootProps } = useDropzone({ onDrop });

  useEffect(() => {
    let selectedFw = uiStore.selectedFirmware;

    if (
      paletteStore.dirty &&
      selectedFw !== FirmwareTypes.LPPROMK3 &&
      lpOptions[selectedFw] !== undefined
    )
      lpOptions[selectedFw]!["Apply Palette"] = true;
    else if (selectedFw === FirmwareTypes.LPPROMK3)
      delete lpOptions[selectedFw]["Apply Palette"];

    setOptionList(lpOptions[selectedFw]);
    setOptionState(flattenObject(lpOptions[selectedFw]));
  }, [paletteStore.dirty, uiStore.selectedFirmware]);

  return useObserver(() => (
    <RouteContainer {...getRootProps()}>
      <select
        style={{
          width: `${uiStore.selectedFirmware.length * 0.55 + 2.5}em`,
        }}
        className="py-2 px-4 text-3xl font-normal font-sans appearance-none custom-select"
        onChange={(e) =>
          e.target.value === FirmwareTypes.CUSTOM_SYSEX
            ? fileRef.current?.click()
            : uiStore.setSelectedFirmware(e.target.value as FirmwareTypes)
        }
        value={uiStore.selectedFirmware}
      >
        {lpModels
          .concat(uiStore.konamiSuccess ? [FirmwareTypes.CUSTOM_SYSEX] : [])
          .map((model) => (
            <option value={model} key={model}>
              {model}
            </option>
          ))}
      </select>

      <div className="w-auto">{renderOptions(optionList)}</div>

      {uiStore.selectedFirmware === LaunchpadTypes.CFW &&
        optionState["Apply Palette"] && (
          <p className=" text-md text-center">
            <span className="opacity-50">
              Upload custom palettes to CFW <br /> in the{" "}
            </span>
            <Link to="/palette" className="opacity-75 text-white underline">
              Palette section
            </Link>
          </p>
        )}

      {paletteStore.dirty &&
        !([
          FirmwareTypes.CFW,
          FirmwareTypes.CFY,
          FirmwareTypes.LPPROMK3,
        ] as FirmwareTypes[]).includes(uiStore.selectedFirmware) && (
          <div className="flex flex-col items-center py-2 space-y-2">
            <p className="text-lg">Current Palette:</p>
            <PaletteGrid width={350} />
          </div>
        )}

      <Button
        onClick={() =>
          flashFirmware(
            uiStore.selectedFirmware,
            optionState,
            paletteStore.palette
          )
        }
        disabled={!launchpadStore.available}
      >
        Update
      </Button>

      <input
        {...getInputProps()}
        type="file"
        accept=".syx"
        style={{ display: "none" }}
        onChange={(e) => uploadFirmware(e.target.files?.[0])}
        ref={fileRef}
      />

      <p className="text-sm">
        <span className="opacity-25">...or </span>
        <span
          onClick={() =>
            downloadFirmware(
              uiStore.selectedFirmware,
              optionState,
              paletteStore.palette
            )
          }
          className="opacity-75 cursor-pointer underline"
        >
          download
        </span>
      </p>

      {isWindows && (
        <p className="pt-4">
          <span className="opacity-50">Don't forget to install </span>
          <a
            href="https://github.com/mat1jaczyyy/apollo-studio/raw/master/Publish/novationusbmidi.exe"
            target="_blank"
            rel="noopener noreferrer"
            className="opacity-75 underline"
          >
            Novation's USB driver!
          </a>
        </p>
      )}
    </RouteContainer>
  ));
};

export default Firmware;
