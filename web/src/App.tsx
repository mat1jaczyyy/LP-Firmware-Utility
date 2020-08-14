import React, { useEffect } from "react";
import { Route, Switch, Redirect } from "react-router-dom";
import { useObserver } from "mobx-react-lite";
import { autorun } from "mobx";
import Firmware from "./routes/Firmware";
import Palette from "./routes/Palette";

import { useStore } from "./hooks";

import "./App.css";
import Header from "./components/Header";
import { CSSTransition, SwitchTransition } from "react-transition-group";
import Notice from "./components/Notice";

const TransitionRoute = ({ component: Component, ...props }: any) => (
  <Route exact path={props.path}>
    {({ match }) => (
      <CSSTransition
        in={match != null}
        timeout={300}
        classNames="fall"
        unmountOnExit
      >
        <Component />
      </CSSTransition>
    )}
  </Route>
);

const App = () => {
  const wasmStore = useStore(({ wasm }) => wasm);
  const noticeStore = useStore(({ notice }) => notice);

  useEffect(
    () =>
      autorun(() => {
        if (wasmStore.available === undefined)
          noticeStore.show({
            text: "Loading...",
            showProgress: true,
            dismissable: false,
          });
        else if (wasmStore.available === true) noticeStore.hide();
        else
          noticeStore.show({
            text: "Please use a browser that supports WebAssembly (eg. Chrome)",
          });
      }),
    [noticeStore, wasmStore.available]
  );

  return useObserver(() => (
    <div className="w-screen h-screen flex flex-col items-center overflow-hidden">
      <Header disabled={noticeStore.state.visible} />
      <div className="w-full h-full container mx-auto relative">
        <SwitchTransition mode="out-in">
          <CSSTransition
            classNames="fade"
            addEndListener={(node, done) => {
              node.addEventListener("transitionend", done, false);
            }}
            key={noticeStore.state.visible.toString()}
          >
        {noticeStore.state.visible ? (
          <Notice />
        ) : (
          <>
            <TransitionRoute path="/firmware" component={Firmware} />
            <TransitionRoute path="/palette" component={Palette} />
            <Redirect to="/firmware" />
          </>
        )}
        </CSSTransition>
        </SwitchTransition>
      </div>
    </div>
  ));
};

export default App;
