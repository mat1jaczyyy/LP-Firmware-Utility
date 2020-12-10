import React, { useState, useCallback, useEffect, useRef } from "react";
import { InputEventSysex } from "webmidi";
import { observable, runInAction, autorun } from "mobx";
import { useObserver } from "mobx-react-lite";
import { useDropzone } from "react-dropzone";
import clsx from "clsx";

import PaletteGrid from "../components/PaletteGrid";
import ColorPicker from "../components/ColorPicker";

import { useStore } from "../hooks";

import {
  hexToRgb,
  rgbToHsv,
  parseRetinaPalette,
  createRetinaPalette,
  isCustomFW,
} from "../utils";
import Button from "../components/Button";
import RouteContainer from "../components/RouteContainer";

import { CFY_PALETTE_DOWNLOAD_HEADER } from "../constants";

const Palette = () => {
  const paletteStore = useStore(({ palette }) => palette);
  const launchpadStore = useStore(({ launchpads }) => launchpads);
  const uiStore = useStore(({ ui }) => ui);

  const [hsv, setHsv] = useState(rgbToHsv(paletteStore.palette[0]));
  const [paletteError, setPaletteError] = useState<any>();

  const [selectedColor, setSelectedColor] = useState(0);
  const [paletteIndex, setPaletteIndex] = useState(1);

  const fileRef = useRef<HTMLInputElement | null>(null);

  const handleKeyDown = useCallback(
    (event: KeyboardEvent) => {
      if (selectedColor === undefined) return;
      let newSelected = selectedColor;
      switch (event.key) {
        case "w":
        case "ArrowUp":
          if (selectedColor % 64 >= 0 && selectedColor % 64 <= 7) return;
          setSelectedColor(selectedColor - 8);
          break;
        case "a":
        case "ArrowLeft":
          if (selectedColor > 63)
            if (selectedColor % 8 === 0) newSelected -= 57;
            else newSelected--;
          else {
            if (selectedColor % 8 === 0) return;
            else newSelected--;
          }
          setSelectedColor(newSelected);
          break;
        case "s":
        case "ArrowDown":
          if (selectedColor % 64 >= 56 && selectedColor % 64 <= 63) return;
          setSelectedColor(selectedColor + 8);
          break;
        case "d":
        case "ArrowRight":
          if (selectedColor > 63)
            if (selectedColor % 8 === 7) return;
            else newSelected++;
          else {
            if (selectedColor % 8 === 7) newSelected += 57;
            else newSelected++;
          }
          setSelectedColor(newSelected);
          break;
      }
    },
    [selectedColor]
  );

  const handleColorChanged = useCallback(
    (color) => {
      if (selectedColor !== undefined) {
        runInAction(() => {
          paletteStore.palette[selectedColor] = hexToRgb(color);
          paletteStore.dirty = true;
        });
      }
    },
    [selectedColor, paletteStore.dirty, paletteStore.palette]
  );

  const handlePaletteUpload = useCallback(() => {
    if (launchpadStore.launchpad && isCustomFW(launchpadStore.launchpad.type)) {
      let convertedPalette = new Array<number>(512);

      Object.entries(paletteStore.palette).forEach(([index, color]) => {
        let colorIndex = parseInt(index) * 4;
        convertedPalette[colorIndex] = parseInt(index);
        convertedPalette[colorIndex + 1] = color[0];
        convertedPalette[colorIndex + 2] = color[1];
        convertedPalette[colorIndex + 3] = color[2];
      });

      launchpadStore.launchpad.uploadPalette(
        convertedPalette,
        paletteIndex - 1
      );
    }
  }, [launchpadStore.launchpad, paletteStore.palette, paletteIndex]);

  const importPalette = useCallback(
    (file?: File) => {
      if (!file) return;
      parseRetinaPalette(file)
        .then((newPalette) => {
          runInAction(() => {
            paletteStore.palette = observable(newPalette);
            paletteStore.dirty = true;
          });
        })
        .catch(() => setPaletteError("Invalid palette file!"));
    },
    [paletteStore.palette, paletteStore.dirty]
  );

  const handleCFWSysex = useCallback(
    ({ data }: InputEventSysex) => {
      for (let i = 0; i < CFY_PALETTE_DOWNLOAD_HEADER.length; i++) {
        if (data[i] !== CFY_PALETTE_DOWNLOAD_HEADER[i]) return;
      }
      
      runInAction(() => {
        paletteStore.palette[data[7]] = [data[8], data[9], data[10]];
        paletteStore.dirty = true;
      });
    },
    [paletteStore.palette, paletteStore.dirty]
  );

  const onDrop = useCallback(([file]: File[]) => importPalette(file), [
    importPalette,
  ]);

  const { getInputProps, getRootProps, isDragActive: lightBg } = useDropzone({
    onDrop,
  });

  useEffect(() => {
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [handleKeyDown]);

  useEffect(() => {
    if (paletteError === undefined) return;
    let cancel = setTimeout(() => setPaletteError(undefined), 3000);
    return () => clearTimeout(cancel);
  }, [paletteError]);

  useEffect(() => {
    let lp = launchpadStore.launchpad;
    if (lp && isCustomFW(lp.type))
      lp.input.addListener("sysex", "all", handleCFWSysex);

    return () => {
      lp?.input.removeListener("sysex", "all", handleCFWSysex);
    };
  }, [launchpadStore.launchpad, handleCFWSysex]);

  const selectedRef = useRef(0);
  useEffect(() => {
    autorun(() => {
      setHsv(rgbToHsv(paletteStore.palette[selectedColor]));
      selectedRef.current = selectedColor;
    });
  }, [paletteStore.palette, selectedColor]);

  return useObserver(() => (
    <RouteContainer {...{ ...getRootProps(), lightBg }}>
      <div>
        <PaletteGrid
          selectedColor={selectedColor}
          onColorClicked={(index) => setSelectedColor(index)}
          width={450}
        />
        <div className="flex flex-row items-center py-1">
          <div className="flex-1" />
          <p className={clsx("text-xl", paletteError && "text-red-500")}>
            {paletteError || `Selected Velocity: ${selectedColor}`}
          </p>
          <p
            onClick={() => paletteStore.reset()}
            className="flex-1 font-semibold cursor-pointer text-lg opacity-75 hover:opacity-100 duration-100 transition-opacity text-right"
          >
            {uiStore.konamiSuccess ? "RESTET" : "RESET"}
          </p>
        </div>
      </div>
      <div className="flex flex-row">
        <ColorPicker
          hsv={hsv}
          onColorChange={handleColorChanged}
          onTextFocusChanged={(focused: boolean) => {
            if (focused) window.removeEventListener("keydown", handleKeyDown);
            else window.addEventListener("keydown", handleKeyDown);
          }}
        />
        <div className="flex flex-col ml-4 h-full justify-between ">
          <div className="flex flex-col space-y-2">
            <input
              {...getInputProps()}
              style={{ display: "none" }}
              onChange={(e) => importPalette(e.target.files?.[0])}
              type="file"
              ref={fileRef}
            />
            <Button onClick={() => fileRef.current!.click()}>Import</Button>
            <Button onClick={() => createRetinaPalette(paletteStore.palette)}>
              Export
            </Button>
          </div>

          {launchpadStore.launchpad &&
            isCustomFW(launchpadStore.launchpad.type!) && (
              <div className="flex flex-col items-center space-y-2">
                <div className="flex items-center justify-center text-lg">
                  <p style={{ margin: 0, marginRight: 5 }}>Index:</p>
                  <select
                    onChange={(e) => setPaletteIndex(parseInt(e.target.value))}
                    value={paletteIndex}
                    className="p-1 text-xl"
                  >
                    <option value={1}>1</option>
                    <option value={2}>2</option>
                    <option value={3}>3</option>
                  </select>
                </div>
                <Button onClick={handlePaletteUpload}>Upload</Button>
              </div>
            )}
        </div>
      </div>
    </RouteContainer>
  ));
};

export default Palette;
