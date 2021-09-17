@Profile @Cyan
Feature: Perfil

  Background:
    Given existe el usuario bdsolqe@gmail.com
    Then el usuario bdsolqe@gmail.com no declaro su estado civil
    Then el usuario ingresa a la pantalla de login
    Then ingresa el passcode 192837
    Then se visualiza la home

  @Issue:BDSD-2955
  Scenario Outline: Seleccion de estado civil al ingresar al perfil
    Then navega a perfil
    Then se le solicita su estado civil
    Then selecciona estado civil <estadocivil>
    Then el usuario finaliza la configuracion
    Then se visualiza el estado civil <estadocivil> en perfil

    Examples:
      | estadocivil         |
      | Soltero/a           |
      | Casado/a            |
      | Divorciado/a        |
      | Unión convivencial  |
      | Viudo/a             |
      | Separado/a de hecho |
      | Otro                |



