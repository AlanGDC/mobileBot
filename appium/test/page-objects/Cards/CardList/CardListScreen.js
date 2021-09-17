import AppScreen from "../../App.screen";

const SELECTORS = {
  CARD_LIST_SCREEN: "~Tarjetas",
  GET_CARDS_ERROR: "~getcardserror"
};

class VirtualCard extends AppScreen {
  constructor() {
    super(SELECTORS.CARD_LIST_SCREEN);
  }

  get errorComponent() {
    return $(SELECTORS.GET_CARDS_ERROR);
  }
}

export default new VirtualCard();
