const { config } = require("./wdio.shared");

const waitforTimeout = 30 * 60000;
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
    noReset: true,
    // platformVersion: "8.0",
    automationName: "UiAutomator2",
    deviceName: "Google Pixel",
    app: "/Users/integracioncontinua/Workspace/bds-app/packages/mobile/android/app/build/outputs/apk/development/debug/app-development-debug.apk"
  },
  {
    waitforTimeout,
    commandTimeout,
    browserName: "iOS",
    platformName: "iOS",
    unicodeKeyboard: true,
    newCommandTimeout: 30 * 60000,
    resetKeyboard: true,
    noReset: true,
    // nativeInstrumentsLib: true,
    // isolateSimDevice: true,
    platformVersion: "13.3",
    automationName: "XCUITest",
    deviceName: "iPhone 11",
    app: "/Users/integracioncontinua/Workspace/bds-app/packages/mobile/ios/bds-dpigtajwephtojeranketafimsza/Build/Products/Debug-iphonesimulator/bds.app"
  }
];
config.logLevel = "silent";

exports.config = config;
