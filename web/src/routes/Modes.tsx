import React, { useState, useEffect, useRef, useCallback } from "react";
import { useObserver } from "mobx-react-lite";

import RouteContainer from "../components/RouteContainer";
import Button from "../components/Button";

import { useStore } from "../hooks";
import { canHaveCustomMode } from "../utils";
import {
  LaunchpadTypes,
  CFY_MODE_UPLOAD_START,
  CFY_MODE_UPLOAD_WRITE,
  CFY_MODE_UPLOAD_END,
} from "../constants";

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

  const fileRef = useRef<HTMLInputElement | null>(null);

  const importMode = useCallback(
    (file?: File) => {
      if (!file) return;
      modeStore.loadMode(file);
    },
    [modeStore]
  );

  const uploadMode = useCallback(() => {
    if (lpStore.launchpad?.type === LaunchpadTypes.LPX)
      lpStore.launchpad.sendSysex([...modeStore.modeBinary!]);
    else if (lpStore.launchpad?.type === LaunchpadTypes.CFY) {
      lpStore.launchpad.sendSysex(CFY_MODE_UPLOAD_START(index));

      let bin = [...modeStore.modeBinary];
      let i = bin.findIndex((j) => j === 0x7f)!;
      let data = bin.slice(i + 1, -1);

      if (data.length < 256)
        lpStore.launchpad.sendSysex([...CFY_MODE_UPLOAD_WRITE, ...data]);
      else {
        for (let k = 0; k < Math.ceil(data.length / 256); k++) {
          lpStore.launchpad.sendSysex([
            ...CFY_MODE_UPLOAD_WRITE,
            ...data.slice(
              k * 256,
              Math.min(data.length, (k + 1) * 256)
            ),
          ]);
        }
      }

      lpStore.launchpad.sendSysex(CFY_MODE_UPLOAD_END);
    }
  }, [index, lpStore.launchpad, modeStore.modeBinary]);

  useEffect(() => {
    if (index >= ModeSlots(lpStore.launchpad?.type)) setIndex(3);
  }, [lpStore.launchpad, index]);

  return useObserver(() => (
    <RouteContainer>
      <Button onClick={() => fileRef.current?.click()}>Import</Button>
      <input
        style={{ display: "none" }}
        onChange={(e) => importMode(e.target.files?.[0])}
        type="file"
        ref={fileRef}
      />
      <p className="text-lg">
        {modeStore.modeName
          ? `Loaded Mode: ${modeStore.modeName}`
          : "No mode loaded!"}
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
