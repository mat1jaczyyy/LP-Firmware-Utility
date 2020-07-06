import React from "react";
import ReactDOM from "react-dom";

import "./index.css";
import App from "./App";
import { StoreContext, store } from "./store";

ReactDOM.render(
  <StoreContext.Provider value={store}>
    <App />
  </StoreContext.Provider>,
  document.getElementById("root")
);
