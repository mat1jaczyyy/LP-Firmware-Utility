import React, { useEffect } from "react";
import { Route, Switch, BrowserRouter } from "react-router-dom";
import { useObserver } from "mobx-react-lite";
import { autorun } from "mobx";

import Firmware from "./routes/Firmware";
import Palette from "./routes/Palette";

import Layout from "./layouts";

import { useStore } from "./hooks";

import "./App.css";

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
    <div className="lp-firmware-utility">
      <BrowserRouter>
        <Layout>
          <Switch>
            <Route path="/palette" component={Palette} />
            <Route component={Firmware} />
          </Switch>
        </Layout>
      </BrowserRouter>
    </div>
  ));
};

export default App;
