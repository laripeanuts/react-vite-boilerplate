#PRETTIER
echo '
node_modules
dist
' > .prettierignore

echo '
{
  "parser": "typescript",
  "singleQuote": false,
  "tabWidth": 2,
  "trailingComma": "all",
  "semi": true,
  "bracketSpacing": true,
  "endOfLine": "lf",
  "printWidth": 80,
  "useTabs": false,
  "htmlWhitespaceSensitivity": "ignore",
  "insertPragma": false,
  "arrowParens": "avoid",
  "requirePragma": false,
  "jsxSingleQuote": false,
  "proseWrap": "always",
  "quoteProps": "as-needed"
}
' > .prettierrc

# ESLINT

echo '
{
    "env": {
        "browser": true,
        "es2021": true,
        "node": true,
        "jest": true,
        "jest/globals": true
    },
    "ignorePatterns": [
        "**/node_modules/**",
        "**/dist/**",
        "**/build/**",
        "node_modules"
    ],
    "extends": [
        "xo",
        "plugin:react/recommended",
        "plugin:react-hooks/recommended",
        "plugin:prettier/recommended",
        "plugin:storybook/recommended"
    ],
    "parser": "@typescript-eslint/parser",
    "settings": {
        "react": {
            "version": "detect"
        }
    },
    "parserOptions": {
        "ecmaFeatures": {
            "jsx": true
        },
        "ecmaVersion": "latest",
        "sourceType": "module"
    },
    "plugins": [
        "react",
        "react-hooks",
        "@typescript-eslint",
        "simple-import-sort",
        "prettier",
        "jest"
    ],
    "rules": {
        "prettier/prettier": "error",
        "simple-import-sort/exports": "error",
        "simple-import-sort/imports": "error",
        "new-cap": "off",
        "capitalized-comments": "off",
        "no-unused-vars": "warn",
        "no-useless-constructor": "warn",
        "react/react-in-jsx-scope": "off",
        "quotes": ["error", "double"]
    }
}
' > .eslintrc.json

# EDITOR CONFIG
echo '
[*]
indent_style = space
indent_size = 2
end_of_line = lf
charset = utf-8
trim_trailing_whitespace = true
insert_final_newline = true
' > .editorconfig

mkdir .vscode
echo '
{
  "prettier.configPath": "./.prettierrc",
    "prettier.singleQuote": false
}
' > .vscode/settings.json

echo '
{
  presets: [
    "@babel/preset-env",
    ["@babel/preset-react", { runtime: "automatic" }],
  ],
};
' > .babel.config

# JEST
mkdir .jest
echo '
import "@testing-library/jest-dom";
' > .jest/setup-tests.ts

echo '
module.exports = {
  transform: {
    "^.+.tsx?$": "ts-jest",
  },
  testRegex: "(/__tests__/.*|(.|/)(test|spec)).(jsx?|tsx?)$",
  moduleFileExtensions: ["ts", "tsx", "js", "jsx", "json", "node"],
  moduleNameMapper: {
    ".(css|less|sass|scss)$": "identity-obj-proxy",
  },
  testEnvironment: "jsdom",
  setupFilesAfterEnv: ["./.jest/setup-tests.ts"],
  testPathIgnorePatterns: ["/node_modules/", "/dist/"],
  globals: {
    "ts-jest": {
      isolatedModules: true,
    },
  },
};

' > jest.config.js

# README FILE
echo '
# App Title

..

## 📜 Description

...

## 🎯 Goals

- [ ] ...


## 🏗️ Installation

```bash
# install dependencies
$ pnpm install
```

#### Running the app

```bash
# development
$ pnpm start

# build mode
$ pnpm build

```

#### Others

```bash
# eslint & prettier
$ pnpm run fix

# commit
$ cz

```

## 👩🏻‍💻 Stay in touch

- Author - [Larissa Rabelo](https://github.com/laripeanuts)
- Twitter - [@laripeanuts](https://twitter.com/laripeanuts)
' > README.md