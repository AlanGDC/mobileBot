Feature: TNA on account activity
  Background: Background name
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  sistema muestra Xpath //*[contains(@text,'CUENTA')]

  Scenario: Scenario name
    Given sistema indica Inicio banco del sol
    When usuario presiona Xpath //*[contains(@text,'CUENTA')]
    Then  sistema indica Tasa anual remunerada

