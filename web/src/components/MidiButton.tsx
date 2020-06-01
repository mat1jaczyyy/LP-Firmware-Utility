import React from "react";
import ReactTooltip from "react-tooltip";
import { useAppState } from "../hooks";

const MidiButton = ({ action, ...props }: any) => {
  const midiAvailable = useAppState(({ midi }) => midi.available);

  return (
    <>
      <div
        className="finish"
        data-tip={
          midiAvailable
            ? undefined
            : `Please use a browser that supports WebMidi (eg. Chrome) to ${action}.`
        }
      >
        <button {...props} disabled={!midiAvailable}>
          update
        </button>
      </div>
      <ReactTooltip className="tooltip" effect="solid" place="top" />
    </>
  );
};

export default MidiButton;
