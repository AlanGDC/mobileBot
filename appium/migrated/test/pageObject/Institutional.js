import { Given, When, Then } from "cucumber";
import { expect } from "chai";

export default class Institutional extends CommonPage {
  //footer -----------------------------------------------------------------------------------------------------------
  static btnFinancialUserInformation = "btnFinancialUserInformation";
  static btnCodeOfEthics = "btnCodigoEtica";
  static btnCommissionComparison = "btnComparacionComisiones";
  static btnTermsAndConditions = "btnTerminosCondiciones";
  static btnPersonalDataProtection = "btnPersonalDataProtection";
  static btnTransparencyRegime = "btnRegimenTransparencia";
  static btnMoneyLaunderingPrevention = "btnPrevencionLavadoDinero";
  static btnCustomerDefense = "btnCustomerDefense";
  static btnAccountClose = "btnAccountClose";
  static btnBankCustomerPortal = "btnPortalClienteBancario";
  static btnMaeBondingAgent = "btnAgenteAdherente";
  static btnFatca = "btnFatca";
  static btnCookiesPolicy = "btnPoliticaCookies";
  static btnAgriculturalCensus = "btnCensoAgropecuario";
  static btnPriceAndCommissions = "btnPrecioComisiones";
  //------------------------------------------------------------------------------------------------------------------

  //Header -----------------------------------------------------------------------------------------------------------
  static btnBDSLogo = '//*[@id="linkLogo"]/img';
  static btnMenu = '//*[@id="btnNavMobile"]';
  static btnAboutUs = '//*[@id="btnAboutUs"]';
  static btnProducts = '//*[@id="btnProducts"]';
  static btnContact = '//*[@id="btnContact"]';
  static btnWhatsApp = "btnWhatsApp";
  static btnLinkedin = "btnLinkedin";
  //------------------------------------------------------------------------------------------------------------------

  pressCodeOfEthics() {
    findElement("id", btnCodeOfEthics).click();
  }

  pressCommissionComparison() {
    findElement("id", btnCommissionComparison).click();
  }

  pressPEPIdentification() {}

  pressTermsAndConditions() {
    findElement("id", btnTermsAndConditions).click();
  }

  pressMenuTransparencyRegime() {
    findElement("id", btnTransparencyRegime).click();
  }

  pressMoneyLaunderingPrevention() {
    findElement("id", btnMoneyLaunderingPrevention).click();
  }

  pressConsumerDefense() {
    findElement("id", btnCustomerDefense).click();
  }

  pressFinancialUsers() {
    findElement("id", btnFinancialUserInformation).click();
  }

  pressBankCustomerPortal() {
    findElement("id", btnBankCustomerPortal).click();
  }

  pressMaeBondingAgent() {
    findElement("id", btnMaeBondingAgent).click();
  }

  pressFATCA() {
    findElement("id", btnFatca).click();
  }

  pressCookiesPolicy() {
    findElement("id", btnCookiesPolicy).click();
  }

  pressAgriculturalCensus() {
    findElement("id", btnAgriculturalCensus).click();
  }

  pressPriceAndCommissions() {
    findElement("id", btnPriceAndCommissions).click();
  }

  pressLinkedin() {
    findElement("id", btnLinkedin).click();
  }

  pressFinancialUserInformation() {
    findElement("id", btnFinancialUserInformation).click();
  }

  pressPersonalDataProtection() {
    findElement("id", btnPersonalDataProtection).click();
  }

  pressNationalAddressPersonalDataProtection() {}

  pressClosingAccounts() {
    findElement("id", btnAccountClose).click();
  }

  pressBDSLogo() {
    waitForPageLoaded();
    findElement("xpath", btnBDSLogo).click();
  }

  validateCorrectPage(actualURL) {
    validateURL(actualURL);
  }

  pressMenu() {
    waitForPageLoaded();
    findElement("xpath", btnMenu).click();
  }

  pressAboutUs() {
    findElement("xpath", btnAboutUs).click();
  }

  pressProducts() {
    findElement("xpath", btnProducts).click();
  }

  pressContact() {
    findElement("xpath", btnContact).click();
  }

  pressWhatsApp() {
    findElement("id", btnWhatsApp).click();
  }

  pressLinkFinancialUsers() {}
}
