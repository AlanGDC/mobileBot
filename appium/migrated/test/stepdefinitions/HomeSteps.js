import { Given, When, Then } from "cucumber";
import { expect } from "chai";

Then("^el usuario visualiza la pantalla de home$", () => {
  home.validateHomeScreen();
});

And("^el usuario ve el empty state en activity view", () => {
  home.userValidateActivityViewEmptyState();
});

And("ve el numero de cuenta (.*)", accountNumber => {
  home.userValidateAccountNumber(accountNumber);
});

Then("^ve el saldo (.*) de su cuenta$", accountBalance => {
  home.userValidateCurrentAccountBalance(accountBalance);
});

And("^el usuario visualiza el agrupador de movimientos (.*)$", grupo => {
  home.userValidateMovementGroup(grupo);
});

And("^el usuario tiene movimientos (.*)$", () => {
  home.createGenericMovement();
});

And(
  "^visualiza el monto (.*) del movimiento (.*) en la fecha (.*)",
  (ammount, movement, date) => {
    home.userSeeMovementOnActivityView(ammount, movement, date);
  }
);
