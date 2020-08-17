import React, { useState, useEffect, useRef, useCallback } from "react";
import { useObserver } from "mobx-react-lite";
import { useDropzone } from "react-dropzone";
import clsx from "clsx";

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
  LPX_MODE_DOWNLOAD,
  LPMINIMK3_MODE_DOWNLOAD,
} from "../constants";
import Launchpad from "../components/Launchpad";
import { InputEventSysex } from "webmidi";

const bruh =
  "240 0 32 41 2 12 5 1 6 70 97 99 116 111 114 121 32 67 117 115 116 111 109 " +
  "32 77 111 100 101 32 51 0 0 127 0 0 0 82 127 1 65 0 0 0 0 83 127 1 66 0 0 " +
  "0 0 84 127 1 67 0 0 0 0 85 127 1 96 0 0 0 0 86 127 1 97 0 0 0 0 87 127 1 " +
  "98 0 0 0 0 88 127 1 99 0 0 0 0 72 127 0 0 0 127 0 0 73 127 0 0 0 127 0 0 " +
  "74 127 0 0 0 127 0 0 75 127 0 0 0 127 0 0 76 127 0 0 0 127 0 0 77 127 0 0 " +
  "0 127 0 0 78 127 0 0 0 127 0 0 62 127 0 0 0 127 0 0 63 127 0 0 0 127 0 0 " +
  "64 127 0 0 0 127 0 0 65 127 0 0 0 127 0 0 66 127 0 0 0 127 0 0 67 127 0 0 " +
  "0 127 0 0 68 127 0 0 0 127 0 0 52 127 0 0 0 127 0 0 53 127 0 0 0 127 0 0 " +
  "54 127 0 0 0 127 0 0 55 127 0 0 0 127 0 0 56 127 0 0 0 127 0 0 57 127 0 0 " +
  "0 127 0 0 58 127 0 0 0 127 0 0 42 127 0 0 0 127 0 0 43 127 0 0 0 127 0 0 " +
  "44 127 0 0 0 127 0 0 45 127 0 0 0 127 0 0 46 127 0 0 0 127 0 0 47 127 0 0 " +
  "0 127 0 0 48 127 0 0 0 127 0 0 32 127 0 0 0 127 0 0 33 127 0 0 0 127 0 0 " +
  "34 127 0 0 0 127 0 0 35 127 0 0 0 127 0 0 36 127 0 0 0 127 0 0 37 127 0 0 " +
  "0 127 0 0 38 127 0 0 0 127 0 0 22 127 0 0 0 127 0 0 23 127 0 0 0 127 0 0 " +
  "24 127 0 0 0 127 0 0 25 127 0 0 0 127 0 0 26 127 0 0 0 127 0 0 27 127 0 0 " +
  "0 127 0 0 28 127 0 0 0 127 0 0 12 127 0 0 0 127 0 0 13 127 0 0 0 127 0 0 " +
  "14 127 0 0 0 127 0 0 15 127 0 0 0 127 0 0 16 127 0 0 0 127 0 0 17 127 0 0 " +
  "0 127 0 0 18 127 0 0 0 127 0 0 0 0 0 0 0 0 0 0 247";

const MODE_WRITE_SIZE = 256;

const ModeSlots = (type?: LaunchpadTypes) => {
  switch (type) {
    case LaunchpadTypes.CFY:
      return 8;
    case LaunchpadTypes.LPMINIMK3:
      return 3;
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
      file.arrayBuffer().then((arr) => {
        try {
          modeStore.loadMode(new Uint8Array(arr));
        } catch (e) {
          setModeError("Invalid mode file: " + e);
        }
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

  const downloadXMode = useCallback(() => {
    let arr = new Uint8Array(bruh.split(" ").map(s => parseInt(s)))
        modeStore.loadMode(arr);
    // let listener = (e: InputEventSysex) => {
    //   console.log(e);
    //   try {
    //     modeStore.loadMode(e.data);
    //     lpStore.launchpad?.input.removeListener("sysex", "all", listener);
    //   } catch {}
    // };
    // lpStore.launchpad?.input.addListener("sysex", "all", listener);
    // switch (lpStore.launchpad?.type) {
    //   case LaunchpadTypes.LPX: {
    //     lpStore.launchpad.sendSysex(LPX_MODE_DOWNLOAD(index));
    //     break;
    //   }
    //   case LaunchpadTypes.LPMINIMK3: {
    //     lpStore.launchpad.sendSysex(LPMINIMK3_MODE_DOWNLOAD(index));
    //     break;
    //   }
    // }
  }, [index, lpStore.launchpad, modeStore]);

  const onDrop = useCallback(([file]: File[]) => importMode(file), [
    importMode,
  ]);

  const { getInputProps, getRootProps, isDragActive: lightBg } = useDropzone({
    onDrop,
  });

  useEffect(() => {
    if (modeError === undefined) return;
    let cancel = setTimeout(() => setModeError(undefined), 3000);
    return () => clearTimeout(cancel);
  }, [modeError]);

  useEffect(() => {
    if (index >= ModeSlots(lpStore.launchpad?.type)) setIndex(3);
  }, [lpStore.launchpad, index]);

  return useObserver(() => (
    <RouteContainer {...{ ...getRootProps(), lightBg }}>
      <div>
        <Button onClick={() => fileRef.current?.click()}>Import</Button>
        <Button
          disabled={!modeStore.modeBinary}
          onClick={() =>
            saveCustomMode(modeStore.modeBinary!, modeStore.modeName!)
          }
        >
          Export
        </Button>
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
      <Launchpad size={300} colors={modeStore.modeColors} />
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
      <div className="flex flex-row space-x-2">
        {lpStore.launchpad &&
          ![LaunchpadTypes.LPX, LaunchpadTypes.LPMINIMK3].includes(
            lpStore.launchpad.type
          ) && <Button onClick={downloadXMode}>Download</Button>}
        <Button
          disabled={
            !modeStore.modeBinary ||
            !lpStore.launchpad ||
            !canHaveCustomMode(lpStore.launchpad.type)
          }
          onClick={uploadMode}
        >
          Upload
        </Button>
      </div>
    </RouteContainer>
  ));
};

export default Modes;
