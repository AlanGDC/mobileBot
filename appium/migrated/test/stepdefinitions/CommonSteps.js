import { Given, When, Then } from "cucumber";
import { expect } from "chai";

And("^el usuario ingresa su huella dactilar$", () => {
  login.enterFingerprint();
});

When("^el usuario intenta volver atras$", () => {
  commonPage.goBack();
});

When("^el usuario accede a Perfil$", () => {
  commonPage.dismissWarning();
  home.goToProfile();
  commonPage.dismissWarning();
});

Given("^el usuario navega a (.*)$", url => {
  commonPage.getWebInstitutional(url);
});

Given("^tiro de la barra$", () => {
  commonPage.openNotifications();
});

Given(
  "^creo un debin para el cliente con mail (.*) y passcode (.*)$",
  (mail, passcode) => {
    commonPage.creoUnDebin(mail, passcode);
  }
);

And("^el usuario cierra la pantalla principal$", () => {
  commonPage.closeWindow();
});

And("^scroll down para recargar la vista$", () => {
  commonPage.userScrollDown();
});
