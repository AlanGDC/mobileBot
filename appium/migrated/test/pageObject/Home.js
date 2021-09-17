import { Given, When, Then } from "cucumber";
import { expect, assert } from "chai";

class Home extends CommonPage {
  ACCOUNT_TAB = $("~ACCOUNT_TAB");
  botonPerfil = $("//*[contains(@class, 'ImageButton')]");
  accountSection = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup\n"
  );
  TRANSFERS_TAB = $("~TRANSFERS_TAB");
  botonTransferencias = $("~Nueva Transferencia");
  actividad1 = $("~actividad 1");
  //   cardTypeActividad1= $("//android.view.ViewGroup[@content-desc=\"actividad 1\"]/android.widget.TextView[1]");
  cardTypeActividad1 = $("~actividad 1 descripción");
  fechaActividad1 = $("~actividad 1 fecha");
  montoActividad1 = $(
    '//android.view.ViewGroup[@content-desc="actividad 1 monto"]/android.widget.TextView'
  );
  numeroCuenta = $("~número de cuenta");
  //botonPerfil= MobileBy.className("android.widget.ImageButton");
  saldo = $("~saldo en cuenta");
  btnCard = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[4]"
  );
  agrupadorEsteMes = $("~Este Mes");

  isOnHome() {
    try {
      dismissWarning();
      TRANSFERS_TAB.waitForDisplayed();
    } catch (e) {}
  }

  goToProfile() {
    try {
      this.botonPerfil.click();
    } catch (e) {
      dismissWarning();
      goToProfile();
    }
  }

  validateHome() {
    if (!accountSection.isDisplayed()) {
      assert.fail();
    }
  }

  clickOntranfer() {
    this.TRANSFERS_TAB.click();
  }

  clickOnAccounts() {
    this.ACCOUNT_TAB.click();
  }

  validateHomeScreen() {
    if (!(TRANSFERS_TAB.isDisplayed() && ACCOUNT_TAB.isDisplayed())) {
      assert.fail("No se encuentra en la pantalla de la home");
    }
  }

  userValidateActivityViewEmptyState() {
    // TODO Auto-generated method stub
    actividad1.shouldNotBeVisible();
  }

  pressCard() {
    this.btnCard.click();
  }

  userValidateAccountNumber(accountNumber) {
    assertEquals(accountNumber, $("~número de cuenta"))
      .waitForDisplayed()
      .getText();
  }

  userValidateCurrentAccountBalance(accountBalance) {
    assertEquals("$ " + accountBalance, saldo.getText());
  }

  userValidateMovementGroup(grupo) {
    // TODO Auto-generated method stub

    $("~grupo").waitForDisplayed();
  }

  createGenericMovement() {
    // TODO Auto-generated method stub
    //    	forx=0;x<response.size();x++) {
    //    	//	  console.log(response.get(x));
    //
    //    	if (response.get(x) != null)
    //    	{
    //    		console.log(response.get(x));
    //
    //
    //        message = RestAssured.given()
    //               .log().all()
    //               .contentType(ContentType.JSON)
    //               .headers("Authorization", "Bearer " + accessToken)
    //               .delete("http://dev-customers.bdsdigital.com.ar/contacts/"+response.get(x).toString())
    //       .then()
    //       .extract().jsonPath().get("message");
    //        console.log("response body :" + message);
    //    	}
  }

  userSeeMovementOnActivityView(ammount, movement, date) {
    // TODO Auto-generated method stub
    assertEquals(ammount, montoActividad1.waitForDisplayed().getText());
    assertEquals(movement, cardTypeActividad1.waitForDisplayed().getText());
    assertEquals(date, fechaActividad1.waitForDisplayed().getText());
  }
}
