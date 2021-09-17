// import { Given, When, Then } from 'cucumber';
// import { expect } from 'chai';

// class AndroidAppiumDriver implements DriverSource {

//     static AndroidDriver driver;

//     static AndroidDriver getDriver() {
//         return driver;
//     }

//     @Override
//     AndroidDriver newDriver() {
//         try {
//             DesiredCapabilities desiredCapabilities = new DesiredCapabilities();
//             desiredCapabilities.setCapability(MobileCapabilityType.PLATFORM_NAME, "Android");
//             desiredCapabilities.setCapability(MobileCapabilityType.DEVICE_NAME, "Android Device");
//             desiredCapabilities.setCapability(MobileCapabilityType.CLEAR_SYSTEM_FILES, true);
//             desiredCapabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, "uiautomator2");
//             desiredCapabilities.setCapability(MobileCapabilityType.NEW_COMMAND_TIMEOUT, "200");
//             if (process.env("testing.driver").equalsIgnoreCase("android")) {
//                 File app = new File(process.env("testing.apkPath"), process.env("testing.apkName"));
//                 desiredCapabilities.setCapability(MobileCapabilityType.APP, app.getAbsolutePath());
//                 desiredCapabilities.setCapability(AndroidMobileCapabilityType.AUTO_GRANT_PERMISSIONS, "true");
//             }
//             if (process.env("testing.driver").equalsIgnoreCase("android-web")) {
//                 desiredCapabilities.setCapability(MobileCapabilityType.BROWSER_NAME, "Chrome");
//                 desiredCapabilities.setCapability("appium:chromeOptions", ImmutableMap.of("w3c", false));
//             }
//             URL url_appium = new URL("http://0.0.0.0:4723/wd/hub");
//             driver = new AndroidDriver<>(url_appium, desiredCapabilities);
//             return driver;
//         } catch (e) {
//             throw new Error(e);
//         }
//     }

//     @Override
//     boolean takesScreenshots() {
//         return true;
//     }

// }
