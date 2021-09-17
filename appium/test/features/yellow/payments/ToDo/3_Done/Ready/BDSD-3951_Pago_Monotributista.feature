@Payment_Regretion_HappyPath
@BDSD-3951
Feature: BDSD-3951 Pago Monotributista

  Como usuario,
  Quiero poder realizar o agendar un pago de monotributo a traves de la app de BDS
  Para no tener que entrar a la web

 Background: Reiniciar Datos
   Given Reset wiremock
   
   
   
  @Yellow_HappyPathRegretion
  @BDSD-3951_HappyPath
  Scenario: Usuario realiza flujo de pago para un pago de monotributo.
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
    And   usuario completa el campo Buscar empresa con el valor Monotr. Aut. Activo
    And   usuario selecciona empresa Monotr. Aut. Activo del rubro Monotributo
    And   usuario ingresa el valor 20335574430 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 122012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Ingresa el monto a pagar
    And   usuario ingresa el valor 999 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  sistema indica Finalizar


  Scenario: Usuario intenta realizar flujo de pago para un pago de monotributo con CUIT Inexistente.
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
    And   usuario completa el campo Buscar empresa con el valor Monotr. Aut. Activo
    And   usuario selecciona empresa Monotr. Aut. Activo del rubro Monotributo    
    And   usuario ingresa el valor 12345678901 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 123456 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    Then  sistema muestra elemento mensaje de error con texto El dato ingresado es incorrecto

