import { Given, When, Then } from "cucumber";
import { expect } from "chai";

Given("^el back end acepta registraciones$", () => {
  onboarding.setDeviceId();
  onboarding.setMagicLinkBaseUrl();
});

When("^el usuario intenta registrarse$", () => {
  onboarding.register();
});

And("^el usuario comienza el proceso$", () => {
  onboarding.understood();
});

And("^el usuario ingresa el correo (.*)$", mail => {
  enterEmail.enterMail(mail);
});

And("^el usuario confirma el correo$", () => {
  enterEmail.confirmEmail();
});

Then("^se informa que el email es invalido$", () => {
  enterEmail.showsInvalidMail();
});

And("^el usuario confirma el MagicLink con correo (.*)$", mail => {
  jwtHandler.getVerifyDeviceMagicLink(CommonPage.addSquadToEmailAddress(mail));
});

And("^el usuario acepta los requisitos de identificacion$", () => {
  onboarding.understood();
});

And("^el usuario saca una selfie$", () => {
  onboarding.takeSelfie();
});

Then("^se visualiza la selfie$", () => {
  onboarding.selfieIsShown();
});

And("^el usuario confirma la selfie$", () => {
  onboarding.confirmSelfie();
});

And("^el usuario acepta los requisitos de video$", () => {
  onboarding.confirmVideoRequirements();
});

And("^el usuario confirma el video$", () => {
  onboarding.confirmVideo();
});

And("^el usuario confirma los requisitos de la foto de DNI$", () => {
  onboarding.understood();
});

And("^el usuario espera (\\d+) minutos$", arg0 => {
  onboarding.waitForAppTimeout(arg0);
});

Then("^se visualiza la pantalla de inicio$", () => {
  onboarding.isOnWelcome();
});

And(
  "^el usuario confirma desde otro dispositivo el MagicLink con correo (.*)$",
  mail => {
    onboarding.setMagicLinkBaseUrl();
    jwtHandler.getLinkFromAnotherDeviceMagicLink(mail);
  }
);

Then("^se visualiza mensaje de dispositivo invalido$", () => {
  onboarding.showsInvalidDevice();
});

And("^el usuario saca la foto del frente del DNI$", () => {
  onboarding.takeDNIFrontPicture();
});

And("^ingresa un mail no registrado$", () => {
  randomNum = ThreadLocalRandom.current().nextInt(1, 1000 + 1);
  unregisteredEmail = "bdsolqe+" + randomNum + "@gmail.com";
  enterEmail.enterMail(unregisteredEmail);
  System.setProperty("unregisteredEmail", unregisteredEmail);
});

And("^el usuario visualiza mensaje de mail enviado$", () => {
  onboarding.emailSent();
});

And("^accede al MagicLink con mail no registrado$", () => {
  onboarding.accessUnregisteredMagicLink();
});

Given("^el usuario ingresa a la pantalla ayuda no loggeado$", () => {
  onboarding.pressHelpNoLoggin();
});

And("^la creacion no fue completada$", () => {
  uuid = UUID.randomUUID().toString();
  mail = "bdsolqe+" + uuid + "@gmail.com";
  System.setProperty("registeredEmail", mail);
});

Then(
  "^recibe un mail indicando que ya esta registrado con (.*) y password (.*)$",
  (mail, pass) => {
    try {
      MailHandler.getMailWithSubject(mail, pass, "Registro en BDS").contains(
        "Ya estás registrado"
      );
    } catch (e) {
      e.message;
    }
  }
);

And("^el usuario ingresa correo no registrado (.*)$", mail => {
  enterEmail.enterMail(CommonPage.randomizeMail(mail));
});
