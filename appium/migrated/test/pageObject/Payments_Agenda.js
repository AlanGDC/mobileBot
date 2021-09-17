import { Given, When, Then } from "cucumber";
import { expect } from "chai";

class Payments_Agenda extends CommonPage {
  shortcutPagarServicioAgendado = $("~Pagar servicio agendado");
  serviciosConVencimiento = $("~Servicios con Vencimiento");
  botonContinuar = $("~Continuar");
  monto_a_pagar = $("~Ingresa el monto a pagar");
  no_tiene_vencimientos_pendientes = $(
    "~No tenés servicios informados para este servicio"
  );

  usuario_selecciona_shortcut_Pagar_Servicio_Agendado() {
    this.shortcutPagarServicioAgendado.click();
  }

  sistema_muestra_servicios_agendados() {
    serviciosConVencimiento.waitForDisplayed();
  }

  usuario_selecciona_servicio_con_vencimiento(alias, empresa) {
    $(alias + " " + empresa).click();
  }

  sistema_redirige_al_usuario_al_flujo_de_pago_bajo() {
    botonContinuar.waitForDisplayed();
  }

  sistema_muestra_monto_predeterminado() {
    monto_a_pagar.waitForDisplayed();
  }

  usuario_completa_pago() {
    this.botonContinuar.click();
  }

  sistema_indica_no_tiene_vencimientos_pendientes() {
    no_tiene_vencimientos_pendientes.waitForDisplayed();
  }

  sistema_indica_tiene_vencimientos_pendientes() {
    botonContinuar.waitForDisplayed();
  }
}
