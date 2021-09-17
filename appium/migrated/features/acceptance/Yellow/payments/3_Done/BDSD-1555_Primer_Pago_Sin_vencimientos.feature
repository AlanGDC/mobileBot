# language: en
@Payment_Regretion
@BDSD-1555
Feature: BDSD-1555 Primer Pago Sin vencimientos (Casos alternativos)
  Como usuario, Quiero acceder a un servicio aunque no se encuentren próximos vencimientos
  Para poder  Pagar y Agendar los futuros vencimientos


  Background: Reiniciar Datos
    Given Reset wiremock
    When  usuario accede a pagos
#  Happy path
#  paymentType: "WITH_INVOICE",	Usuario intenta pagar servicio sin facturas pendientes (WITH_INVOICE), sistema indica que no posee facturas pendientes
  @Payment_Regretion_HappyPath
  @BDSD-1555_HappyPath
  Scenario: Usuario intenta pagar servicio sin facturas pendientes (WITH_INVOICE), sistema indica que no posee facturas pendientes
    When  usuario accede a pagos
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona Buscar Empresa
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona Ir a rubros de Edenor
    And   usuario completa el campo campo de texto con el valor 210987654321
    And   usuario selecciona Continuar
    Then  sistema muestra texto mensaje de error
    And   usuario selecciona Finalizar



#  Scenarios
#  paymentType: "NO_INVOICE",	Usuario intenta pagar servicio sin facturas pendientes (NO_INVOICE), sistema permite pagar
  Scenario: Usuario intenta pagar servicio sin facturas pendientes (NO_INVOICE), sistema permite pagar
    When  usuario accede a pagos
    And   usuario selecciona Boton Pagar
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona categoria Impuestos y Servicios
    And   usuario selecciona sub categoria Gas
    And   usuario selecciona empresa Visa
    And   usuario completa codigo Nro.identificador cliente con valor 1122334455
    And   usuario ingresa monto a pagar 500
    And   usuario presiona Continuar
    And   usuario presiona Pagar
    Then  sistema presenta mensaje Finalizar

#  paymentType: "MIXED",	Usuario intenta pagar servicio sin facturas pendientes (MIXED), sistema permite pagar
  Scenario: Usuario intenta pagar servicio sin facturas pendientes (MIXED), sistema permite pagar
    When  usuario accede a pagos
    And   usuario selecciona Boton Pagar
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona categoria Impuestos y Servicios
    And   usuario selecciona sub categoria Gas
    And   usuario selecciona empresa Visa
    And   usuario completa codigo Nro.identificador cliente con valor 1122334455
    And   usuario ingresa monto a pagar 500
    And   usuario presiona Continuar
    And   usuario presiona Pagar
    Then  sistema presenta mensaje Finalizar


#  paymentType: "WITH_INVOICE",	Usuario intenta pagar servicio sin facturas pendientes (WITH_INVOICE), usuario agenda servicio
  Scenario: Usuario intenta pagar servicio sin facturas pendientes (WITH_INVOICE), sistema indica que no posee facturas pendientes
    When  usuario accede a pagos
    And   usuario selecciona Boton Pagar
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona categoria Impuestos y Servicios
    And   usuario selecciona sub categoria Gas
    And   usuario selecciona empresa Naturgy
    And   usuario completa codigo Nro.identificador cliente con valor 1122334455
    And   sistema informa que no posee vencimientos Gas 1122334455
    And   sistema permite la opcion de agendar
    And   usuario elige Agendar Servicio
    And   usuario presiona Ver Servicios Agendados
    Then  sistema presenta el servicio agendado Gas Naturgy




