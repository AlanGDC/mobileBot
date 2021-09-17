import { Given, When, Then } from "cucumber";
import { expect } from "chai";

class PaymentsTest extends CommonPage {
  PAYMENTS_TAB = $("~PAYMENTS_TAB");

  usuario_accede_a_pagosTest() {
    PAYMENTS_TAB.waitForDisplayed();
    PAYMENTS_TAB.waitForClickable();
    this.PAYMENTS_TAB.click();
  }
}
