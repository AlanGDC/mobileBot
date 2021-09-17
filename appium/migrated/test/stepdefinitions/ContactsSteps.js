import { Given, When, Then } from "cucumber";
import { expect } from "chai";

//MICROSERVCIOS CONTACTS
And(
  "^Existe un usuario (.*) y passcode (.*) con Contactos cargados$",
  (mail, passcode) => {
    contacts.getContacts(mail, passcode);
  }
);

And(
  "^existe usuario (.*) y passcode (.*) sin contactos en la agenda$",
  (mail, passcode) => {
    contacts.deleteAllContacts(mail, passcode);
  }
);

//GetOwnerData View

And("hace click en siguiente flow agregar contacto$", () => {
  contacts.clickOnbtnNextOnNewContactFlow();
});

//Transfer View

And("^el usuario ingresa en detalle de una cuenta$", () => {
  contacts.userOpenAccountDetail();
});

And("^el usuario hace click en boton transferir$", () => {
  contacts.userClickOnTransferButton();
});

When("^el usuario selecciona Ver Agenda$", () => {
  contacts.clickOnVerAgenda();
});

And("^visualiza el contacto (.*) en la posicion 1$", nombreContacto => {
  contacts.userSeeContact(nombreContacto);
});

And("^presiona el boton Agregar un contacto$", () => {
  contacts.clickOnAddContact();
});

And("^usuario regresa a ver la agenda$", () => {
  contacts.userIsOnAgendaView();
});

And("^el usuario ve la home de transferencias$", () => {
  contacts.userSeeTransferHome();
});

//Agenda View
And("^visualiza el nuevo contacto (.*) en la agenda", name => {
  contacts.checkNewContactoOnAgendaView(name);
});

And("^presiona el boton Agregar un contacto en la vista agenda$", () => {
  contacts.clickAddContactButtonInAgendaView();
});

//Modal Consulta Titularidad

And("^completa el campo (.*)$", account => {
  contacts.userFillAliasCvuCbuField(account);
});

Then("^valida (.*) del nuevo contacto en modal consulta titularidad$", name => {
  contacts.userCheckNameOfContact(name);
});

And("^valida el banco (.*) en modal consulta titularidad$", bank => {
  contacts.userCheckBankName(bank);
});

And("^valida el cuil (.*) en modal consulta titularidad$", cuil => {
  contacts.userCheckCuilOfContact(cuil);
});

And(
  "^valida el tipo de cuenta (.*) en modal consulta titularidad$",
  accountType => {
    contacts.userCheckAccountType(accountType);
  }
);

And("^valida el cbu (.*) en modal consulta titularidad$", cbu => {
  contacts.userCheckCbu(cbu);
});

And("^presiona botón volver en modal consulta titularidad$", () => {
  contacts.userClickBackButton();
});

And("^hace click en siguiente modal consulta titularidad$", () => {
  contacts.userClickNextButton();
});
//confirmation view new Contact

Then(
  "^valida el nombre (.*) del nuevo contacto en pantalla confimación$",
  name => {
    contacts.userCheckNameOfContact(name);
  }
);

And("^valida el banco (.*) en pantalla confimación$", bank => {
  contacts.userCheckBankName(bank);
});

And("^valida el cuil (.*) en pantalla confimación$", cuil => {
  contacts.userCheckCuilOfContactOnConfirmationView(cuil);
});

And("^valida el tipo de cuenta (.*) en pantalla confimación$", accountType => {
  contacts.userCheckAccountType(accountType);
});

And("^valida el cbu (.*) en pantalla confimación$", cbu => {
  contacts.userCheckCbu(cbu);
});

And("^presion botón Agendar Contacto$", () => {
  contacts.userConfirmAddContact();
});
//Success View

And("^el usuario ve pantalla Contacto Agregado$", () => {
  contacts.userSeeSuccessScreen();
});

And("^presiona botón Finalizar$", () => {
  contacts.userClickFinishButton();
});

//Contact Detail View

And("^presiona boton eliminar$", () => {
  contacts.userClickDeleteButton();
});

And("^hace click en Editar descripción$", () => {
  contacts.userClickEditNicknameButton();
});

And("^modifica nickname (.*) del contacto$", nickname => {
  contacts.userFillDescriptionTextField(nickname);
});

And("^modifica nickname JHONLOVESHERPA del contacto$", () => {
  contacts.userFillAliasError();
});

And(
  "^el usuario no puede ingresar el caracter P por superar los 12 maximos$",
  () => {
    contacts.userValidateCampoDeTextAlias();
  }
);

And("^presiona guardar para grabar el nuevo nickname$", () => {
  contacts.userClickSaveButton();
});

And(
  "^el usuario ve el nickname (.*) nuevo en el detalle del contacto",
  nickname => {
    contacts.userSeeNewNickname(nickname);
  }
);

And("^el usuario ve modal (.*)$", mensaje => {
  contacts.userSeeMessageToConfirmDeleteAction(mensaje);
});

And("^visualiza el mensaje (.*)$", mensaje => {
  contacts.usersSeeMessageDeleteSuccess(mensaje);
});

And("^valida que la cuenta se elimino correctamente (.*)$", banco => {
  contacts.userCheckAccountDeleted(banco);
});

And("^el usuario ve mensaje de error al guardar nickname (.*)$", mensaje => {
  contacts.userSeeToastErrorSavingNickname(mensaje);
});

And("^el boton CBU copia al portapapeles el (.*) correcto$", cbu => {
  contacts.userCheckClipboardCbuBotonOnContactDetailOpenCard(cbu);
});

And("^estas visible el boton (.*)$", boton => {
  contacts.userCheckButtonOnContactDetailOpenCard(boton);
});

And(
  "^la app va directo a la agenda y el usuario confirma que tambien se elimino el contacto$",
  nombre => {
    contacts.userCheckContactWasDeletedOnAgenda(nombre);
  }
);

And("^presiona boton (.*)$", button => {
  contacts.userButtonClickAction(button);
});

And("^el usuario ingresa en detalle de una cuenta <cuenta>$", () => {
  contacts.userClickOnSeeActionDetails();
});

And("^regresa a vista del contacto visualizando mensaje (.*)$", message => {
  contacts.userSeeAccounDeletedMessageConfirmation(message);
});

And("^el usuario ve toast (.*)$", toast => {
  contacts.userSeeToast(toast);
});
