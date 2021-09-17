import { Given, When, Then } from "cucumber";
import { expect } from "chai";

And("^el usuario ingresa a sugerencias$", () => {
  moreOptions.pressButtonSuggestions();
});

Then("^el usuario visualiza la pantalla de mas opciones$", () => {
  moreOptions.validateMoreOptionsScreen();
});
