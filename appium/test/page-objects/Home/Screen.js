import AppScreen from "../App.screen";

const SELECTORS = {
  // HOME: "//*[@text='PAGOS']"
  HOME: "~Boton Login"
};

class Home extends AppScreen {
  constructor() {
    super(SELECTORS.HOME);
  }
}

export default new Home();
