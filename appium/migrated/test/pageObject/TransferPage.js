import { Given, When, Then } from "cucumber";
import { expect } from "chai";

class TransferPage extends CommonPage {
  botonNuevaTransferencia = $("~nueva transferencia");
  botonTransferir = $("~Transferir");
  botonAgregarContacto = $("~Agregar Contacto");
  tabTransferencias = $("~tabTransferencias");
  textCbu = $("~campo de texto");
  botonsiguiente = $("~Boton Siguiente");
  btnSiguiente = $("~Siguiente");
  ingresarMonto = $("~Ingresar monto");
  btnBackToTransfer = $(
    "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup"
  );
  confirmarTx = $("~transferir botón");
  mensajeExito = $("~Transferencia Realizada");
  verComprobante = $("~Boton Ver Comprobante");
  aliasInvalido = $("~Alias Invalido");
  consultaCuentas = $("~Boton Cuentas");
  cuenta = $("~Cuenta");
  favorito1 = $("~Contacto Favorito 1");
  favorito2 = $("~Contacto Favorito 2");
  favorito3 = $("~Contacto Favorito 3");
  favorito4 = $("~Contacto Favorito 4");

  //datos destinatario
  nombreTitular = $("~Titular");
  cuilDestinatario = $("~cuit");
  bancoDestinatario = $("~Banco");
  accountTypeDestinatario = $("~Numera cuenta");
  accountNumberDestinatario = $("~Tipo cuenta");

  clickOnNewTransfer() {
    this.botonTransferir.click();
  }

  //    @Step
  //    clickOnNewTransfer() {
  //       this.botonNuevaTransferencia.click();
  //    }

  fillAlias(alias) {
    // TODO Auto-generated method stub
    textCbu.waitUntilEnabled().click();
    textCbu.waitUntilEnabled().clear();
    textCbu.sendKeys(alias);
  }

  clickOnSiguiente() {
    this.botonsiguiente.click();
  }

  //	validarTipoCuentaDestinatario(tipo) {
  //		// TODO Auto-generated method stub
  //
  //		assertEquals(tipo, $("~tipo").getTextValue());
  //
  //	}

  ingresoMonto(monto) {
    $("~Siguiente").waitForClickable();
    AndroidAppiumDriver.getDriver().pressKey(new KeyEvent(AndroidKey.DIGIT_1));
    AndroidAppiumDriver.getDriver().pressKey(new KeyEvent(AndroidKey.DIGIT_0));
  }

  validoDatosTx(nombre, monto) {
    // TODO Auto-generated method stub
    assertEquals(nombre, nombreTitular.getText());
    assertEquals(monto, monto.getText());
  }

  descargarComprobante() {
    // TODO Auto-generated method stub
    this.verComprobante.click();
  }

  //	ingresarCbu(cbu) {
  //        try{
  //       this.textCbu.click();
  //        textCbu.sendKeys(cbu);
  //    }

  validarCuilDestinatario(cuil) {
    // TODO Auto-generated method stu

    assertEquals("CUIT: " + cuil, cuilDestinatario.getTextValue());
  }

  validarNombreDestinatario(nombre) {
    // TODO Auto-generated method stub
    AndroidAppiumDriver.getDriver().hideKeyboard();
    $("~nombre")
      .waitForDisplayed()
      .click();
  }

  validarBancoDestinatario(banco) {
    // TODO Auto-generated method stub

    $("~banco").waitForDisplayed();
  }

  validarNumeroCuentaDestinatario(numeroCuenta) {
    // TODO Auto-generated method stub

    assertEquals(numeroCuenta, accountNumberDestinatario.getTextValue());
  }
  //	validarNumeroCuentaDestinatario(numeroCuenta) {
  //	// TODO Auto-generated method stub
  //
  //	assertEquals(numeroCuenta, $("~numeroCuenta").getTextValue());
  //
  //}

  validarTipoCuentaDestinatario(tipoCuenta) {
    // TODO Auto-generated method stub

    assertEquals(tipoCuenta, $("~tipoCuenta").getTextValue());
  }

  //    ingresoMonto(monto) {
  //        // TODO Auto-generated method stub
  //        $("~Siguiente").waitForClickable();
  //        ingresarMonto.waitForClickable().click();
  //        estado = ingresarMonto.getAttribute("enabled");
  //        console.log("estado" + estado);
  //        AndroidAppiumDriver.getDriver().longPressKey(new KeyEvent(AndroidKey.DIGIT_1));
  //        ingresarMonto.sendKeys(monto);
  //    }

  confirmTx() {
    // TODO Auto-generated method stub
    this.confirmarTx.click();
  }

  validarTxExitosa() {
    // TODO Auto-generated method stub
    assertEquals("Transferencia Realizada", mensajeExito.getText());
  }

  ingresarCbu(cbu) {
    try {
      this.textCbu.click();
      textCbu.sendKeys(cbu);
    } catch (e) {
      textCbu.sendKeys(cbu);
    }
  }

  validarMensajeAliasInvalido(mensaje) {
    // TODO Auto-generated method stub
    assertEquals(mensaje, aliasInvalido.getText());
  }

  selectCc() {
    // TODO Auto-generated method stub
    this.consultaCuentas.click();
    this.cuenta.click();
  }

  clickContacto(contacto) {
    // TODO Auto-generated method stub
    $("~contacto").click();
  }

  validarTransferHomeEmptyState() {
    // TODO Auto-generated method stub
  }

  clickOnNextButtonOnAmmountView() {
    // TODO Auto-generated method stub
    this.btnSiguiente.click();
  }

  closeNativeKeyBoardIfPresent() {
    AndroidAppiumDriver.getDriver().hideKeyboard();

    //	AndroidAppiumDriver.getDriver().pressKey(new KeyEvent(AndroidKey.ENTER));
  }

  userPressBackToTransferBtn() {
    // TODO Auto-generated method stub
    this.btnBackToTransfer.click();
    this.btnBackToTransfer.click();
  }
}
