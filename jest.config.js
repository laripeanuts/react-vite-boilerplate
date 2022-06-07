
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


