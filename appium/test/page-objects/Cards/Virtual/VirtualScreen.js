import AppScreen from "../../App.screen";

const SELECTORS = {
  INFO_VIRTUAL_CARD: "~information",
  TOAST_ERROR_CARD: "~Reintentar"
};

class VirtualCard extends AppScreen {
  constructor() {
    super(SELECTORS.VIRTUAL_SCREEN);
  }

  get infoCard() {
    return $(SELECTORS.INFO_VIRTUAL_CARD);
  }

  get toastError() {
    return $(SELECTORS.TOAST_ERROR_CARD);
  }
}

export default new VirtualCard();
