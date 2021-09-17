module.exports = {
  extends: ["plugin:prettier/recommended"],
  plugins: ["prettier"],
  env: {
    commonjs: true,
    es6: true,
    node: true
  },
  globals: {
    $: "writable",
    browser: "writable",
    driver: "writable"
  },
  parser: "babel-eslint",
  parserOptions: {
    ecmaVersion: 6,
    sourceType: "module",
    experimentalObjectRestSpread: true,
    ecmaFeatures: {
      jsx: true
    }
  },
  rules: {
    "prettier/prettier": ["error"]
  }
};
