import { Given, When, Then } from "cucumber";
import { expect } from "chai";

When("^el usuario tapea el boton atras$", () => {
  suggestions.pressButtonBack();
});

When("^el usuario tapea el boton enviar$", () => {
  suggestions.pressButtonSend();
});

And("^el usuario visualiza la pantalla de agradecimiento$", () => {
  suggestions.validateThanksPoster();
});

Then("^el usuario tapea el boton finalizar$", () => {
  suggestions.pressButtonFinish();
});

Then("^el usuario tapea el boton cerrar$", () => {
  suggestions.pressButtonClose();
});

And("^el usuario escribe una sugerencia$", () => {
  suggestions.sendValueSuggestion();
});
