module.exports = {
  plugins: [["@babel/plugin-syntax-class-properties", { loose: true }]],
  presets: [
    [
      "@babel/preset-env",
      {
        targets: {
          node: 12
        }
      }
    ]
  ]
};
