import { Given, When, Then } from "cucumber";
import { expect } from "chai";

class ProfileConfig extends CommonPage {
  botonCambiarClaveNumerica = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]\n"
  );
  botonDesvincularDispositivo = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]\n"
  );
  botonDarDeBaja = $("//*[@text='Dar de baja mi cuenta en BDS']");
  botonFinalizar = $("//*[@text='Finalizar'] ");
  imagenPasscodeInvalido = $("~falta");
  botonConfirmarDesvinculacion = $("//*[@text='Desvincular']");
  botonVolverAVincular = $("//*[@text='Volver a vincular']");
  botonCancelarBaja = $("//*[@text='No por ahora']");
  //TODO: PEDIR ACCESSIBILITY LABELS

  changePasscode() {
    this.botonCambiarClaveNumerica.click();
  }

  passcodeChanged() {
    botonFinalizar.waitForDisplayed();
  }

  passcodeRulesNotMet() {
    //imagenPasscodeInvalido.waitForDisplayed();
    Assert.assertFalse($("//*[@text='Confirmá tu clave'] ").isVisible());
  }

  unlinkDevice() {
    this.botonDesvincularDispositivo.click();
  }

  confirmUnlinkDevice() {
    this.botonConfirmarDesvinculacion.click();
  }

  showsReLinkDevice() {
    botonVolverAVincular.waitForDisplayed();
  }

  closeAccount() {
    this.botonDarDeBaja.click();
  }

  cancelAccountClosing() {
    this.botonCancelarBaja.click();
  }
}
