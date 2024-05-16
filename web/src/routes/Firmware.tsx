import React, { useCallback, useRef } from "react";
import { Link } from "react-router-dom";
import { useDropzone } from "react-dropzone";
import { saveAs } from "file-saver";
import { useObserver } from "mobx-react-lite";

import {
  FirmwareConfig,
  firmwares,
  FlashableFirmware,
  Firmware,
  lpModels,
} from "../constants";
import Button from "../components/Button";
import PaletteGrid from "../components/PaletteGrid";
import { useStore } from "../hooks";
import { deviceIsBLForFW } from "../utils";
import RouteContainer from "../components/RouteContainer";
import { PatchOptions } from "../store/UIStore";
import { toJS } from "mobx";
import ReactTooltip from "react-tooltip";

const isWindows = window.navigator.platform.indexOf("Win") !== -1;

const CUSTOM_SYSTEX = "Custom SysEx File";

export default function () {
  const uiStore = useStore(({ ui }) => ui);
  const paletteStore = useStore(({ palette }) => palette);
  const wasmStore = useStore(({ wasm }) => wasm);
  const ihexStore = useStore(({ ihex }) => ihex);
  const launchpadStore = useStore(({ launchpads }) => launchpads);
  const noticeStore = useStore(({ notice }) => notice);

  const fileRef = useRef<HTMLInputElement | null>(null);

  const firmwareConfig: FirmwareConfig = firmwares[uiStore.selectedFirmware];

  const flashFirmware = async (
    selectedLp: FlashableFirmware,
    options: PatchOptions,
    palette: { [index: number]: number[] },
    rawFW?: Uint8Array,
  ) => {
    try {
      const firmwareConfig = firmwares[selectedLp];

      let firmware: Uint8Array = new Uint8Array();

      if (!rawFW)
        firmware = await wasmStore.patch(selectedLp, options, palette);

      let targetLp = selectedLp === "CFY" ? "LPPRO" : selectedLp;

      let { cancelFlash, flashPromise: startFlash } =
        launchpadStore.queueFirmwareFlash(rawFW || firmware, targetLp);

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
        !launchpadStore.launchpad.type ||
        !deviceIsBLForFW(launchpadStore.launchpad.type, targetLp)
      )
        noticeStore.show({
          text: `Please connect a ${targetLp} in bootloader mode to continue flashing.`,
          dismissable: true,
          svg: `./svg/${firmwareConfig.svg}.svg`,
          bl: `You can enter the bootloader by holding ${firmwareConfig.blText} while turning your Launchpad on.`,
          callback: cancelFlash as () => void,
        });
    } catch (e: any) {
      noticeStore.show({
        text: e.toString(),
        dismissable: true,
      });
    }
  };

  const downloadFirmware = async (
    selectedLp: FlashableFirmware,
    options: PatchOptions,
    palette: any,
  ) => {
    try {
      const isMF64 = selectedLp.endsWith("64");

      const fw = isMF64
        ? await ihexStore.patch(selectedLp, options, palette)
        : await wasmStore.patch(selectedLp, options, palette);

      saveAs(
        new Blob([fw.buffer]),
        isMF64 ? "output.hex" : "output.syx",
      );
    } catch (e: any) {
      noticeStore.show({
        text: e.toString(),
        dismissable: true,
      });
    }
  };

  const uploadFirmware = async (file?: File) => {
    if (!file) return;
    let firmware = new Uint8Array(await file.arrayBuffer());

    try {
      const targetLp = wasmStore.verify(firmware);

      flashFirmware(targetLp, {}, paletteStore.palette, firmware);
    } catch (e: any) {
      noticeStore.show({
        text: e.toString(),
        dismissable: true,
      });
    }
  };

  const onDrop = ([file]: File[]) =>
    uiStore.konamiSuccess && uploadFirmware(file);

  const {
    getInputProps,
    getRootProps,
    isDragActive: lightBg,
  } = useDropzone({
    onDrop,
  });

  let containerProps = uiStore.konamiSuccess
    ? { ...getRootProps(), lightBg }
    : {};

  return useObserver(() => (
    <RouteContainer {...containerProps}>
      <select
        style={{
          width: `${firmwareConfig.display.length * 0.55 + 2.5}em`,
        }}
        className="py-2 px-4 text-2xl font-normal font-sans appearance-none custom-select"
        onChange={(e) =>
          e.target.value === CUSTOM_SYSTEX
            ? fileRef.current?.click()
            : uiStore.setSelectedFirmware(e.target.value as FlashableFirmware)
        }
        value={uiStore.selectedFirmware}
      >
        {lpModels
          .concat(uiStore.konamiSuccess ? [CUSTOM_SYSTEX as any] : [])
          .map((model) => (
            <option value={model} key={model}>
              {model === (CUSTOM_SYSTEX as any)
                ? model
                : firmwares[model].display}
            </option>
          ))}
      </select>

      <div className="w-auto space-y-1">
        {firmwareConfig.fastLED === true && (
          <div className={"w-auto"}>
            <div data-tip="In Apollo Studio 1.8.1 or newer, applying this mod to your firmware will allow for significantly faster light effects.\n This mod doesn't otherwise change the behavior of your Launchpad when using it with other software.">
              <input
                type="checkbox"
                checked={uiStore.options["Apollo Studio Fast LED Mod"]}
                style={{ marginRight: 5 }}
                onChange={() =>
                  (uiStore.options["Apollo Studio Fast LED Mod"] =
                    !uiStore.options["Apollo Studio Fast LED Mod"])
                }
              />
              <span
                onClick={() =>
                  (uiStore.options["Apollo Studio Fast LED Mod"] =
                    !uiStore.options["Apollo Studio Fast LED Mod"])
                }
              >
                Apollo Studio Fast LED Mod
              </span>
            </div>
            <ReactTooltip
              className="tooltip max-w-md text-center"
              effect="solid"
              place="top"
            />
          </div>
        )}
        {firmwareConfig.novationIdSpoof === true && (
          <div className={"w-auto"}>
            <div data-tip="Applying this mod to your firmware will allow for using your Midi Fighter 64 with multiple applications at once on Windows, provided you have installed the Novation USB driver. This mod doesn't otherwise change the behavior of your Midi Fighter 64 when using it with other operating systems.">
              <input
                type="checkbox"
                checked={uiStore.options["Novation ID Spoof"]}
                style={{ marginRight: 5 }}
                onChange={() =>
                  (uiStore.options["Novation ID Spoof"] =
                    !uiStore.options["Novation ID Spoof"])
                }
              />
              <span
                onClick={() =>
                  (uiStore.options["Novation ID Spoof"] =
                    !uiStore.options["Novation ID Spoof"])
                }
              >
                Spoof Novation VID for USB driver
              </span>
            </div>
            <ReactTooltip
              className="tooltip max-w-md text-center"
              effect="solid"
              place="top"
            />
          </div>
        )}
      </div>

      {firmwareConfig.fastLED === "builtin" && (
        <p className="opacity-50 text-base text-center">
          Looking for Apollo Studio Fast LED Mod?
          <br />
          It's built into CFW by default!
          <br />
        </p>
      )}

      {firmwareConfig.apolloSupport === "cfw" && (
        <p className="opacity-50 text-base text-center">
          Looking for Apollo Studio support?
          <br />
          It's built into CFW by default!
          <br />
        </p>
      )}

      {uiStore.selectedFirmware === "CFY" && paletteStore.dirty && (
        <p className="text-base text-center">
          <span className="opacity-50">
            Upload custom palettes to CFW <br /> in the{" "}
          </span>
          <Link to="/palette" className="opacity-75 text-white underline">
            Palette section
          </Link>
        </p>
      )}

      {paletteStore.dirty &&
        !(["CFY", "LPPROMK3"] as Firmware[]).includes(
          uiStore.selectedFirmware,
        ) && (
          <div className="flex flex-col items-center py-2 space-y-2">
            <p className="text-lg">Current Palette:</p>
            <PaletteGrid width={350} />
          </div>
        )}

      {["MF64", "CMF64"].includes(uiStore.selectedFirmware) ? (
        <>
          <Button
            onClick={() =>
              downloadFirmware(
                uiStore.selectedFirmware,
                toJS(uiStore.options),
                paletteStore.palette,
              )
            }
          >
            Download
          </Button>
          <p className="text-sm max-w-lg text-center">
            <span className="opacity-25">
              Install the firmware using the official{" "}
            </span>
            <a
              href="https://store.djtechtools.com/pages/midi-fighter-utility"
              target="_blank"
              rel="noopener noreferrer"
              className="opacity-75 cursor-pointer underline"
            >
              Midi Fighter Utility
            </a>
            <div className="whitespace-pre-wrap text-center">
              <span className="opacity-25">
                Connect your Midi Fighter 64, and then navigate to
              </span>
              <br />
              {["Tools", "Midifighter", "Load Custom Firmware", "For a 64"].map(
                (str, i) => (
                  <>
                    {i !== 0 && <span className="mx-1 opacity-50">{"->"}</span>}
                    <span className="bg-black px-1 py-0.5 rounded opacity-75">
                      {str}
                    </span>
                  </>
                ),
              )}
              <br />
              <span className="opacity-25">
                and select the downloaded firmware file.
              </span>
            </div>
          </p>
        </>
      ) : (
        <>
          <Button
            onClick={() =>
              flashFirmware(
                uiStore.selectedFirmware,
                toJS(uiStore.options),
                paletteStore.palette,
              )
            }
            disabled={!launchpadStore.available}
          >
            Update
          </Button>
          <p className="text-sm">
            <span className="opacity-25">...or </span>
            <span
              onClick={() =>
                downloadFirmware(
                  uiStore.selectedFirmware,
                  toJS(uiStore.options),
                  paletteStore.palette,
                )
              }
              className="opacity-75 cursor-pointer underline"
            >
              download
            </span>
          </p>
        </>
      )}

      <input
        {...getInputProps()}
        type="file"
        accept=".syx"
        style={{ display: "none" }}
        onChange={(e) => uploadFirmware(e.target.files?.[0])}
        ref={fileRef}
      />

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
}
