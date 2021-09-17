// import { Given, When, Then } from 'cucumber';
// import { expect } from 'chai';

// class Login extends CommonPage {
//     static teclaLabel = "Teclado Clave Tecla ";
//     botonAceptar = $("~Boton Aceptar");
//     botonAyuda = $("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.TextView\n");
//     botonActivarBiometria = $("~Activar biometria");
//     botonCancelarBiometria = $("~Cancelar biometria");
//     botonCancelarLimiteDispositivos = $("~Cancelar");
//     boton1 = $(teclaLabel + "1");
//     botonContinuarUltimoIntento = $("~Continuar");

//     enterPasscode(pass) {
//         for (i = 0; i < pass.length(); i++) {
//             c = Character.toString(pass.charAt(i));
//             $(teclaLabel + c).click();
//         }
//     }

//     pressHelp() {
//        this.botonAyuda.click();
//     }

//     helpAvailable() {
//         botonAyuda.waitForDisplayed();
//     }

//     showsDeviceLimitBreached() {
//         //TODO: CHEQUEAR
//         botonCancelarLimiteDispositivos.waitForDisplayed();
//     }

//     enableFingerprint() {
//        this.botonActivarBiometria.click();
//     }

//     cancelFingerprintModal() {
//        this.botonCancelarBiometria.click();
//     }

//     enterFingerprint() {
//         appium = SerenityWebdriverManager.inThisTestThread().getActiveDrivers().get(0);
//         if (appium.getCapabilities().getCapability(MobileCapabilityType.PLATFORM_NAME) == "Android") {
//             //appium.execute("adb -e emu finger touch 1");
//             AndroidDriver driver = new AndroidDriver(appium.getCapabilities());
//             driver.fingerPrint(1);
//         } else if
//         (appium.getCapabilities().getCapability(MobileCapabilityType.PLATFORM_NAME) == "IOS") {
//             IOSDriver driver = new IOSDriver(appium.getCapabilities());
//             driver.performTouchID(true);
//         }
//     }

//     acceptTermsAndConditions() {
//         try {
//             if (botonAceptar.isDisplayed())this.botonAceptar.click();
//         } catch (ElementShouldBeEnabledException | NoSuchElementException e) {
//         }

//     }

//     keyboardIsDisplayed() {
//         boton1.waitForDisplayed();
//     }

//     continueToLastAttempt() {
//        this.botonContinuarUltimoIntento.click();
//     }
// }
