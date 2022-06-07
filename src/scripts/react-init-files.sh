
# BASIC FILES
rm -rf src

mkdir src

mkdir src/assets src/components src/contexts src/hooks src/pages src/routes src/scripts src/services src/styles src/types src/utils

touch src/assets/.gitkeep src/components/.gitkeep src/contexts/.gitkeep src/hooks/.gitkeep src/pages/.gitkeep src/routes/.gitkeep src/scripts/.gitkeep src/services/.gitkeep src/styles/.gitkeep src/types/.gitkeep src/utils/.gitkeep

echo '
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

' > src/main.tsx

mkdir src/pages/App

echo '
export const App = () => <h1>Hello World</h1>;
' > src/pages/App/index.tsx

mkdir src/pages/App/__tests__

echo '
import { render, screen } from "@testing-library/react";

import { App } from "../";

test("renders App", () => {
  render(<App />);
  const linkElement = screen.getByText(/hello world/i);
  expect(linkElement).toBeInTheDocument();
});

' > src/pages/App/__tests__/App.test.tsx

echo '
import { createGlobalStyle } from "styled-components";

export const GlobalStyles = createGlobalStyle`
  * {
    padding: 0;
    margin: 0;
    outline: 0;
    box-sizing: border-box;

    a {
      text-decoration: none;
    }

    button {
      cursor: pointer;
    }

    input {
      outline: none;
    }
  }

  html, body {
    background: #0d0d0d;
    color: #d0d0d0;
    font-family: "Roboto", sans-serif;
    -webkit-font-smoothing: antialiased;

    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
`;
' > src/styles/global.tsx

