import AppScreen from "../App.screen";

const SELECTORS = {
  ACTIVITIES_SCREEN: "~actividades"
};

class Activities extends AppScreen {
  constructor() {
    super(SELECTORS.ACTIVITIES_SCREEN);
  }
}

export default new Activities();
