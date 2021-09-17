# language: en
@Payment_Regretion
@BDSD-1556
Feature: BDSD-1556 Casos alternativos Primer Pago - Vtos múltiples
  Como usuario,
  Quiero poder pagar un servicio que tenga vencimientos múltiples.
  Para evitar entrar en mora o duplicar pagos

  Background: Reiniciar Datos
    Given Reset wiremock
    When  usuario accede a pagos
   
##  Happy Path:
##    Usuario selecciona servicio con multiples vencimientos, paga mensual el servicio
##     - Anula vencimiento mensual.
##     - Anula vencimiento anual.
##     - Se visualizan el resto de los vencimientos
#
  @Payment_Regretion_HappyPath
  @BDSD-1556_HappyPath
  Scenario: Usuario selecciona servicio con multiples vencimientos, paga mensual el servicio
    When  usuario accede a pagos
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona Buscar Empresa
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona Ir a rubros de Edenor
    And   usuario completa el campo campo de texto con el valor 123123123123
    And   usuario selecciona Continuar
    And   usuario selecciona Edenor 24/12/19 212.31
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar



#  undefined - Cuota Anual04/12/19 10055.00
#
#  undefined 24/12/19 212.31

#  Happy Path:
#    Usuario selecciona servicio con multiples vencimientos, paga anual el servicio
#     - Anula vencimientos mensuales.
#     - Anula vencimiento anual.
#
  Scenario: Usuario selecciona servicio con multiples vencimientos, paga anual el servicio
    When  usuario accede a pagos
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona categoria Impuestos y Servicios
    And   usuario selecciona sub categoria Gas
    And   usuario selecciona empresa METROGAS
    And   usuario completa codigo Clave pago electronico con valor 12345
    And   usuario selecciona factura Anual
    And   usuario presiona Continuar
    And   usuario presiona Pagar
    And   usuario presiona Finalizar
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona categoria Impuestos y Servicios
    And   usuario selecciona sub categoria Gas
    And   usuario selecciona empresa METROGAS
    And   usuario completa codigo Clave pago electronico con valor 12345
    Then  sistema presenta mensaje No tenés vencimientos informados para METROGAS 12345

#
#  Validaciones de errores/alertas:
#    Usuario selecciona servicio con multiples vencimientos, ingresa código incorrecto.
  Scenario: Usuario selecciona servicio con multiples vencimientos, ingresa código incorrecto.
    When  usuario accede a pagos
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona categoria Impuestos y Servicios
    And   usuario selecciona sub categoria Impuestos municipales
    And   usuario selecciona empresa ABL
    And   usuario completa codigo Nro.identificador cliente con valor 1122334455
    Then  sistema indica El codigo ingresado es incorrecto


#    Usuario selecciona servicio con multiples vencimientos, no posee saldo en la cuenta.
  Scenario: Usuario selecciona servicio con multiples vencimientos, no posee saldo en la cuenta.
    When  usuario accede a pagos
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona categoria Impuestos y Servicios
    And   usuario selecciona sub categoria Impuestos municipales
    And   usuario selecciona empresa ABL
    And   usuario completa codigo Nro.identificador cliente con valor 1122334455
    And   usuario selecciona factura mensual [Cuota] de [Servicio] en el valor de [N] y vencimiento el [dd/mm/aa]
    And   usuario presiona Continuar
    Then   sistema indica saldo insuficiente






