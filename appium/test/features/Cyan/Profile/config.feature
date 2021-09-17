@ProfileConfig @Cyan
Feature: Configuracion de cuenta

  Background:
    Given existe el usuario bdsolqe@gmail.com
    When la passcode del usuario bdsolqe@gmail.com es 192837
    Then el usuario ingresa a la pantalla de login
    Then ingresa el passcode 192837
    Then se visualiza la home
    Then navega a perfil
    Then accede a configuracion

  @Issue:BDSD-872
  Scenario: Cambio de clave numerica si no cumple las condiciones
    When intenta cambiar la clave numerica
    Then ingresa el passcode 192837
    Then avanza a pantalla de creacion de nueva clave
    Then ingresa el passcode 123456
    Then no avanza a confirmacion de clave
    Then ingresa el passcode 654321
    Then no avanza a confirmacion de clave
    Then ingresa el passcode 111100
    Then no avanza a confirmacion de clave
    Then ingresa el passcode 128899
    Then no avanza a confirmacion de clave
    Then ingresa el passcode 366961
    Then no avanza a confirmacion de clave

  @Issue:BDSD-873
  Scenario: Desvinculacion de dispositivo
    When intenta desvincular el dispositivo
    Then el usuario confirma la desvinculacion
    Then el dispositivo se desvincula

  @Issue:BDSD-881
  Scenario: Intentar baja de cuenta y arrepentirse
    When se intenta dar de baja la cuenta
    Then se cancela la baja
    Then se visualiza el perfil

  @Issue:BDSD-872
  Scenario: Cambio de clave numerica correctamente
    When intenta cambiar la clave numerica
    Then ingresa el passcode 192837
    Then ingresa el passcode 918273
    Then ingresa el passcode 918273
    Then se valida el cambio de clave
    Then se visualiza el perfil

