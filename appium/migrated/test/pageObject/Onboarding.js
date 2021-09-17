import { Given, When, Then } from "cucumber";
import { expect } from "chai";

class Onboarding extends CommonPage {
  botonLogin = $("~Boton Login");
  botonRegistro = $("~Boton Registro");
  botonEntendido = $("~Boton Entendido");
  botonSelfie = $("~botonCamaraSelfie");
  fotoSelfie = $("~Foto Identidad");
  botonConfirmarSelfie = $("~Boton Confirmar Foto");
  botonContinuar = $("~Boton Continuar");
  botonConfirmarVideo = $("~Boton Confirmar Video");
  botonAyuda = $("~Boton Ayuda");
  labelDeviceId = $("~deviceId");
  labelMagicLinkBaseUrl = $("~magicLinkBaseUrl");
  botonFrenteDNI = $("~Boton Camara DNI Frente");
  botonAyudaNoLoggin = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.TextView\n"
  );
  labelVincularDispositivo = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.TextView\n"
  );
  invalidDeviceMessage = $("//*[@text='Ingresá desde tu celular']");
  // ("el usuario se encuentra en la landing page", () => {
  //         botonLogin.waitUntilPresent();
  //     }
  // ("el usuario se registra", () => {
  //        this.botonRegistro.click();
  //     }
  // ("el usuario visualiza requisitos de identificacion", () => {
  //         botonEntendido.waitUntilPresent();
  //     }
  // ("el usuario comienza el proceso", () => {
  //        this.botonEntendido.click();
  //     }

  takeSelfie() {
    this.botonSelfie.click();
  }

  selfieIsShown() {
    fotoSelfie.waitUntilPresent();
  }

  confirmSelfie() {
    this.botonConfirmarSelfie.click();
  }

  confirmVideoRequirements() {
    this.botonContinuar.click();
  }

  confirmVideo() {
    this.botonConfirmarVideo.click();
  }

  waitForAppTimeout(minutes) {
    try {
      Thread.sleep(minutes * 1000 * 60);
    } catch (e) {
      console.log(e.message);
    }
  }

  showsInvalidDevice() {
    invalidDeviceMessage.waitUntilPresent();
  }

  login() {
    this.botonLogin.click();
  }

  setDeviceId() {
    deviceId = labelDeviceId.waitUntilPresent().getText();

    System.setProperty("deviceId", deviceId);
  }

  setMagicLinkBaseUrl() {
    magicLinkBaseUrl = labelMagicLinkBaseUrl.waitUntilPresent().getText();
    System.setProperty("magicLinkBaseUrl", magicLinkBaseUrl);
    //System.setProperty("magicLinkBaseUrl", "https://open-" + process.env("testing.squad").replace("-", "") + ".bdsdigital.com.ar");
  }

  takeDNIFrontPicture() {
    this.botonFrenteDNI.click();
  }

  emailSent() {
    botonAyuda.waitUntilPresent();
  }

  getUserNotRegisteredEmail() {
    try {
      MailHandler.getUnregisteredMail("bdsolqe@gmail.com", "Bdsol123").contains(
        "Solicitaste vincular tu dispositivo"
      );
      console.log("Mail valido recibido");
    } catch (e) {
      console.log(e.message);
    }
  }

  accessUnregisteredMagicLink() {
    magicLink = null;
    try {
      magicLink = MailHandler.getUnregisteredMagicLink(
        "bdsolqe@gmail.com",
        "Bdsol123"
      );
    } catch (e) {
      console.log(e.message);
    }

    DriverActions.get(magicLink);
  }

  pressHelpNoLoggin() {
    this.botonAyudaNoLoggin.click();
  }

  displayPreviousScreen() {
    if (!labelVincularDispositivo.isDisplayed()) {
      assert.fail("No se visualizo la pantalla de vincular dispositivo");
    }
  }
}
