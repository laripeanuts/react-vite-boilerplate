import React from "react";
import ReactDOM from "react-dom/client";

import { App } from "./pages/App";
import { GlobalStyles } from "./styles/global";

const root = ReactDOM.createRoot(
  document.getElementById("root") as HTMLElement,
);

root.render(
  <React.StrictMode>
    <App />
    <GlobalStyles />
  </React.StrictMode>,
);
