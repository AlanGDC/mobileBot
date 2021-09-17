import { Given, When, Then } from "cucumber";
import { expect, assert } from "chai";

class MoreOptions extends CommonPage {
  btnSuggestions = $("~Sugerencias");
  btnWhatsApp = $("~Contacto Whatsapp");
  btnBranchOffice = $("~Sucursales");
  btnTelephone = $("~Teléfono");
  divMoreOptions = $("//*[@text='Más Opciones'] ");

  pressButtonSuggestions() {
    this.btnSuggestions.click();
  }

  validateMoreOptionsScreen() {
    if (!divMoreOptions.isDisplayed()) {
      assert.fail("No se visualizo la pantalla de mas opciones");
    }
  }
}
