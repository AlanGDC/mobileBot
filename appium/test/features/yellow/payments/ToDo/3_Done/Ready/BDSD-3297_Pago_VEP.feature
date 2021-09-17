@Payment_Regretion_HappyPath
@BDSD-3297
Feature:BDSD-3297 Pago VEP

  Como usuario
  Quiero poder pagar o agendar un VEP desde la app de BDS
  Para no tener que entrar a la web.

 Background: Reiniciar Datos
   Given Reset wiremock

  @Yellow_HappyPathRegretion
  @BDSD-3297_HappyPath
  Scenario: Usuario realiza flujo de primer pago para un VEP y confirma pago.
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
    And   usuario completa el campo Buscar empresa con el valor VEP
    And   usuario selecciona empresa VEP del rubro Impuestos AFIP (VEP)
    And   usuario ingresa el valor 12345678901 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 12345678902 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  sistema indica Finalizar

  Scenario: Usuario realiza flujo de primer pago para un VEP e ingresa CUIT Generador erroneo.
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
    And   usuario completa el campo Buscar empresa con el valor VEP
    And   usuario selecciona empresa VEP del rubro Impuestos AFIP (VEP)
    And   usuario ingresa el valor 12345678901 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 12345678903 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    Then  sistema muestra elemento mensaje de error con texto El dato ingresado es incorrecto
    




