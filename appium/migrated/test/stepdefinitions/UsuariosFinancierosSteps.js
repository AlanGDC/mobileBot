import { Given, When, Then } from "cucumber";
import { expect } from "chai";

And("el usuario presiona el link de usuarios financieros", () => {
  institutional.pressLinkFinancialUsers();
});
