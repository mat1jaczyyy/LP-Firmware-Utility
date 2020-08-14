import React, { useState, useCallback, useEffect, useRef } from "react";
import { Link } from "react-router-dom";
import { InputEventSysex } from "webmidi";
import { observable, runInAction } from "mobx";
import { useObserver } from "mobx-react-lite";

import PaletteGrid from "../components/PaletteGrid";
import ColorPicker from "../components/ColorPicker";

import { useStore } from "../hooks";

import { LaunchpadType } from "../constants";
import {
  hexToRgb,
  hexToHsv,
  parseRetinaPalette,
  createRetinaPalette,
} from "../utils";
import Button from "../components/Button";

const Palette = () => {
  const paletteStore = useStore(({ palette }) => palette);
  const launchpadStore = useStore(({ launchpads }) => launchpads);

  const [hsv, setHsv] = useState(hexToHsv(paletteStore.palette[0]));

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
    launchpadStore.launchpads.forEach((lp) => {
      if (lp.type !== LaunchpadType.CFW) return;

      let convertedPalette = new Array<number>(512);

      Object.entries(paletteStore.palette).forEach(([index, color]) => {
        let colorIndex = parseInt(index) * 4;
        convertedPalette[colorIndex] = parseInt(index);
        convertedPalette[colorIndex + 1] = color[0];
        convertedPalette[colorIndex + 2] = color[1];
        convertedPalette[colorIndex + 3] = color[2];
      });

      lp.uploadPalette(convertedPalette, paletteIndex - 1);
    });
  }, [launchpadStore.launchpads, paletteStore.palette, paletteIndex]);

  const importPalette = useCallback(
    (file?: File) => {
      if (!file) return;
      parseRetinaPalette(file).then((newPalette) => {
        runInAction(() => {
          paletteStore.palette = observable(newPalette);
          paletteStore.dirty = true;
        });
      });
    },
    [paletteStore.palette, paletteStore.dirty]
  );

  const downloadedPalette = useRef<any>({});
  const handleCFWSysex = useCallback(
    ({ data }: InputEventSysex) => {
      if (data[7] === 123) downloadedPalette.current = {};
      else if (data[7] === 35)
        downloadedPalette.current[data[8]] = [data[9], data[10], data[11]];
      else if (data[7] === 125) {
        runInAction(() => {
          paletteStore.palette = observable(downloadedPalette.current);
          paletteStore.dirty = true;
        });
      }
    },
    [paletteStore.palette, paletteStore.dirty]
  );

  useEffect(() => {
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [handleKeyDown]);

  useEffect(() => {
    launchpadStore.launchpads.forEach(
      (lp) =>
        lp.type === LaunchpadType.CFW &&
        lp.input.addListener("sysex", "all", handleCFWSysex)
    );
    return () => {
      launchpadStore.launchpads.forEach(
        (lp) =>
          lp.type === LaunchpadType.CFW &&
          lp.input.removeListener("sysex", "all", handleCFWSysex)
      );
    };
  }, [launchpadStore.launchpads, handleCFWSysex]);

  const selectedRef = useRef(0);
  useEffect(() => {
    if (selectedRef.current !== selectedColor) {
      setHsv(hexToHsv(paletteStore.palette[selectedColor]));
      selectedRef.current = selectedColor;
    }
  }, [paletteStore.palette, selectedColor]);

  return useObserver(() => (
    <div className="w-full flex flex-col items-center justify-center space-y-2 top-0 bottom-0 absolute">
      <PaletteGrid
        selectedColor={selectedColor}
        onColorClicked={(index) => setSelectedColor(index)}
        width={450}
      />
      <p className="text-xl">Selected Velocity: {selectedColor}</p>
      <div className="flex flex-row pt-4">
        <ColorPicker
          hsv={hsv}
          onColorChange={handleColorChanged}
          onTextFocusChanged={(focused: boolean) => {
            if (focused) window.removeEventListener("keydown", handleKeyDown);
            else window.addEventListener("keydown", handleKeyDown);
          }}
        />
        <div
          style={{
            display: "flex",
            flexDirection: "column",
            marginLeft: 10,
            padding: 5,
            height: "100%",
          }}
        >
          <Button onClick={() => fileRef.current!.click()}>Import</Button>
          <input
            style={{ display: "none" }}
            onChange={(e) => importPalette(e.target.files?.[0])}
            type="file"
            ref={fileRef}
          />
          <Button onClick={() => createRetinaPalette(paletteStore.palette)}>
            Export
          </Button>

          {launchpadStore.current?.type === LaunchpadType.CFW && (
            <>
              <Button style={{ marginTop: 25 }} onClick={handlePaletteUpload}>
                Upload
              </Button>
              <div
                style={{
                  display: "flex",
                  alignItems: "center",
                  justifyContent: "center",
                }}
              >
                <p style={{ margin: 0, marginRight: 5 }}>Index:</p>
                <select
                  onChange={(e) => setPaletteIndex(parseInt(e.target.value))}
                  value={paletteIndex}
                  style={{ width: 50, height: 38 }}
                >
                  <option value={1}>1</option>
                  <option value={2}>2</option>
                  <option value={3}>3</option>
                </select>
              </div>
            </>
          )}
        </div>
      </div>
    </div>
  ));
};

export default Palette;
