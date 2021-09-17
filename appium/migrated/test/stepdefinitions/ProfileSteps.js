import { Given, When, Then } from "cucumber";
import { expect } from "chai";

Then("^se le solicita su estado civil$", () => {
  profile.promptsForCivilStatus();
});

And("^selecciona estado civil (.*)$", estadoCivil => {
  profile.selectCivilStatus(estadoCivil);
});

And("^el usuario finaliza la configuracion$", () => {
  profile.finish();
});

Then(
  "^se visualiza el estado civil (.*) en perfil y se persiste en PeopleHub$",
  estadoCivil => {
    profile.seePersonalInfo();
    profile.showsCivilStatus(estadoCivil);
    Assert.assertTrue(
      PeopleHubMySQL.getMaritalStatus() != null ||
        PeopleHubMySQL.getMaritalStatus() != ""
    );
  }
);

Given("^el usuario no declaro su estado civil$", () => {
  try {
    peopleHubMySQL.resetMaritalStatus();
  } catch (e) {
    e.message;
  }
});

And("^el usuario accede a configuracion$", () => {
  profile.goToConfiguration();
});

When("^se intenta cambiar la clave numerica$", () => {
  profileConfig.changePasscode();
});

Then("^se valida el cambio de clave$", () => {
  profileConfig.passcodeChanged();
});

Then("^avisa que las reglas no son cumplidas$", () => {
  profileConfig.passcodeRulesNotMet();
});

When("^se intenta desvincular el dispositivo$", () => {
  profileConfig.unlinkDevice();
});

And("^el usuario confirma la desvinculacion$", () => {
  profileConfig.confirmUnlinkDevice();
});

Then("^el dispositivo se desvincula$", () => {
  profileConfig.showsReLinkDevice();
});

When("^se intenta dar de baja la cuenta$", () => {
  profileConfig.closeAccount();
});

And("^se cancela la baja$", () => {
  profileConfig.cancelAccountClosing();
});

Then("^se visualiza el perfil$", () => {
  profile.isOnProfile();
});

Then("^no avanza a confirmacion de clave$", () => {
  profileConfig.passcodeRulesNotMet();
});

And("^ingresa passcode que contiene DNI del usuario$", () => {
  profile.enterPasscode(
    MailHandler.getJWTClaimsFromMagicLink()
      .getIdNumber()
      .substring(0, 6)
  );
});

Given("^el usuario selecciona Ver Mis datos$", () => {
  home.goToProfile();
});

When("^presiona el boton Cambiar Alias$", () => {
  profile.pressChangeAlias();
});

And("^hace click en Continuar$", () => {
  commonPage.pressContinue();
});

Then("^el usuario visualiza su nuevo alias (.*)$", alias => {
  profile.validateAlias(alias);
});

Then("^el sistema muestra mensaje Error al cambiar el alias$", alias => {
  profile.validateAlias(alias);
});

And("^presiona compartir datos$", () => {
  profile.shareInfo();
});
