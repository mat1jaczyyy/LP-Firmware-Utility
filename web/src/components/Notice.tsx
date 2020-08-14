import React from "react";
import CloseIcon from "@material-ui/icons/Close";
import { useStore } from "../hooks";
import { useObserver } from "mobx-react-lite";
import clsx from "clsx";

const Notice = () => {
  const noticeStore = useStore(({ notice }) => notice);

  const state = noticeStore.state;

  return useObserver(() => (
    <div className="w-full h-full flex flex-col justify-center items-center text-center overflow-hidden text-3xl">
      <span className="w-3/4">
        <span>{state.text}</span>
        {state.dismissable && (
          <CloseIcon
            className="opacity-75 cursor-pointer"
            onClick={noticeStore.hide}
          />
        )}
      </span>
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
        className={clsx(
          "progress w-64 h-2 mt-4",
          !state.showProgress && "hidden"
        )}
      />
    </div>
  ));
};

export default Notice;
