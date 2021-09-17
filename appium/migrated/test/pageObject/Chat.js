import { Given, When, Then } from "cucumber";
import { expect, assert } from "chai";

class Chat extends CommonPage {
  inpQuickChat = $("~Chatea con nosotros");
  divMessage = $("#android:id/alertTitle");
  btnYes = $("#android:id/button1");
  btnNo = $("#android:id/button2");
  divSavedHistory = $(
    "//*[@text='POR SEGURIDAD, EL HISTORIAL DE ESTA CONVERSACIÓN VA A SER GUARDADO.']"
  );
  btnSend = $("~send");
  btnBackButton = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton\n"
  );
  inpChat = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText\n"
  );
  lblChat = $("//*[@text='Chat']");

  pressButtonChat() {
    this.inpQuickChat.click();
  }

  validateMessage() {
    if (!divMessage.isDisplayed()) {
      assert.fail("No se visualizo el mensaje de salida");
    }
  }

  pressButtonYes() {
    this.btnYes.click();
  }

  validateConversation() {}

  pressButtonNo() {
    this.btnNo.click();
  }

  validateChatScreen() {}

  validateHour() {}

  validateButtonSend() {}

  inputMessageChat() {
    this.inpChat.sendKeys("hola");
  }

  sendValueChat() {}

  validateEmptyState() {}

  validateSaveHistory() {}
}

export default new Chat();
