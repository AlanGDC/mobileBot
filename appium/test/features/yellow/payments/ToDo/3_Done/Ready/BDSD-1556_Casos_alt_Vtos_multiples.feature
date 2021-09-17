# language: en
@Payment_Regretion_HappyPath
@BDSD-1556
Feature: BDSD-1556 Casos alternativos Primer Pago - Vtos múltiples
  Como usuario,
  Quiero poder pagar un servicio que tenga vencimientos múltiples.
  Para evitar entrar en mora o duplicar pagos

 Background: Reiniciar Datos
   Given Reset wiremock
   
##  Happy Path:

  @Yellow_HappyPathRegretion
  @BDSD-1556_HappyPath
  Scenario: Usuario selecciona servicio con multiples vencimientos, paga mensual el servicio
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
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona empresa Edenor del rubro Electricidad
    And   usuario ingresa el valor 123123123123 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Edenor 24/12/19 212.31
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar


  # Scenario: Usuario selecciona servicio con multiples vencimientos, paga anual el servicio
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
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona empresa Edenor del rubro Electricidad
    And   usuario ingresa el valor 123123123123 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Edenor - Cuota Anual04/12/19 10055.00
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar






