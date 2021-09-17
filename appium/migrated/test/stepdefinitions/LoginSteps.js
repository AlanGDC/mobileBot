import { Given, When, Then } from "cucumber";
import { expect, assert } from "chai";

const documentUrl = "https://" + UUID.randomUUID().toString() + ".com";

const getMail = () => {
  return registeredMail;
};

Given(
  "^existe el usuario (.*) con passcode (.*)$",
  (registeredEmail, passcode) => {
    MailHandler.emptyInbox(
      CommonPage.addSquadToEmailAddress(registeredEmail),
      "Bdsol123"
    );
    //onboarding.setDeviceId();
    //onboarding.setMagicLinkBaseUrl();
  }
);

And("^el usuario ingresa a la pantalla de login$", () => {
  onboarding.login();
});

When("^ingresa el passcode (.*)$", passcode => {
  login.enterPasscode(passcode);
});

Then("^se visualiza la home$", () => {
  home.isOnHome();
});

Given("^el dispositivo no se encuentra vinculado$", () => {});

And("^accedo por magic link con mail (.*) y password (.*)$", (mail, pass) => {
  registeredMail = CommonPage.addSquadToEmailAddress(mail);
  jwtHandler.getLinkDeviceMagicLink(
    CommonPage.addSquadToEmailAddress(mail),
    pass
  );
});

Then("^se visualiza mensaje de limite de dispositivos vinculados$", () => {
  login.showsDeviceLimitBreached();
});

And("^el usuario decide ingresar por huella dactilar$", () => {
  login.enableFingerprint();
});

Given("^el usuario se desloguea$", () => {
  home.goToProfile();
  profile.logout();
});

Then("^recibe un mail con informacion de como continuar el proceso$", () => {
  onboarding.getUserNotRegisteredEmail();
});

And("^el usuario acepta terminos y condiciones$", () => {
  login.acceptTermsAndConditions();
});

And("^el usuario ya posee (\\d+) dispositivos vinculados$", cantidad => {
  PeopleHubMySQL.unlinkDevices();
  PeopleHubMySQL.linkRandomDevices(cantidad);
});

And("^el usuario ya posee un dispositivo vinculado$", () => {
  mail = LoginSteps.getMail();
  console.log("Desvinculando dispositivo con cuenta: " + mail);
  RestAssured.given()
    .contentType(ContentType.JSON)
    .body('{"deviceId":"' + process.env("deviceId") + '"}')
    .post(
      MailHandler.getTokenIssuer() +
        "/credentials/" +
        MailHandler.getKeyCloakUserId() +
        "/unlink-account"
    )
    .then()
    .assertThat()
    .statusCode(200);
});

Then("^se visualiza la pantalla de login$", () => {
  login.keyboardIsDisplayed();
});

And("^acepta reintentar$", () => {
  login.continueToLastAttempt();
});

And("^el usuario no acepto terminos y condiciones$", () => {
  try {
    PeopleHubMySQL.deleteTermsAccepted(MailHandler.getKeyCloakUserId());
  } catch (e) {
    console.log(e.message);
  }
});

Given(
  "^existe el usuario con mail (.*), coreId (.*), primer nombre (.*), apellido (.*), fecha de nacimiento (.*), DNI (.*), CUIL (.*), altura de calle (.*), codigo postal (.*), passcode (.*)$",
  (
    mail,
    coreId,
    nombre,
    apellido,
    fecNac,
    dni,
    cuil,
    altura,
    codigoPostal,
    passcode
  ) => {
    keycloakUserId = createUser(
      mail,
      coreId,
      nombre,
      apellido,
      fecNac,
      dni,
      altura,
      passcode
    );
    PeopleHubService.createUser(
      keycloakUserId,
      mail,
      coreId,
      nombre,
      apellido,
      fecNac,
      dni,
      altura,
      cuil,
      codigoPostal
    );
  }
); //TODO: ESTE METODO QUEDARA DEPRECADO CON LA VERSION MVP DE KEYCLOAK

Given("^voy a google$", () => {
  DriverActions.get("https://www.google.com.ar");
});

Then("^se visualiza listado de dispositivos vinculados$", () => {});

And("^accedo por magic link con mail (.*)$", mail => {
  magicLink =
    process.env("magicLinkBaseUrl") +
    "/link-account?token=" +
    getActionToken(mail);
  console.log("LINKING WITH MAGIC LINK: " + magicLink);
  DriverActions.get(magicLink);
});

And(
  "^accedo a la app por magic link con mail (.*) y contraseña (.*)$",
  (mail, pass) => {
    try {
      magicLink = MailHandler.getLinkAccountMagicLink(
        CommonPage.addSquadToEmailAddress(mail),
        pass
      );
      console.log("VINCULANDO CON MAGIC LINK: " + magicLink);
      DriverActions.get(magicLink);
    } catch (e) {
      assert.fail(e.getMessage());
    }
  }
);
