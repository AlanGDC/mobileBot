import { When, Then, Given } from "cucumber";
import { expect } from "chai";
import VirtualCard from "../../../page-objects/Cards/Virtual/VirtualScreen";
import Home from "../../../page-objects/Home/Screen";
import TabBar from "../../../page-objects/components/TabBar";
import SplashScreen from "../../../page-objects/Splash/SplashScreen";

Given("The screen cardlist with virtual card active", () => {
  // SplashScreen.waitForIsShown();
  Home.waitForIsShown();
  TabBar.goToCards();
});

When("tap the info button with as accessibilityId", () => {
  VirtualCard.infoCard.click();
});

Then("I want to see an error", () => {
  browser.waitUntil(() => VirtualCard.toastError.isDisplayed());
});
