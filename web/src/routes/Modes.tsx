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
      file.arrayBuffer().then((arr) =>
        modeStore.loadMode(new Uint8Array(arr)).catch((e) => {
          setModeError("Invalid mode file!");
        })
      );
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
    switch (lpStore.launchpad?.type) {
      case LaunchpadTypes.LPX: {
        lpStore.launchpad.sendSysex(LPX_MODE_DOWNLOAD(index));
        break;
      }
      case LaunchpadTypes.LPMINIMK3: {
        lpStore.launchpad.sendSysex(LPMINIMK3_MODE_DOWNLOAD(index));
        break;
      }
    }

    let listener = (e: InputEventSysex) => {
      modeStore
        .loadMode(e.data)
        .then(() =>
          lpStore.launchpad?.input.removeListener("sysex", "all", listener)
        )
        .catch(() => {});
    };

    lpStore.launchpad?.input.addListener("sysex", "all", listener);
  }, []);

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
            !modeStore.modeName ||
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
