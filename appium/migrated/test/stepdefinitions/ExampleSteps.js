import { Given, When, Then } from "cucumber";
import { expect } from "chai";

Given("^el usuario se encuentra en la landing page$", () => {
  onboarding.isOnWelcome();
});

When("^el usuario se registra$", () => {
  onboarding.register();
});

Then("^el usuario visualiza requisitos de identificacion$", () => {
  onboarding.isOnIdentificationRequirements();
});
