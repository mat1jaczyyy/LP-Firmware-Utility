import React, { useEffect } from "react";
import { Route, Switch, BrowserRouter } from "react-router-dom";
import { useDispatch } from "react-redux";

import Firmware from "./routes/Firmware";
import Palette from "./routes/Palette";

import Layout from "./layouts";

import { showNotice, hideNotice } from "./store/actions/notice";
import { initWasm } from "./store/actions/wasm";

import { useMidi, useWasm, useLaunchpads } from "./hooks";

import "./App.css";

const App = () => {
  useMidi();
  useLaunchpads(true)

  const { wasmAvailable } = useWasm();

  const dispatch = useDispatch();
  // App-wide initialisation
  useEffect(() => {
    dispatch(initWasm());
  }, [dispatch]);

  useEffect(() => {
    if (wasmAvailable === undefined)
      dispatch(
        showNotice({
          text: "Loading...",
          showProgress: true,
          dismissable: false,
        })
      );
    else if (wasmAvailable === true) dispatch(hideNotice);
    else
      dispatch(
        showNotice({
          text: "Please use a browser that supports WebAssembly (eg. Chrome)",
        })
      );
  }, [wasmAvailable, dispatch]);

  return (
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
  );
};

export default App;
