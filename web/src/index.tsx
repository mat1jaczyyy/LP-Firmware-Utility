import React from "react";
import ReactDOM from "react-dom";

import "./index.css";
import "./assets/main.css";
import App from "./App";
import { StoreContext, store } from "./store";
import { configure } from "mobx";
import { BrowserRouter } from "react-router-dom";

configure({ enforceActions: "always" });

ReactDOM.render(
  <StoreContext.Provider value={store}>
    <BrowserRouter>
      <App />
    </BrowserRouter>
  </StoreContext.Provider>,
  document.getElementById("root")
);
