const DEFAULT_TIMEOUT = 601000;

export default class AppScreen {
  constructor(selector) {
    this.selector = selector;
  }

  waitForIsShown(isShown = true) {
    return $(this.selector).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
  }
}
