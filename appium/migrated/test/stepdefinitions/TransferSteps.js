import { Given, When, Then } from "cucumber";
import { expect } from "chai";

Given("^el usuario accede a transferencias$", () => {
  home.clickOntranfer();
});

And("^hace click en Nueva Transferencia$", () => {
  transferpage.clickOnNewTransfer();
});

And("^ingresa el alias (.*)$", alias => {
  transferpage.fillAlias(alias);
});

And("^hace click en siguiente$", () => {
  transferpage.clickOnSiguiente();
});

And("^valida cuil destinatario (.*)$", cuil => {
  transferpage.validarCuilDestinatario(cuil);
});

And("^valida nombre destinatario (.*)$", nombre => {
  transferpage.validarNombreDestinatario(nombre);
});

And("^valida banco destinatario (.*)$", banco => {
  transferpage.validarBancoDestinatario(banco);
});

And("^valida numero cuenta destinatario (.*)$", numero => {
  transferpage.validarNumeroCuentaDestinatario(numero);
});

And("^valida tipo cuenta destinatario (.*)$", tipo => {
  transferpage.validarTipoCuentaDestinatario(tipo);
});

And("^ingresa el monto (.*)$", monto => {
  transferpage.ingresoMonto(monto);
});

And("^valido nombre (.*) monto (.*)$", (nombre, monto) => {
  transferpage.validoDatosTx(nombre, monto);
});

And("^confirma la transferencia$", () => {
  transferpage.confirmTx();
});

And(
  "^la transferencia se realiza exitosamente con motivo de transferencia varios$",
  () => {
    transferpage.validarTxExitosa();
  }
);

And("^puede ver el comprobante de transferencia$", () => {
  transferpage.descargarComprobante();
});

And("^ingresa el cbu (.*)$", cbu => {
  transferpage.ingresarCbu(cbu);
});

And("^se visualiza el mensaje (.*)$", mensaje => {
  transferpage.validarMensajeAliasInvalido(mensaje);
});

And("^selecciona cuenta corriente$", () => {
  transferpage.selectCc();
});

And("^selecciona contacto (.*)$", contacto => {
  transferpage.clickContacto(contacto);
});

Then("^visualiza la home de transferencias empty state$", () => {
  transferpage.validarTransferHomeEmptyState();
});

And("^hace click en siguiente view monto$", () => {
  transferpage.clickOnNextButtonOnAmmountView();
});

And("^cierra teclado si esta visible$", () => {
  transferpage.closeNativeKeyBoardIfPresent();
});

And("^presiona botón Volver a Transferencias$", () => {
  transferpage.userPressBackToTransferBtn();
});
