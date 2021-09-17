@Payment_Regretion_HappyPath
@BDSD-3947
Feature: BDSD-3947 Pago Domesticas

  Como usuario,
  Quiero poder realizar o agendar un pago de domesticas a traves de la app de BDS
  Para no tener que entrar a la web



 Background: Reiniciar Datos
   Given Reset wiremock
   
   
  @Yellow_HappyPathRegretion
  @BDSD-3947_HappyPath
  Scenario: Usuario realiza flujo de primer pago para un pago de domesticas con CUIL
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Act.06hs hasta 4/2019
    And usuario presiona Xpath //*[contains(@text,'Servicio Domestico Activo')]
    And   usuario ingresa el valor 20334446660 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 20334446761 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 042019 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar 
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  sistema indica Finalizar



