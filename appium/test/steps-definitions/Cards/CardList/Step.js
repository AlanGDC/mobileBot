import { Then, Given} from "cucumber";
import { expect } from "chai";
import CardList from "../../../page-objects/Cards/CardList/CardListScreen";
import Home from "../../../page-objects/Home/Screen";
import TabBar from "../../../page-objects/components/TabBar";
import SplashScreen from "../../../page-objects/Splash/SplashScreen";

Given("The screen cardlist with physical card not requested", () => {
  // SplashScreen.waitForIsShown();
  Home.waitForIsShown();
  // TabBar.goToHome();
});

Then("paso dos", () => {
  TabBar.goToPagarVariosServicios();
});

Then("paso tres", () => {
  TabBar.goToSeleccionarTod();
});

Then("paso cuatro", () => {
  TabBar.goToNuevoPago();
});

Then("paso cinco", () => {
  TabBar.goToFinalizar();
});



Then("I want to see an error", () => {
  expect(CardList.errorComponent.isDisplayed()).to.be(true);
});

