import React from "react";
import ReactDOM from "react-dom";
import "mobx-react-lite/batchingForReactDom";
import { BrowserRouter } from "react-router-dom";

import "./index.css";
import App from "./App";
import { StoreContext, store } from "./store";

ReactDOM.render(
  <StoreContext.Provider value={store}>
    <BrowserRouter>
      <App />
    </BrowserRouter>
  </StoreContext.Provider>,
  document.getElementById("root"),
);
