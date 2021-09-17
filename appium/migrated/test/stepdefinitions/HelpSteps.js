import { Given, When, Then } from "cucumber";
import { expect } from "chai";

When("^el usuario ingresa a la pantalla ayuda$", () => {
  login.pressHelp();
});

Then("^el usuario visualiza los canales de soporte$", () => {
  help.showFAQS();
});

When("^el usuario tapea el boton volver a la pantalla anterior$", () => {
  help.pressBackButton();
});

When("^el usuario tapea ver todas$", () => {
  help.pressSeeAll();
});

Then("^el usuario visualiza la pantalla de faqs$", () => {
  help.showFAQSSection();
});

When("^el usuario tapea mas opciones$", () => {
  help.pressMoreOptions();
});

Then("^el usuario visualiza la pantalla de ayuda mas opciones$", () => {
  help.showSectionMoreOptions();
});

When("^el usuario tapea whatsapp$", () => {
  help.pressWhatsAppButton();
});

Then("^el usuario visualiza una conversacion con el banco del sol$", () => {
  help.showSectionChatBDS();
});

When("^el usuario tapea una de las preguntas frecuentes$", () => {
  help.pressQuestionFrecuent();
});

Then("^el usuario visualiza la respuesta$", () => {
  help.showAnswerQuestionFrecuent();
});

And("^el usuario visualiza la pantalla de ayuda$", () => {
  help.validateHelpScreen();
});

// no loggeado

Then("^el usuario visualiza las preguntas como abrir mi cuenta$", () => {
  help.validateHowToOpenAccountQuestions();
});

And("^el usuario visualiza las preguntas de inicio de sesion$", () => {
  help.validateLoginQuestions();
});

Then("^el usuario visualiza la pantalla anterior de no loggeado$", () => {
  onboarding.displayPreviousScreen();
});

Then(
  "^el usuario visualiza la opcion para calificar si la respuesta fue util o no$",
  () => {
    help.validateQualification();
  }
);

Then("^el usuario visualiza un agradecimiento por feedback$", () => {
  help.validateFeedback();
});

And("^el usuario tapea que si$", () => {
  help.pressBtnYes();
});

And("^el usuario tapea que no$", () => {
  help.pressBtnNo();
});
