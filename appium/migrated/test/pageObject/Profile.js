import { Given, When, Then } from "cucumber";
import { expect } from "chai";

class Profile extends CommonPage {
  logout = $("~Boton cerrar sesión");
  botonEditar = $("//*[@text='Editar']");
  //estadoCivilMostrado=$("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.EditText[4]\n");
  divAlias = $(
    "\t/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView[2]"
  );
  comboEstadoCivil = $("~Combo Estado Civil");
  botonFinalizar = $("~Boton Terminar");
  botonConfiguracion = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.TextView[1]\n"
  ); //TODO: manguear accessibility label
  botonVerDatosPersonales = $("//*[@text='Ver mis datos']");
  static dropEstadoCivil = "Combo Estado ";
  btnShare = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.ImageView"
  );

  promptsForCivilStatus() {
    comboEstadoCivil.waitUntilPresent();
  }

  selectCivilStatus(estadoCivil) {
    this.comboEstadoCivil.click();
    $(dropEstadoCivil + estadoCivil).click();
  }

  finish() {
    this.botonFinalizar.click();
  }

  showsCivilStatus(estadoCivil) {
    try {
      DriverActions.scrollDownToText(estadoCivil);
      $("//*[@text='" + estadoCivil + "'] ").isPresent();
    } catch (e) {
      showsCivilStatus(estadoCivil);
    }
  }

  goToConfiguration() {
    this.botonConfiguracion.click();
  }

  seePersonalInfo() {
    try {
      this.botonVerDatosPersonales.click();
    } catch (e) {
      dismissWarning();
      seePersonalInfo();
    }
  }

  isOnProfile() {
    logout.waitForDisplayed();
  }

  pressChangeAlias() {
    this.botonEditar.click();
  }

  validateAlias(alias) {
    try {
      Thread.sleep(10000);
    } catch (e) {
      console.log(e.message);
    }
    console.log(divAlias.getText() + "PRUEBA SAND");
    if (!divAlias.getText().equalsIgnoreCase(alias)) {
      assert.fail("No tiene el alias deseado");
    }
  }

  shareInfo() {
    this.btnShare.click();
  }
}
