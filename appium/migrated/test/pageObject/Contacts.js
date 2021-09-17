import { Given, When, Then } from "cucumber";
import { expect } from "chai";

class Contacts extends PageObject {
  tapActionDetails = $("~Ver detalle de acciónes");
  transferButton = $("~Boton Transferir");
  contacto1 = $("~Contacto");
  linkVerAgenda = $("~Ver Agenda");
  addContactButton = $("~Agregar\nContacto");
  addContactButtonAgendaView = $("~Agregar un contacto");
  cbuAliasCvuTextField = $("~campo de texto");
  nextAmountView = $("=SIGUIENTE");
  btnNextCbuView = $("~Siguiente");

  //Modal consulta Titularidad
  //    contactName = $("~Nombre de Contacto");
  //    contactCuil = $("~cuil");
  //    contactBank = $("~Nombre Banco");
  //    contactCbu = $("~CBU");
  //    contactAccountType = $("~Tipo de Cuenta");

  //Pantala confirmacion contacto

  confirmContactButton = $("~Agendar contacto");

  //Pantalla Success
  successMessage = $("~Agendar Contacto");
  finishButton = $("~Finalizar");

  userOpenAccountDetail() {
    // TODO Auto-generated method stub
    this.tapActionDetails.click();
  }

  userClickOnTransferButton() {
    // TODO Auto-generated method stub
    this.transferButton.click();
  }

  userSeeContact(nombreContacto) {
    // TODO Auto-generated method stub
    assertEquals(nombreContacto, contacto1.getText());
  }

  clickOnVerAgenda() {
    // TODO Auto-generated method stub

    this.linkVerAgenda.click();
  }

  clickOnAddContact() {
    // TODO Auto-generated method stub

    this.addContactButton.click();
  }

  //View Consulta Titularidad

  userFillAliasCvuCbuField(account) {
    // TODO Auto-generated method stub
    try {
      cbuAliasCvuTextField.sendKeys(account);
    } catch (e) {
      userFillAliasCvuCbuField(account);
    }
    //cbuAliasCvuTextField.waitUntilEnabled();
    //cbuAliasCvuTextField.sendKeys(account);
  }

  userCheckNameOfContact(name) {
    // TODO Auto-generated method stub
    $("~name").isVisible();
  }

  userCheckCuilOfContact(cuil) {
    // TODO Auto-generated method stub
    assertEquals("CUIT: " + cuil, $("~cuit").getText());
    //label cuit
  }

  userCheckBankName(bank) {
    // TODO Auto-generated method stub
    $("~bank").isVisible();
  }

  userCheckAccountType(accountType) {
    // TODO Auto-generated method stub
    $("~accountType").isVisible();
  }

  userCheckCbu(cbu) {
    // TODO Auto-generated method stub
    assertEquals("Nº " + cbu, $("~cbu").getText());
  }

  userConfirmAddContact() {
    // TODO Auto-generated method stub
    this.confirmContactButton.click();
  }

  //Succes view

  userSeeSuccessScreen() {
    // TODO Auto-generated method stub
    successMessage.isVisible();
  }

  userClickFinishButton() {
    this.finishButton.click();
  }

  //Agenda View
  checkNewContactoOnAgendaView(name) {
    // TODO Auto-generated method stub
    $("~name").waitForDisplayed();
  }

  userClickBackButton() {
    // TODO Auto-generated method stub
    $("~Volver").click();
  }

  userClickNextButton() {
    // TODO Auto-generated method stub
    btnNextCbuView.waitForClickable().click();
    //$("~Siguiente").click();
  }

  userClickDeleteButton() {
    // TODO Auto-gnerated method stub
    $("~Eliminar").click();
  }

  userSeeTransferHome() {
    // TODO Auto-generated method stub
    linkVerAgenda.isVisible();
  }

  //CONTACT DETAIL VIEW
  userClickEditNicknameButton() {
    // TODO Auto-generated method stub
    $("~Editar").click();
  }

