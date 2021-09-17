import { Given, When, Then } from "cucumber";
import { expect, assert } from "chai";

@SuppressWarnings("unused")
class Tarjetas extends CommonPage {
  //Flujo bloquear tarjeta
  btnBlock = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.TextView[1]\n"
  );
  btnReprint = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.TextView[1]\n"
  );
  btnWhitenPin = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.TextView[1]\n"
  );
  btnLockCard = $("~Bloquear Tarjeta");
  btnRequestReprint = $("~Solicitar reimpresión");
  btnHelp = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.TextView\n"
  );
  btnCardTabs = $("~CARDS_TAB");
  btnCardPhisical = $("~Física");
  //   btnCardPhisical = $("android.view.View[@content-desc=\"Física\"]/android.view.ViewGroup");
  btnPressPaused = $("~accessibilityLabel.pause");
  lblPausedState = $(
    '//android.view.ViewGroup[@content-desc="accessibilityLabel.pause"]/android.widget.TextView[1]'
  );
  //   btnPressPaused = $("~Pausar");

  //Flujo reimpresion
  optDoesntWork = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.view.ViewGroup\n"
  );
  optDontReadNumber = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup\n"
  );
  optLostIt = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[3]/android.view.ViewGroup\n"
  );
  optAnother = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[4]/android.view.ViewGroup\n"
  );
  btnContinue = $("~Continuar");
  btnSend = $("~Enviar");
  btnNewAddress = $("~accesibilityLabel.newAddress");
  btnBackButton = $(
    "~/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton\n"
  );
  divCardSection = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.ScrollView\n"
  );
  divRePrintSection = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView[1]\n"
  );
  btnFinish = $("~Finalizar");
  btnClose = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton\n"
  );

  pressTheftOrLost() {
    btnLockCard.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnLockCard)
      .click();
  }

  selectAnAddress() {}

  pressContinue() {
    btnContinue.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnContinue)
      .click();
  }

  validateCardQuestions() {}

  closeScreenDirection() {
    btnClose.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnClose)
      .click();
  }

  confirmExit() {}

  pressNotReprint() {}

  validateCardScreen() {
    if (!divCardSection.isDisplayed()) {
      assert.fail("No se visualizo la seccion de tarjetas");
    }
  }

  pressBackButton() {
    btnBackButton.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnBackButton)
      .click();
  }

  validateNotPrintFlow() {}

  pressNotPrintFlow() {}

  pressCloseSuccessRequest() {}

  pressFinishSuccessRequest() {}

  validateConfirmScreen() {
    if (!btnRequestReprint.isDisplayed()) {
      assert.fail(
        "No se encontro en la pantalla de confirmacion tarjeta bloqueada"
      );
    }
  }

  pressRequestReprint() {
    btnRequestReprint.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnRequestReprint)
      .click();
  }

  validateSuccessBlocking() {}

  validateShippingOption() {
    if (!divRePrintSection.isDisplayed()) {
      assert.fail("No se encontro en la pantalla de confirmacion direccion");
    }
  }

  pressSend() {}

  validateSuccessScreen() {
    btnFinish.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnFinish)
      .click();
  }

  validateErrorScreen() {}

  pressReprintMotive() {}

  pressClose() {
    //this.btnClose.click();
    btnClose.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnClose)
      .click();
  }

  pressLostMotive() {
    optLostIt.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(optLostIt)
      .click();
  }

  pressRePrint() {
    btnReprint.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnReprint)
      .click();
  }

  pressHelpInCards() {
    btnHelp.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnHelp)
      .click();
  }

  pressCardsTabs() {
    try {
      Thread.sleep(15000);
    } catch (e) {
      console.log(e.message);
    }
    btnCardTabs.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnCardTabs)
      .click();
    //   }
  }

  pressCardPhisical() {
    btnCardPhisical.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnCardPhisical)
      .click();
  }

  pressPaused() {
    btnPressPaused.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnPressPaused)
      .click();
  }

  validatePausedState(state) {
    // TODO Auto-generated method stub

    btnCardPhisical.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement(btnCardPhisical)
      .click();
    estado = btnCardPhisical.getText();

    assertEquals(state, lblPausedState.getText());
  }
}
