import React from "react";
import { useStore } from "../hooks";
import { useObserver } from "mobx-react-lite";
import clsx from "clsx";
import Button from "./Button";

const Notice = () => {
  const noticeStore = useStore(({ notice }) => notice);

  const state = noticeStore.state;

  return useObserver(() => (
    <div className="w-full h-full container mx-auto flex flex-col justify-center items-center space-y-4 text-center overflow-hidden text-2xl lg:text-3xl">
      <span>{state.text}</span>
      {state.svg && <img src={state.svg} alt="Launchpad Illustration" />}
      {state.bl && <span>{state.bl}</span>}
      {state.showProgress && <div className={clsx("progress w-64 h-2 mt-4")} />}
      {state.dismissable && <Button onClick={noticeStore.hide}>Close</Button>}
    </div>
  ));
};

export default Notice;
