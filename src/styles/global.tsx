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
