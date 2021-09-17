import { Given, When, Then } from "cucumber";
import { expect, assert } from "chai";

class Help extends PageObject {
  //Accesibility Label
  seeAllButton = $("~Ver todas");
  moreOptionsButton = $("~Más Opciones");
  btnAccount = $("~Cuenta");
  btnTransfers = $("~Transferencias");
  btnoInvestments = $("~Inversiones");
  btnNo = $("~No");
  btnYes = $("~Si");

  //xPath
  questionFrecuentDiv = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView\n"
  );
  answerQuestionFrecuentDiv = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.TextView\n"
  );
  divHowToOpenAccount = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup\n"
  );
  divLoggin = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup\n"
  );
  FAQSSection = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.TextView\n"
  );
  backButton = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton\n"
  );
  chatWhatsAppDiv = $("");
  FAQSDiv = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup\n"
  );
  moreOptionsDiv = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup\n"
  );
  whatsAppButton = $("~Contactanos por Whatsapp");
  divQualification = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.widget.TextView[2]\n"
  );

  // Loggeado

  showFAQS() {
    this.FAQSSection.click();
  }

  pressBackButton() {
    this.backButton.click();
  }

  pressSeeAll() {
    this.seeAllButton.click();
  }

  showFAQSSection() {
    if (!FAQSDiv.isDisplayed()) {
      assert.fail("No se encontro la seccion de faqs");
    }
  }

  pressMoreOptions() {
    this.moreOptionsButton.click();
  }

  showSectionMoreOptions() {
    if (!moreOptionsDiv.isDisplayed()) {
      assert.fail("No se encontro la seccion de mas opciones");
    }
  }

  pressWhatsAppButton() {
    this.whatsAppButton.click();
  }

  showSectionChatBDS() {
    if (!chatWhatsAppDiv.isDisplayed()) {
      assert.fail("No se encontro la seccion de mas opciones");
    }
  }

  pressQuestionFrecuent() {
    this.questionFrecuentDiv.click();
  }

  showAnswerQuestionFrecuent() {
    if (!answerQuestionFrecuentDiv.isDisplayed()) {
      assert.fail("No se encontro la seccion de mas opciones");
    }
  }

  // NO Loggeado

  validateHowToOpenAccountQuestions() {
    if (!divHowToOpenAccount.isDisplayed()) {
      assert.fail("No se encontro la seccion de mas opciones");
    }
  }

  validateLoginQuestions() {
    if (!divLoggin.isDisplayed()) {
      assert.fail("No se encontro la seccion de mas opciones");
    }
  }

  validateQualification() {
    if (!divQualification.isDisplayed()) {
      assert.fail("No se encontro la seccion de calificacion");
    }
  }

  validateHelpScreen() {}

  pressBtnYes() {
    this.btnYes.click();
  }

  pressBtnNo() {
    this.btnNo.click();
  }

  validateFeedback() {}
}
