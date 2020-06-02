import React from "react";
import CloseIcon from "@material-ui/icons/Close";
import { useStore } from "../hooks";
import { useObserver } from "mobx-react-lite";

const Notice = () => {
  const noticeStore = useStore(({ notice }) => notice);

  const state = noticeStore.state;

  return useObserver(() => (
    <div className={`notice`}>
      <div>
        <span>{state.text}</span>
        {state.dismissable && (
          <CloseIcon className="closeIcon" onClick={noticeStore.hide} />
        )}
      </div>
      <img
        src={state.svg || ""}
        style={{
          margin: state.svg ? "50px 0" : 0,
          visibility: state.svg ? "visible" : "hidden",
        }}
        alt=""
      />
      <span style={{ visibility: !!state.svg ? "visible" : "hidden" }}>
        {state.bl}
      </span>
      <div
        className="progressDiv"
        style={{
          visibility: state.showProgress ? "visible" : "hidden",
        }}
      >
        <progress
          style={{
            visibility:
              state.showProgress && state.visible ? "visible" : "hidden",
          }}
        />
      </div>
    </div>
  ));
};

export default Notice;
