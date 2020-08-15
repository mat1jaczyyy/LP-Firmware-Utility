import React, { useState, useEffect, useRef, useCallback } from "react";
import { useObserver } from "mobx-react-lite";
import { useDropzone } from "react-dropzone";
import clsx from "clsx";
import { InputEventSysex } from "webmidi";

import RouteContainer from "../components/RouteContainer";
import Button from "../components/Button";

import { useStore } from "../hooks";
import { canHaveCustomMode, saveCustomMode } from "../utils";
import {
  LaunchpadTypes,
  CFY_MODE_UPLOAD_START,
  CFY_MODE_UPLOAD_WRITE,
  CFY_MODE_UPLOAD_END,
  LPX_MODE_HEADER,
  LPMINIMK3_MODE_HEADER,
  LPPROMK3_MODE_HEADER,
} from "../constants";
import { runInAction } from "mobx";

const MODE_WRITE_SIZE = 300;
const MODE_WRITE_HEADER = [240, 67, 85, 83, 84, 79, 77, 35];

const ModeSlots = (type?: LaunchpadTypes) => {
  switch (type) {
    case LaunchpadTypes.CFY:
      return 8;
    default:
      return 4;
  }
};

const Modes = () => {
  const lpStore = useStore(({ launchpads }) => launchpads);
  const modeStore = useStore(({ modes }) => modes);

  const [index, setIndex] = useState(0);
  const [modeError, setModeError] = useState<string | undefined>(undefined);

  const fileRef = useRef<HTMLInputElement | null>(null);

  const importMode = useCallback(
    (file?: File) => {
      if (!file) return;
      modeStore.loadMode(file).catch((e) => {
        setModeError("Invalid mode file!");
      });
    },
    [modeStore]
  );

  const uploadMode = useCallback(() => {
    switch (lpStore.launchpad?.type) {
      case LaunchpadTypes.LPX: {
        lpStore.launchpad.sendSysex([
          ...LPX_MODE_HEADER,
          ...modeStore.modeBinary!,
        ]);
        console.log([0xf0, ...LPX_MODE_HEADER, ...modeStore.modeBinary!, 0xf7].join(" "));
        break;
      }
      case LaunchpadTypes.LPMINIMK3: {
        lpStore.launchpad.sendSysex([
          ...LPMINIMK3_MODE_HEADER,
          ...modeStore.modeBinary!,
        ]);
        break;
      }
      case LaunchpadTypes.LPPROMK3: {
        lpStore.launchpad.sendSysex([
          ...LPPROMK3_MODE_HEADER,
          ...modeStore.modeBinary!,
        ]);
        break;
      }
      case LaunchpadTypes.CFY: {
        lpStore.launchpad.sendSysex(CFY_MODE_UPLOAD_START(index));

        let data = modeStore.modeBinary!;

        if (data.length < MODE_WRITE_SIZE)
          lpStore.launchpad.sendSysex([...CFY_MODE_UPLOAD_WRITE, ...data]);
        else {
          for (let k = 0; k < Math.ceil(data.length / MODE_WRITE_SIZE); k++) {
            lpStore.launchpad.sendSysex([
              ...CFY_MODE_UPLOAD_WRITE,
              ...data.slice(
                k * MODE_WRITE_SIZE,
                Math.min(data.length, (k + 1) * MODE_WRITE_SIZE)
              ),
            ]);
          }
        }

        lpStore.launchpad.sendSysex(CFY_MODE_UPLOAD_END);
        break;
      }
      default:
        break;
    }
  }, [index, lpStore.launchpad, modeStore.modeBinary]);

  const onDrop = useCallback(([file]: File[]) => importMode(file), [
    importMode,
  ]);

  const { getRootProps, getInputProps } = useDropzone({ onDrop });

  const downloadedMode = useRef<{size: number, data: Uint8Array} | undefined>();
  const handleCFYSysex = useCallback(
    ({ data }: InputEventSysex) => {
      if (!data.slice(0, 8).every((e, i) => e === MODE_WRITE_HEADER[i])) return;
      if (downloadedMode.current === undefined) {
        let size = data[8] * 128 + data[9];
        let chunk = data.slice(10, -1);
        downloadedMode.current = {
          size,
          data: chunk,
        };
      } else {
        let chunk = data.slice(8, -1);
        if (
          chunk.length + downloadedMode.current.data.length <=
          downloadedMode.current.size
        ) {
          downloadedMode.current.data = new Uint8Array([
            ...downloadedMode.current.data,
            ...chunk,
          ]);
        }
      }
      if (downloadedMode.current.size === downloadedMode.current.data.length) {
        runInAction(() => (modeStore.modeBinary = downloadedMode.current!.data));
        downloadedMode.current = undefined;
      }
    },
    [modeStore.modeBinary]
  );

  useEffect(() => {
    if (lpStore.launchpad?.type === LaunchpadTypes.CFY)
      lpStore.launchpad.input.addListener("sysex", "all", handleCFYSysex);
  }, [handleCFYSysex, lpStore.launchpad]);

  useEffect(() => {
    if (modeError === undefined) return;
    let cancel = setTimeout(() => setModeError(undefined), 3000);
    return () => clearTimeout(cancel);
  }, [modeError]);

  useEffect(() => {
    if (index >= ModeSlots(lpStore.launchpad?.type)) setIndex(3);
  }, [lpStore.launchpad, index]);

  return useObserver(() => (
    <RouteContainer {...getRootProps()}>
      <div>
        <Button onClick={() => fileRef.current?.click()}>Import</Button>
        <Button disabled={!modeStore.modeBinary} onClick={() => saveCustomMode(modeStore.modeBinary!, modeStore.modeName!)}>Export</Button>
      </div>
      <input
        {...getInputProps()}
        style={{ display: "none" }}
        onChange={(e) => importMode(e.target.files?.[0])}
        type="file"
        accept=".syx"
        ref={fileRef}
      />
      <p className={clsx("text-lg", modeError && "text-red-500")}>
        {modeError ||
          (modeStore.modeName
            ? `Loaded Mode: ${modeStore.modeName}`
            : "No mode loaded!")}
      </p>
      <div className="flex items-center justify-center text-xl">
        <p>Index:</p>
        <select
          className="p-1 mx-1"
          value={index}
          onChange={(e) => setIndex(parseInt(e.target.value))}
        >
          {Array.from(
            { length: ModeSlots(lpStore.launchpad?.type) },
            (_, k) => (
              <option value={k} key={k}>
                {k + 1}
              </option>
            )
          )}
        </select>
      </div>
      <Button
        disabled={
          !modeStore.modeName ||
          !lpStore.launchpad ||
          !canHaveCustomMode(lpStore.launchpad.type)
        }
        onClick={uploadMode}
      >
        Upload
      </Button>
    </RouteContainer>
  ));
};

export default Modes;
