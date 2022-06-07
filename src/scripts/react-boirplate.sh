# React Vite Typescript

# - Eslint
# - Prettier
# - Jest
# - Testing Library
# - Styled Component
# - Storybook

clear

npm create vite@latest react-app -- --template react-ts -y

cd react-app

pnpm i

# LASTEST REACT
pnpm i react@latest react-dom@latest react-scripts@latest
pnpm i @types/react@latest @types/react-dom@latest @types/react-scripts@latest -D

# BASIC
pnpm i styled-components react-router-dom axios storybook

# JEST
pnpm i -D jest babel-jest babel-loader jest-styled-components jest-environment-jsdom ts-jest @testing-library/react @testing-library/jest-dom @testing-library/dom @types/testing-library__jest-dom

# ESLINT E PRETTIER
pnpm i -D eslint prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-react eslint-plugin-react-hooks eslint-plugin-storybook eslint-plugin-simple-import-sort eslint-config-xo eslint-plugin-jest @typescript-eslint/eslint-plugin

# BABEL
pnpm i -D @babel/eslint-parser @babel/core @babel/preset-env @babel/preset-react react-is webpack html-webpack-plugin @typescript-eslint/parser

typesync

# USER CONFIG
cp ../react-init-config.sh ./
sleep 1s
./react-init-config.sh
rm -rf ./react-init-config.sh

# BASIC FILES
cp ../react-init-files.sh ./
sleep 1s
./react-init-files.sh
rm -rf ./react-init-files.sh

# SCRIPTS

npx npe scripts.fix "pnpm run format && pnpm run lint:fix"
npx npe scripts.format "prettier --write **/src/*.{ts,tsx,js,jsx,json,yaml}"
npx npe scripts.lint "eslint src/**/*.{ts,tsx,js,jsx}"
npx npe scripts.lint:fix "pnpm run lint --fix"
npx npe scripts.test "jest"

pnpm run fix

pnpm run dev