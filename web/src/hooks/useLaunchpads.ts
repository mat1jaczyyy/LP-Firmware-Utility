import { useState, useEffect, useRef, useCallback } from "react";
import WebMidi from "webmidi";

import Launchpad from "../Launchpad";
import { portsMatch, portNeutralize } from "../utils";
import { BootloaderType } from "../constants";

const useMidi = () => {
  const [midiAvailable, setMidiAvailable] = useState<boolean | undefined>();

  useEffect(() => {
    WebMidi.enable((err) => setMidiAvailable(!!!err), true);
  }, []);

  return midiAvailable;
};

export default () => {
  const [launchpads, setLaunchpads] = useState<Launchpad[]>([]);
  const midiAvailable = useMidi();

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

          if ((await launchpad.getType()) !== BootloaderType.NOT_BOOTLOADER)
            launchpads.push(launchpad);
        }
      }
    }

    if (scanningTimestamp.current > currentTimestamp) return;

    setLaunchpads(launchpads);

    return launchpads;
  }, []);

  useEffect(() => {
    if (!midiAvailable) return;

    scan();

    WebMidi.addListener("connected", scan);
    WebMidi.addListener("disconnected", scan);

    return () => {
      WebMidi.removeListener("connected", scan);
      WebMidi.removeListener("disconnected", scan);
    };
  }, [midiAvailable, scan]);

  const queueFirmwareFlash = (buffer: Uint8Array, targetLp: string) => {
    let resolveAttempt: (val?: any) => void;

    let flashPromise = new Promise(async (resolve) => {
      const attemptFlash = async () => {
        const lps = await scan();
        if (!lps || !lps.some((lp) => lp.type === targetLp)) return;

        resolveAttempt(async () =>
          lps[lps.findIndex((lp) => lp.type === targetLp)].flashFirmware(buffer)
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
  };

  return { launchpads, midiAvailable, queueFirmwareFlash };
};
