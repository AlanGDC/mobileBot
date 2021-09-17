@TestLoginLogin @Cyan
Feature: Login

  Background:
  # Given existe el usuario bdsolqe@gmail.com
  # Then el usuario ingresa a la pantalla de login

  # Scenario: Se realiza un login exitoso
  #     Then ingresa el passcode 192837
  #     Then se visualiza la home

  Scenario: Login and logout with an existing user
    Given an user who is on "WelcomeScreen.homeScreen"
    Then user tap on "WelcomeScreen.loginButton"
    Then user tap on "WelcomeScreen.linkInfoAcceptButton"
    Then set "dralde@bdsol.com.ar" on "WelcomeScreen.emailInput"
    Then user tap on "WelcomeScreen.continueButton"
    Then user is on "WelcomeScreen.emailSentSuccessfully"
    # Then reset the app
    Then open email login link sended to "dralde@bdsol.com.ar"
    Then user is on "LoginScreen.homeScreen"
    When enter passcode "999888"
    Then user is on "ActivitiesScreen"
