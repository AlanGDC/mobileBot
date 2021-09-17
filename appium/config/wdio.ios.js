const { config } = require("./wdio.shared");

const waitforTimeout = 30 * 60000;
const commandTimeout = 30 * 60000;

config.capabilities = [
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
config.maxInstances = 1;
config.logLevel = "debug"; //trace | debug | info | warn | error | silent

exports.config = config;
