import { Given, When, Then } from "cucumber";
import { expect } from "chai";

When("^el usuario presiona en codigo de etica$", () => {
  institutional.pressCodeOfEthics();
});

When("^el usuario hace click en comparacion de comisiones$", () => {
  institutional.pressCommissionComparison();
});

When("^el usuario hace click en identificacion de PEPs$", () => {
  institutional.pressPEPIdentification();
});

When("^el usuario hace click en terminos y condiciones$", () => {
  institutional.pressTermsAndConditions();
});

When("^el usuario hace click en regimen de transparencia$", () => {
  institutional.pressMenuTransparencyRegime();
});

When("^el usuario hace click en prevencion lavado de dinero$", () => {
  institutional.pressMoneyLaunderingPrevention();
});

When("^el usuario hace click en defensa del consumidor$", () => {
  institutional.pressConsumerDefense();
});

When("^el usuario hace click en el logo de usuarios financieros$", () => {
  institutional.pressFinancialUsers();
});

When("^el usuario hace click en portal del cliente bancario$", () => {
  institutional.pressBankCustomerPortal();
});

When("^el usuario hace click en agente adherente MAE$", () => {
  institutional.pressMaeBondingAgent();
});

When("^el usuario hace click en FATCA - crs$", () => {
  institutional.pressFATCA();
});

When("^el usuario hace click en politica de cookies$", () => {
  institutional.pressCookiesPolicy();
});

When("^el usuario hace click en censo agropecuario$", () => {
  institutional.pressAgriculturalCensus();
});

When("^el usuario hace click en precios y comisiones$", () => {
  institutional.pressPriceAndCommissions();
});

When("^el usuario hace click en linkedin$", () => {
  institutional.pressLinkedin();
});

When("^el usuario presiona informacion al usuario financiero$", () => {
  institutional.pressFinancialUserInformation();
});

When("^el usuario hace click en proteccion de datos personales$", () => {
  institutional.pressPersonalDataProtection();
});

And(
  "^el usuario hace click en direccion nacional de proteccion de datos personales$",
  () => {
    institutional.pressNationalAddressPersonalDataProtection();
  }
);

Then("^el usuario hace click en Cierre de cuentas$", () => {
  institutional.pressClosingAccounts();
});

When("el usuario hace click en el logo de banco del sol$", () => {
  institutional.pressBDSLogo();
});

Then("el usuario visualiza la pantalla (.*)$", actualURL => {
  institutional.validateCorrectPage(actualURL);
});

And("el usuario tapea el menu$", () => {
  institutional.pressMenu();
});

When("el usuario hace click en quienes somos$", () => {
  institutional.pressAboutUs();
});

When("el usuario presiona productos$", () => {
  institutional.pressProducts();
});

When("el usuario hace click en contacto$", () => {
  institutional.pressContact();
});
