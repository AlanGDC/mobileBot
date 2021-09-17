import { Given, When, Then } from "cucumber";
import { expect } from "chai";

class Suggestions extends CommonPage {
  //Accesibility or ID
  divShareIdea = $("~Compartinos tu idea");
  btnSend = $("~Enviar");
  btnFinish = $("~Finalizar");
  btnTryAgain = $("~Volver a intentar");
  btnCancel = $("~Cancelar");
  divThanksPoster = $("~¡Muchas gracias! Tu sugerencia fue recibida");
  inpSuggestions = $("~campo de texto");

  //xPath
  backButton = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton\n"
  );
  btnClose = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton\n"
  );

  pressButtonBack() {
    this.backButton.click();
  }

  validateSuggestions() {
    if (!divShareIdea.isDisplayed()) {
      assert.fail("No se visualizo la pantalla de sugerencias");
    }
  }

  pressButtonSend() {
    this.btnSend.click();
  }

  validateThanksPoster() {
    if (!divThanksPoster.isDisplayed()) {
      assert.fail("No se visualizo la pantalla de sugerencias");
    }
  }

  pressButtonFinish() {
    this.btnFinish.click();
  }

  pressButtonClose() {
    this.btnClose.click();
  }

  sendValueSuggestion() {
    inpSuggestions.sendKeys("LA VIRCHULINA");
  }
}
