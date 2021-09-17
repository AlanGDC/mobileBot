import { Given, When, Then } from "cucumber";
import { expect } from "chai";

Then("^se muestran preguntas$", () => {
  teaser.showQuestions();
});

And("^un campo para ingreso de mail$", () => {
  teaser.mailField();
});

And("^un boton para enviarlas$", () => {
  teaser.showButton();
});

When("^se muestra un input$", () => {
  teaser.showInput();
});

And("^y ingresa (.*) en el input$", sendValue => {
  teaser.sendValue(sendValue);
});

Then("^se visualiza (.*) en el input$", checkValue => {
  teaser.checkValue(checkValue);
});

And("^responde preguntas$", () => {
  teaser.answerQuestions();
});

And('^hace click en "Quiero participar"$', () => {
  teaser.pressWantToParticipate();
});

When("^el usuario completa la primera pregunta$", () => {
  teaser.answerFirstQuestion();
});

And("^envia su correo electrónico$", mail => {
  teaser.sendEmail(mail);
});

And("^completa su correo electronico (.*)$", email => {
  teaser.sendEmail(email);
});

And("^completa la tercera pregunta$", () => {
  teaser.answerThirdQuestion();
});

And("^omite la segunda pregunta$", () => {
  teaser.skipSecondQuestion();
});

Then("^el usuario visualiza un cartel de agradecimiento$", () => {
  teaser.showSuccessPoster();
});

And("^completa la segunda pregunta$", () => {
  teaser.answerSecondQuestion();
});

And("^omite la tercera pregunta$", () => {
  teaser.skipThirdQuestion();
});

When("^usuario omite la primera pregunta$", () => {
  teaser.skipFirstQuestion();
});

And("^envia su correo electronico$", () => {
  teaser.pressSend();
});
