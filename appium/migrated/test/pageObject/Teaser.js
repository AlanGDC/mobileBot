import { Given, When, Then } from "cucumber";
import { expect, assert } from "chai";

class Teaser extends CommonPage {
  static btnWantToParticipate = "btnWantToParticipateMobile";
  static btnNextOne = "btnNextOne";
  static btnNextTwo = "btnNextTwo";
  static btnNextThree = "btnNextThree";
  static btnSend = "btnSend";
  static btnSkipOne = "btnSkipOne";
  static btnSkipTwo = "btnSkipTwo";
  static btnSkipThree = "btnSkipThree";
  static inpEmail = "inpEmail";
  static divThanks = "thanks";
  static divFooter = "footer";

  pressWantToParticipate() {
    findElement("id", btnWantToParticipate).click();
  }

  answerFirstQuestion() {
    waitForPageLoaded();
    findElement("id", btnNextOne).click();
  }

  sendEmail(email) {
    findElement("id", inpEmail).sendKeys(email);
  }

  answerThirdQuestion() {
    waitForPageLoaded();
    findElement("id", btnNextThree).click();
  }

  skipSecondQuestion() {
    waitForPageLoaded();
    findElement("id", btnSkipTwo).click();
  }

  showSuccessPoster() {
    waitForPageLoaded();
    if (!findElement("id", divThanks).isDisplayed()) {
      assert.fail("No se visualizo el cartel de agradecimiento");
    }
  }

  answerSecondQuestion() {
    waitForPageLoaded();
    findElement("id", btnNextTwo).click();
  }

  skipThirdQuestion() {
    waitForPageLoaded();
    findElement("id", btnSkipThree).click();
  }

  skipFirstQuestion() {
    waitForPageLoaded();
    console.log(findElement("id", btnSkipOne).isDisplayed());
    findElement("id", btnSkipOne).click();
  }

  pressSend() {
    findElement("id", btnSend).click();
  }

  showQuestions() {}

  mailField() {}

  showButton() {}

  showInput() {}

  sendValue(sendValue) {}

  checkValue(checkValue) {}

  answerQuestions() {}
}
