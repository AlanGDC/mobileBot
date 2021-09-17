// import { Given, When, Then } from 'cucumber';
// import { expect } from 'chai';

// class IOSAppiumDriver implements DriverSource {

//     static IOSDriver driver;

//     static IOSDriver getDriver() {
//         return driver;
//     }

//     @Override
//     IOSDriver newDriver() {
//         File fs = new File(process.env("testing.apkPath"), process.env("testing.apkName"));
//         DesiredCapabilities desiredCapabilities = new DesiredCapabilities();
//         desiredCapabilities.setCapability(MobileCapabilityType.DEVICE_NAME, process.env("appium.deviceName"));
//         //desiredCapabilities.setCapability(MobileCapabilityType.PLATFORM_NAME,"iOS");
//         desiredCapabilities.setCapability(MobileCapabilityType.PLATFORM_VERSION, "12.4");
//         desiredCapabilities.setCapability("udid", "00008020-001E61222689002E");
//         //desiredCapabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, "XCUITest");
//         desiredCapabilities.setCapability(MobileCapabilityType.CLEAR_SYSTEM_FILES, true);
//         desiredCapabilities.setCapability(MobileCapabilityType.APP, fs.getAbsolutePath());
//         desiredCapabilities.setCapability(MobileCapabilityType.NEW_COMMAND_TIMEOUT, "200");

//         desiredCapabilities.setCapability("bundleId", "ar.com.bdsol.bds.squads.cyan");
//         desiredCapabilities.setCapability("xcodeOrgId", "FV9ZSLR2X5");
//         desiredCapabilities.setCapability("xcodeSigningId", "iPhone Developer");
//         desiredCapabilities.setCapability("updatedWDABundleId", "ar.com.bdsol.bds.squads.cyan");
//         desiredCapabilities.setCapability("agentPath", "/Users/misaeljesusmagi/node_modules/appium/node_modules/appium-xcuitest-driver/WebDriverAgent/WebDriverAgent.xcodeproj");
//         desiredCapabilities.setCapability("bootstrapPath", "/Users/misaeljesusmagi/node_modules/appium/node_modules/appium-xcuitest-driver");

//         URL urlAppium = null;
//         try {
//             urlAppium = new URL("http://127.0.0.1:4723/wd/hub");
//         } catch (e) {
//             console.log(e.message)
//         }
//         driver = new IOSDriver<>(urlAppium, desiredCapabilities);
//         return driver;
//     }

//     @Override
//     boolean takesScreenshots() {
//         return true;
//     }
// }
