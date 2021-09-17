import AppScreen from "../App.screen";

const SELECTORS = {
  HOME_TRANSFERS: "~TransferHome",
  EMPTY_LABEL_TRANSFER: "~Comenza hacer transferencias"
};

class TransferHome extends AppScreen {
  constructor() {
    super(SELECTORS.HOME_TRANSFERS);
  }

  get emptyLabel() {
    return $(SELECTORS.EMPTY_LABEL_TRANSFER);
  }
}

export default new TransferHome();
