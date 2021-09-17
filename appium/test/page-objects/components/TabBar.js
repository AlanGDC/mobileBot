const selectors = {
  homePagos: "//*[@text='PAGOS']",
  pagarVariosServicios: "~Pagar varios servicios",
  seleccionarTodos: "~Seleccionar todos",
  nuevoPago: "//android.view.ViewGroup[@content-desc='Nuevo pago']/android.view.ViewGroup/android.view.View",
  pagar: "//android.view.ViewGroup[@content-desc='Pagar']/android.view.ViewGroup/android.view.View",
  finalizar: "~Finalizar"
};
const DEFAULT_TIMEOUT = 601000;

class TabBar {
  goToHome(isShown = true) {
    $(selectors.homePagos).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    $(selectors.homePagos).click();
    
  }

  goToPagarVariosServicios(isShown = true) {
    $(selectors.pagarVariosServicios).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    $(selectors.pagarVariosServicios).click();
  }

  goToSeleccionarTod(isShown = true) {
    $(selectors.seleccionarTodos).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    $(selectors.seleccionarTodos).click();
  }

  goToNuevoPago(isShown = true) {
    $(selectors.nuevoPago).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    $(selectors.nuevoPago).click();

    $(selectors.pagar).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    $(selectors.pagar).click();
  }

  goToFinalizar(isShown = true) {
    $(selectors.finalizar).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    $(selectors.finalizar).click();
  }
}

export default new TabBar();
