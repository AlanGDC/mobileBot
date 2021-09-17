import { Given, When, Then } from "cucumber";
import { expect } from "chai";

class Payments_Recharges extends CommonPage {
  opcionFavorito = $("~ de "); //[Alias] de [Empresa]

  botonCelular = $("~Empresas de celular");
  botonTransporte = $("~Empresas de Transporte");
  botonTelevision = $("~Empresas de televisión");

  conteinerEmpresa = $("~SUBE"); //container: [empresa]
  campoNroTarjeta = $("~campo de texto"); //Ingresa el [code type]

  botonImporte = $("~Recargar 150"); // Recargar [monto]
  botonContinuar = $("~Continuar");

  botonPagar = $("~Pagar"); // Recargar [monto]

  textoEmpresaPesos = $("~Vas a pagar a [empresa] [N] pesos"); // "Vas a pagar a [empresa] [N] pesos"

  textoDesde = $("~Desde tu caja de ahorro finalizada en [4 dígitos finales]"); // Desde tu caja de ahorro finalizada en [4 dígitos finales]
  textoCodRecarga = $("~[Code type] code type"); //[Code type] code type

  textoAlias = $("~[Alias] alias"); //[Alias] alias
  botonConfirmar = $("~Confirmar"); //[Alias] alias

  usuario_selecciona_Recarga_Transporte() {
    this.botonTransporte.click();
  }

  usuario_selecciona_empresa(empresa) {
    this.conteinerEmpresa.click();
  }

  usuario_ingresa_nro_de_tarjeta(nroTarj) {
    this.campoNroTarjeta.click();
    campoNroTarjeta.sendKeys(nroTarj);
  }

  usuario_presiona_continuar() {
    this.botonContinuar.click();
  }

  usuario_selecciona_importe(importe) {
    this.botonImporte.click();
  }

  usuario_presiona_Pagar() {
    this.botonPagar.click();
  }

  sistema_presenta_mensaje_Recarga_Efectuada() {}

  sistema_presenta_nro_tarjeta_en_Recientes(nroTarjeta) {}
}
