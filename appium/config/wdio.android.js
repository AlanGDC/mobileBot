const { config } = require("./wdio.shared");

const waitforTimeout = 10 * 30000;
const commandTimeout = 30 * 60000;

config.capabilities = [
  {
    waitforTimeout,
    commandTimeout,
    browserName: "Android",
    platformName: "Android",
    unicodeKeyboard: true,
    newCommandTimeout: 30 * 60000,
    resetKeyboard: true,
    adbExecTimeout: 120000,
    skipDeviceInitialization: false,
    skipServerInstallation: false,
    noReset: false,
    deviceReadyTimeout:20,
    androidDeviceReadyTimeout:900,
    androidInstallTimeout:90000,
    platformVersion: "8.1",
    automationName: "UiAutomator2",
    deviceName: "Google Pixel",
    app: process.env.APK
    //"app-release-int-3.apk"
          
  }
];
config.maxInstances = 1;
config.logLevel = "info"; //trace | debug | info | warn | error | silent

exports.config = config;
