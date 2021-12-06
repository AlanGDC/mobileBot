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
    // app: process.env.APK
    //"app-release-int-3.apk"
    project: "First Webdriverio Android Project",
    build: "browserstack-build-1",
    name: "local_test",
    device: "Google Pixel 3",
    os_version: "9.0",
    app: process.env.BROWSERSTACK_APP_ID || 'bs://c700ce60cf13ae8ed97705a55b8e022f13c5827c',
    'browserstack.local': true
          
   }
];
// config = {
//   user: process.env.BROWSERSTACK_USERNAME || 'alanduarte_uyx2Vj',
//   key: process.env.BROWSERSTACK_ACCESS_KEY || '22AB1Cum9og1kuVnYoyX',
//   //...
//   capabilities: [{
//     project: "First Webdriverio Android Project",
//     build: "browserstack-build-1",
//     name: "local_test",
//     device: "Google Pixel 3",
//     os_version: "9.0",
//     app: process.env.BROWSERSTACK_APP_ID || 'bs://c700ce60cf13ae8ed97705a55b8e022f13c5827c',
//     'browserstack.local': true
//   }],
// }
config.maxInstances = 1;
config.logLevel = "info"; //trace | debug | info | warn | error | silent

exports.config = config;
