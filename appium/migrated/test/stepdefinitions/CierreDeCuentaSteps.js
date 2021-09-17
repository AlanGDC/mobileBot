import { Given, When, Then } from "cucumber";
import { expect } from "chai";

When("^el usuario hace click en el numero de whatsapp$", () => {
  institutional.pressWhatsApp();
});
