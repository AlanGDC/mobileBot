@BDSD-7373_Cuenta_Remunerada_modal
Feature: PaidAccount
Background: Background name
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  sistema indica Inicio banco del sol

    Scenario: User see the rate of his paid account
        Given sistema indica Inicio banco del sol
        Then  sistema indica Taza anual remunerada

    Scenario: User sees the first step the modal with information of his paid account
        Given sistema indica Inicio banco del sol
        Then  usuario selecciona Taza anual remunerada
        Then  sistema indica Caja de Ahorro Remunerada
        Then usuario selecciona Cerrar información
        Then  sistema indica Inicio banco del sol

    Scenario: User sees the second step the modal with information of his paid account
        Given sistema indica Inicio banco del sol
        Then  usuario selecciona Taza anual remunerada
        Then  sistema indica Caja de Ahorro Remunerada
        Then  sistema indica Rendimientos cada 30 días
        Then usuario selecciona Cerrar información
        Then  sistema indica Inicio banco del sol

    Scenario: User sees the third step the modal with information of his paid account
        Given sistema indica Inicio banco del sol
        Then  usuario selecciona Taza anual remunerada
        Then  sistema indica Caja de Ahorro Remunerada
        Then  sistema indica Rendimientos cada 30 días        
        Then  sistema indica Tu dinero siempre disponible
        Then usuario selecciona Cerrar información
        Then  sistema indica Inicio banco del sol

    Scenario: User sees the fourth step the modal with information of his paid account
        Given sistema indica Inicio banco del sol
        Then  usuario selecciona Taza anual remunerada
        Then  sistema indica Caja de Ahorro Remunerada
        Then  sistema indica Rendimientos cada 30 días        
        Then  sistema indica Tu dinero siempre disponible
        Then  sistema indica Tasa Nominal Anual
        Then usuario selecciona Cerrar información
        Then  sistema indica Inicio banco del sol

    # Scenario: User sees the same tna of the home in the step of the modal
    #     Given sistema indica Inicio banco del sol
    #     Then  usuario selecciona Taza anual remunerada
    #     Then  sistema indica Caja de Ahorro Remunerada
    #     Then  sistema indica Rendimientos cada 30 días        
    #     Then  sistema indica Tu dinero siempre disponible
    #     Then  sistema indica Tasa Nominal Anual
    #     Then  sistema muestra Xpath //*[@*='Hacé rendir tus ahorros con una tasa del +16,50%'] 
    #     Then  usuario selecciona Cerrar información
    #     Then  sistema indica Inicio banco del sol