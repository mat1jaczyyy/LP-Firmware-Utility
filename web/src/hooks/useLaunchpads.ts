import { useEffect, useRef, useCallback } from "react";
import WebMidi from "webmidi";
import { useDispatch } from "react-redux";

import Launchpad from "../classes/Launchpad";
import { portsMatch, portNeutralize } from "../utils";
import { LaunchpadType } from "../constants";
import { useAppState } from ".";

export default (isScanner = false) => {
  const launchpads = useAppState(({ launchpads }) => launchpads.launchpads);
  const midiAvailable = useAppState(({ midi }) => midi.available);

  const dispatch = useDispatch();

  const scanningTimestamp = useRef<Date | null>(new Date());

  const scan = useCallback(async () => {
    const launchpads: Launchpad[] = [];

    let currentTimestamp = new Date();

    if (
      scanningTimestamp.current === null ||
      scanningTimestamp.current < currentTimestamp
    )
      scanningTimestamp.current = currentTimestamp;

    for (let input of WebMidi.inputs) {
      for (let output of WebMidi.outputs) {
        if (portsMatch(input.name, output.name)) {
          if (scanningTimestamp.current > currentTimestamp) return;

          const launchpad = new Launchpad(
            portNeutralize(input.name),
            input,
            output
          );

          if ((await launchpad.getType()) !== LaunchpadType.UNUSED)
            launchpads.push(launchpad);
        }
      }
    }

    if (scanningTimestamp.current > currentTimestamp) return;
    return launchpads;
  }, []);

  useEffect(() => {
    if (!midiAvailable || !isScanner) return;

    let listener = () =>
      scan().then(
        (lps) => lps && dispatch({ type: "SET_LAUNCHPADS", payload: lps })
      );
    listener();

    WebMidi.addListener("connected", listener);
    WebMidi.addListener("disconnected", listener);

    return () => {
      WebMidi.removeListener("connected", listener);
      WebMidi.removeListener("disconnected", listener);
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [midiAvailable, dispatch]);

  const queueFirmwareFlash = useCallback(
    (buffer: Uint8Array, targetLp: string) => {
      let resolveAttempt: (val?: any) => void;

      let flashPromise = new Promise(async (resolve) => {
        const attemptFlash = async () => {
          const lps = await scan();
          if (!lps || !lps.some((lp) => lp.type === targetLp)) return;

          resolveAttempt(async () =>
            lps[lps.findIndex((lp) => lp.type === targetLp)].flashFirmware(
              buffer
            )
          );
        };

        attemptFlash();

        WebMidi.addListener("connected", attemptFlash);

        resolveAttempt = (val) => {
          WebMidi.removeListener("connected", attemptFlash);
          resolve(val);
        };
      });

      return { cancelFlash: resolveAttempt!, flashPromise };
    },
    // eslint-disable-next-line react-hooks/exhaustive-deps
    []
  );

  return { launchpads, midiAvailable, queueFirmwareFlash };
};
