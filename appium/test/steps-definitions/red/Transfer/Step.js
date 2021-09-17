import { When, Then, Given } from "cucumber";
import { expect } from "chai";
import TransferHome from "../../../page-objects/TransfersHome/Transfer";
import Home from "../../../page-objects/Home/Screen";
import TabBar from "../../../page-objects/components/TabBar";

Given("a logged user is on Home transfers", () => {
  Home.waitForIsShown();
  TabBar.goToTransfers();
});

Then("a user saw a empty screen", () => {
  TransferHome.waitForIsShown();
  expect(TransferHome.emptyLabel.isDisplayed()).to.be(true);
});
