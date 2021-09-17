@LoginOnboarding @Cyan
Feature: Login

  @Issue:BDSD-600
  Scenario Outline: Validacion al ingresar correo para iniciar sesion
    When el usuario ingresa a Iniciar Sesion
    Then el usuario acepta los requisitos de vinculacion
    Then el usuario ingresa el correo <email>
    Then el usuario confirma el correo
    Then se informa que el email es invalido

    Examples:
      | email                |
      | email@gmail          |
      | emailInvalido@sitio. |


  Scenario Outline: Validacion al ingresar correo para registro
    When el usuario comienza el registro
    Then el usuario acepta los requisitos de identificacion
    Then ingresa el DNI 36696108
    Then el usuario ingresa el correo <email>
    Then el usuario confirma el correo
    Then se informa que el email es invalido

    Examples:
      | email                |
      | email@gmail          |
      | emailInvalido@sitio. |