  userFillDescriptionTextField(nickname) {
    // TODO Auto-generated method stub
    $("~campo de texto").clear();
    $("~campo de texto").sendKeys(nickname);
  }

  userClickSaveButton() {
    // TODO Auto-generated method stub
    $("~Aceptar").click();
  }

  userSeeNewNickname(nickname) {
    // TODO Auto-generated method stub
    assertEquals(nickname, $("~nickname").getText());
  }

  clickAddContactButtonInAgendaView() {
    // TODO Auto-generated method stub
    this.addContactButtonAgendaView.click();
  }

  userSeeMessageToConfirmDeleteAction(mensaje) {
    // TODO Auto-generated method stub
    assertEquals(mensaje, $("~mensaje").getText());
  }

  usersSeeMessageDeleteSuccess(mensaje) {
    // TODO Auto-generated method stub
    assertEquals(mensaje, $("~mensaje").getText());
  }

  userCheckAccountDeleted(banco) {
    // TODO Auto-generated method stub
    $("~banco").shouldNotBePresent();
  }

  userSeeToastErrorSavingNickname(mensaje) {
    // TODO Auto-generated method stub
    assertEquals(mensaje, $("~mensaje").getText());
  }

  userFillAliasError() {
    // TODO Auto-generated method stub
    $("~campo de texto").clear();
    $("~campo de texto").sendKeys("J");
    $("~campo de texto").sendKeys("H");
    $("~campo de texto").sendKeys("O");
    $("~campo de texto").sendKeys("N");
    $("~campo de texto").sendKeys("L");
    $("~campo de texto").sendKeys("O");
    $("~campo de texto").sendKeys("V");
    $("~campo de texto").sendKeys("V");
    $("~campo de texto").sendKeys("E");
    $("~campo de texto").sendKeys("S");
    $("~campo de texto").sendKeys("H");
    $("~campo de texto").sendKeys("E");
    $("~campo de texto").sendKeys("R");
  }

  userValidateCampoDeTextAlias() {
    // TODO Auto-generated method stub
    assertEquals("JHONLOVESHER", $("~campo de texto").getText());
  }

  userCheckClipboardCbuBotonOnContactDetailOpenCard(cbu) {
    // TODO Auto-generated method stub
    clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
    $("~Copiar datos").click();
    assertEquals(cbu, clipboard.getContents(clipboard));
  }

  userCheckButtonOnContactDetailOpenCard(boton) {
    // TODO Auto-generated method stub
    $("~boton").isEnabled();
  }

  userCheckContactWasDeletedOnAgenda(nombre) {
    // TODO Auto-generated method stub
    $("~nombre").shouldNotBePresent();
  }

  userButtonClickAction(button) {
    // TODO Auto-generated method stub
    $("~button").click();
  }

  userSeeAccounDeletedMessageConfirmation(message) {
    // TODO Auto-generated method stub
    $("~message").isVisible();
  }

  userClickOnSeeActionDetails() {
    // TODO Auto-generated method stub
    this.tapActionDetails.click();
  }

  getContacts(mail, passcode) {
    // TODO Auto-generated method stub

    AgendaService.getContactsList(AgendaService.getToken(mail, passcode));
  }

  deleteAllContacts(mail, passcode) {
    // TODO Auto-generated method stub
    token = AgendaService.getToken(mail, passcode);
    lista = AgendaService.getContactsList(token);
    AgendaService.deleteAllContacts(token, lista);
  }

  userSeeToast(toast) {
    // TODO Auto-generated method stub
    $("~toast").isVisible();
  }

  userIsOnAgendaView() {
    // TODO Auto-generated method stub
    addContactButtonAgendaView.waitUntilEnabled();
  }

  clickOnbtnNextOnNewContactFlow() {
    // TODO Auto-generated method stub
    btnNextCbuView.waitForClickable().click();
  }

  userCheckCuilOfContactOnConfirmationView(cuil) {
    // TODO Auto-generated method stub
    assertEquals("CUIL: " + cuil, $("~CUIL ").getText());
    //label cuit
  }
}
