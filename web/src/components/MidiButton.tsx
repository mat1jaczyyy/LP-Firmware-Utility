import React from "react";
import ReactTooltip from "react-tooltip";
import { useObserver } from "mobx-react-lite";

import { useStore } from "../hooks";

const MidiButton = ({ action, ...props }: any) => {
  const launchpadStore = useStore(({ launchpads }) => launchpads);

  return useObserver(() => (
    <>
      <div
        className="finish"
        data-tip={
          launchpadStore.available
            ? undefined
            : `Please use a browser that supports WebMidi (eg. Chrome) to ${action}.`
        }
      >
        <button {...props} className="font-sans" disabled={!launchpadStore.available}>
          update
        </button>
      </div>
      <ReactTooltip className="tooltip" effect="solid" place="top" />
    </>
  ));
};

export default MidiButton;
