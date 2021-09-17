import { Given, When, Then } from "cucumber";
import { expect } from "chai";

Given("^el usuario tapea tarjetas$", () => {
  home.pressCard();
});

When("^el usuario tapea bloquear$", () => {
  tarjetas.pressTheftOrLost();
});

Then("^el usuario selecciona una opcion de direccion$", () => {
  tarjetas.selectAnAddress();
});

And("^el usuario presiona continuar$", () => {
  tarjetas.pressContinue();
});

Then("^el usuario visualiza preguntas contextualizadas de tarjetas$", () => {
  tarjetas.validateCardQuestions();
});

When("^el usuario tapea cerrar en la pantalla de direccion$", () => {
  tarjetas.closeScreenDirection();
});

Then("^el usuario visualiza un modal para confirmar la salida$", () => {
  tarjetas.confirmExit();
});

And("^el usuario tapea no reimprimir$", () => {
  tarjetas.pressNotReprint();
});

Then("^el usuario visualiza la pantalla de tarjetas$", () => {
  tarjetas.validateCardScreen();
});

And("^el usuario tapea volver$", () => {
  tarjetas.pressBackButton();
});

Then("^el usuario visualiza el flujo de reimpresion$", () => {
  tarjetas.validateNotPrintFlow();
});

And("^el usuario tapea reimprimir$", () => {
  tarjetas.pressRePrint();
});

Then("^el usuario tapea cerrar en la pantalla de exito de solicitud$", () => {
  tarjetas.pressCloseSuccessRequest();
});

Then(
  "^el usuario tapea finalizar en la pantalla de exito de solicitud$",
  () => {
    tarjetas.pressFinishSuccessRequest();
  }
);

And("^el usuario visualiza una pantalla para confirmar$", () => {
  tarjetas.validateConfirmScreen();
});

And("^el usuario tapea solicitar reimpresion$", () => {
  tarjetas.pressRequestReprint();
});

And("^el usuario visualiza una pantalla de exito de bloqueo$", () => {
  tarjetas.validateSuccessBlocking();
});

When("^el usuario visualiza la opcion de envio$", () => {
  tarjetas.validateShippingOption();
});

And("^el usuario tapea enviar$", () => {
  tarjetas.pressSend();
});

Then("^el usuario tapea finalizar$", () => {
  tarjetas.validateSuccessScreen();
});

Then("^el usuario visualiza una pantalla de error$", () => {
  tarjetas.validateErrorScreen();
});

And("^el usuario tapea fisica$", () => {
  tarjetas.pressCardPhisical();
});

And("^el usuario tapea un motivo de reimpresion$", () => {
  tarjetas.pressReprintMotive();
});

When("^el usuario tapea cerrar$", () => {
  tarjetas.pressClose();
});

When('^el usuario tapea el motivo "la perdi"$', () => {
  tarjetas.pressLostMotive();
});

Then("^el usuario ingresa a la pantalla ayuda en tarjetas$", () => {
  tarjetas.pressHelpInCards();
});

Then("^usuario accede a tarjetas$", () => {
  tarjetas.pressCardsTabs();
});

And("^usuario tapea tarjeta Física$", () => {
  tarjetas.pressCardPhisical();
});

When("^usuario tapea Pausar tarjeta$", () => {
  tarjetas.pressPaused();
});

Then("^usuario puede ver (.*) la tarjeta$", state => {
  tarjetas.validatePausedState(state);
});
