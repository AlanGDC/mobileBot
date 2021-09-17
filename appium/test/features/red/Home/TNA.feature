@Red @Tna

Feature: TNA
  Background: Background name
    Given an user who is on "LoginScreen.homeScreen"
    When enter passcode "888000"

  @BDSD-7373
  Scenario: As a user i want to see my tna percent on home screen
    Given an user who is on "HomeScreen.home"
    Then user wait to see "HomeScreen.loading"
    Then user wait to see "HomeScreen.tna"

  Scenario: As a user i want to see information of tna on modal screen
    Given an user who is on "HomeScreen.home"
    When user tap on "HomeScreen.tna"
    Then user wait to see "HomeScreen.modalTnaOneStep"
    When user tap on "HomeScreen.modalTnaClose"
    Then user wait to see "HomeScreen.home"

  Scenario: As a user i want to see information of tna on modal screen
    Given an user who is on "HomeScreen.home"
    When user tap on "HomeScreen.tna"
    Then user wait to see "HomeScreen.modalTnaOneStep"
    Then user wait to see "HomeScreen.modalTnaTwoStep"
    When user tap on "HomeScreen.modalTnaClose"
    Then user wait to see "HomeScreen.home"

  Scenario: As a user i want to see information of tna on modal screen
    Given an user who is on "HomeScreen.home"
    When user tap on "HomeScreen.tna"
    Then user wait to see "HomeScreen.modalTnaOneStep"
    Then user wait to see "HomeScreen.modalTnaTwoStep"
    Then user wait to see "HomeScreen.modalTnaThreeStep"
    When user tap on "HomeScreen.modalTnaClose"
    Then user wait to see "HomeScreen.home"

  Scenario: As a user i want to see information of tna on modal screen
    Given an user who is on "HomeScreen.home"
    When user tap on "HomeScreen.tna"
    Then user wait to see "HomeScreen.modalTnaOneStep"
    Then user wait to see "HomeScreen.modalTnaTwoStep"
    Then user wait to see "HomeScreen.modalTnaThreeStep"
    Then user wait to see "HomeScreen.modalTnaFourStep"
    When user tap on "HomeScreen.modalTnaClose"
    Then user wait to see "HomeScreen.home"
