import { Given, When, Then } from "cucumber";
import { expect } from "chai";
import Chat from "../pageObject/Chat";

When(/^el usuario tapea el chat$/, () => {
  Chat.pressButtonChat();
});

When(/^tap the info button with "(.*?)" as accessibilityId$/, idButton => {
  VirtualCard.clickInfoVirtualCard();
});

// And("^el usuario visualiza un mensaje de confirmacion y eliminacion de los mensajes$", () => {
//     Chat.validateMessage();
// }

// And("^el usuario selecciona si$", () => {
//     Chat.pressButtonYes();
// }

// Then("^el usuario no visualiza la conversacion$", () => {
//     Chat.validateConversation();
// }

// And("^el usuario selecciona no$", () => {
//     Chat.pressButtonNo();
// }

// And("^el usuario visualiza la pantalla del chat$", () => {
//     Chat.validateChatScreen();
// }

// When("^el usuario escribe un mensaje$", () => {
//     Chat.inputMessageChat();
// }

// Then("^el usuario visualiza un mensaje con el horario en el que lo envio$", () => {
//     Chat.validateHour();
// }

// And("^el usuario visualiza el boton de enviar$", () => {
//     Chat.validateButtonSend();
// }

// Then("^el usuario envia el mensaje$", () => {
//     Chat.sendValueChat();
// }

// Then("^el usuario visualiza pantalla de empty state$", () => {
//     Chat.validateEmptyState();
// }

// Then("^el usuario visualiza un aviso de historial guardado$", () => {
//     Chat.validateSaveHistory();
// }
