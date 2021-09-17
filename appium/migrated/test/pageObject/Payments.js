import { Given, When, Then } from "cucumber";
import { expect } from "chai";

class Payments extends CommonPage {
  PAYMENTS_TAB = $("~PAYMENTS_TAB");

  // User acction
  usuario_accede_a_pagos() {
    try {
      Thread.sleep(45000);
    } catch (e) {
      console.log(e.message);
    }

    this.PAYMENTS_TAB.click();
  }

  usuario_presiona_Boton_Volver_Atras() {
    AndroidAppiumDriver.getDriver().pressKey(new KeyEvent(AndroidKey.BACK));
  }

  usuario_selecciona(opcion) {
    try {
      Thread.sleep(2000);
    } catch (e) {
      console.log(e.message);
    }
    boton = "~opcion";
    boton.waitForDisplayed();
    AndroidAppiumDriver.getDriver()
      .findElement("~opcion")
      .click();
  }

  usuario_completa_el_campo(campo, valor) {
    field = "~campo";
    field.waitForDisplayed();

    AndroidAppiumDriver.getDriver()
      .findElement("~campo")
      .clear();

    field.sendKeys(valor);
  }

  usuario_presiona_borrar(veces) {
    try {
      Thread.sleep(3000);
    } catch (e) {
      console.log(e.message);
    }
    AndroidAppiumDriver.getDriver().getKeyboard();

    for (i = 0; i < veces; ++i) {
      AndroidAppiumDriver.getDriver().pressKey(new KeyEvent(AndroidKey.DEL));
    }
  }

  usuario_esconde_teclado() {
    AndroidAppiumDriver.getDriver().hideKeyboard();
  }

  // System validations
  sistema_indica(mensaje) {
    boton = "~mensaje";
    boton.waitForDisplayed();
  }

  sistema_no_muestra_el_valor(valor) {
    field = "~valor";
    field.waitUntilNotVisible();
  }

  sistema_deshabilita_boton(botonLabel) {
    boton = "~botonLabel";

    try {
      Thread.sleep(2000);
    } catch (e) {
      console.log(e.message);
    }
  }

  sistema_muestra_elemento_con_texto(elemento, texto) {
    element = "~elemento";
    element.waitUntilPresent();

    textoElement = element.getText();

    Assert.assertEquals(texto, textoElement);
  }
}
