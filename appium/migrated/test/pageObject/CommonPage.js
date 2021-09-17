import { Given, When, Then } from "cucumber";
import { expect, assert } from "chai";

class CommonPage extends PageObject {
  botonAtrasClass = $("android.widget.ImageButton");
  dismissWarning = $("#android:id/button1");
  static teclaLabel = "Teclado Clave Tecla ";
  btnContinue = $("~Continuar");

  static addSquadToEmailAddress(mail) {
    //ESTA IMPLEMENTACION YA NO ES NECESARIA
    cell = process.env("testing.squad");
    atIndex = mail.indexOf("@") - 1;
    if (cell == null || cell == "") return mail;
    newString = "";
    for (i = 0; i < mail.length(); i++) {
      newString += mail.charAt(i);
      if (i == atIndex) {
        newString += cell;
      }
    }
    newMail = newString.replaceAll("-", "");
    return newMail;
  }

  static getWebInstitutional(url) {
    androidAppiumDriver = new AndroidAppiumDriver();
    androidAppiumDriver.newDriver().get(url);
  }

  static randomizeMail(mail) {
    uuid = UUID.randomUUID().toString();
    atIndex = mail.indexOf("@") - 1;
    newString = "";
    for (i = 0; i < mail.length(); i++) {
      newString += mail.charAt(i);
      if (i == atIndex) {
        newString += "+" + uuid;
      }
    }
    return newString;
  }

  static findElement(method, value) {
    if (process.env("testing.driver").equalsIgnoreCase("android-web")) {
      return AndroidAppiumDriver.getDriver().findElement(method, value);
    } else {
      return IOSAppiumDriver.getDriver().findElement(method, value);
    }
  }

  goBack() {
    this.botonAtrasClass.click();
  }

  dismissWarning() {
    try {
      this.dismissWarning.click();
    } catch (e) {}
  }

  openNotifications() {
    AndroidAppiumDriver.getDriver().openNotifications();
  }

  enterPasscode(pass) {
    for (i = 0; i < pass.length(); i++) {
      c = Character.toString(pass.charAt(i));
      $(teclaLabel + c).click();
    }
  }

  creoUnDebin(mail, passcode) {
    token = AgendaService.getToken(mail, passcode);
    account = AccountsMeService.accountsMe(token);
    //	account = AddMovementsToAccount.accountsMe(token);
    accountNumber = account.get(0).toString();
    refNo = AddMovementsToAccount.newDebin();
    AddMovementsToAccount.authDebin(refNo, accountNumber);
  }

  takeScreenshot() {
    file = AndroidAppiumDriver.getDriver().getScreenshotAs(OutputType.FILE);

    try {
      FileUtils.copyFile(file, new File("Screenshot.png"));
    } catch (e) {
      console.log(e.message);
    }
  }

  validateURL(URLtoCompare) {
    waitForPageLoaded();
    currentURL = AndroidAppiumDriver.getDriver().getCurrentUrl();
    if (!currentURL.equals(URLtoCompare)) {
      assert.fail("No se encontró en la pagina correcta");
    }
  }

  closeWindow() {
    tabs2 =
      new ArrayList() <
      String >
      AndroidAppiumDriver.getDriver().getWindowHandles();
    AndroidAppiumDriver.getDriver()
      .switchTo()
      .window(tabs2.get(0));
    AndroidAppiumDriver.getDriver().close();
    AndroidAppiumDriver.getDriver()
      .switchTo()
      .window(tabs2.get(1));
  }

  waitForPageLoaded() {
    try {
      Thread.sleep(1000);
      wait = new WebDriverWait(AndroidAppiumDriver.getDriver(), 30);
      wait.until(expectation);
    } catch (error) {
      assert.fail("Timeout waiting for Page Load Request to complete.");
    }
  }

  pressContinue() {
    this.btnContinue.click();
  }

  userScrollDown() {
    // TODO Auto-generated method stub
  }

  usuario_ingresa_el_valor(valor) {
    try {
      Thread.sleep(3000);
    } catch (e) {
      console.log(e.message);
    }
    AndroidAppiumDriver.getDriver().getKeyboard();
    //valor.chars().forEachOrdered(i -> recorrerString((char) i));
    AndroidAppiumDriver.getDriver().hideKeyboard();
  }

  // Auxiliares
  recorrerString(valor) {
    caracter = Character.getNumericValue(valor);
    switch (caracter) {
      case 1:
        AndroidAppiumDriver.getDriver().pressKey(
          new KeyEvent(AndroidKey.DIGIT_1)
        );
        break;
      case 2:
        AndroidAppiumDriver.getDriver().pressKey(
          new KeyEvent(AndroidKey.DIGIT_2)
        );
        break;
      case 3:
        AndroidAppiumDriver.getDriver().pressKey(
          new KeyEvent(AndroidKey.DIGIT_3)
        );
        break;
      case 4:
        AndroidAppiumDriver.getDriver().pressKey(
          new KeyEvent(AndroidKey.DIGIT_4)
        );
        break;
      case 5:
        AndroidAppiumDriver.getDriver().pressKey(
          new KeyEvent(AndroidKey.DIGIT_5)
        );
        break;
      case 6:
        AndroidAppiumDriver.getDriver().pressKey(
          new KeyEvent(AndroidKey.DIGIT_6)
        );
        break;
      case 7:
        AndroidAppiumDriver.getDriver().pressKey(
          new KeyEvent(AndroidKey.DIGIT_7)
        );
        break;
      case 8:
        AndroidAppiumDriver.getDriver().pressKey(
          new KeyEvent(AndroidKey.DIGIT_8)
        );
        break;
      case 9:
        AndroidAppiumDriver.getDriver().pressKey(
          new KeyEvent(AndroidKey.DIGIT_9)
        );
        break;
      case 0:
        AndroidAppiumDriver.getDriver().pressKey(
          new KeyEvent(AndroidKey.DIGIT_0)
        );
        break;
      default:
        break;
    }
  }
}
