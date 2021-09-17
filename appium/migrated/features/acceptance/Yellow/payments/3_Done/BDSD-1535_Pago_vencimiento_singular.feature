# language: en
@Payment_Regretion
@BDSD-1535
Feature: BDSD-1535 Pago de Vencimientos singular
  Como usuario,
  Quiero visualizar y accionar sobre próximos vencimientos de los servicios pagados o agendados anteriormente en la home de Pagos.
  Para poder completar el pago a tiempo

  Background: Reiniciar Datos
    Given Reset wiremock
    When  usuario accede a pagos
# Pago vencimiento con monto fijo OK
# editable: 'NON_EDITABLE',
# AySA 1122
 # {`${item.savedAlias} con vencimiento el ${moment(item.dueDate).format('DD/MM/YY')} por un monto de ${item.amount}`}
  @Payment_Regretion_HappyPath
  @BDSD-1535_HappyPath
  Scenario: Usuario selecciona un Vencimiento con monto fijo y paga OK
    Given usuario accede a pagos
    And   usuario selecciona EdenorConFactNoEditable con vencimiento el 04/12/21 por un monto de 10055
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  sistema presenta mensaje Finalizar
    And   usuario selecciona Finalizar

# Pago vencimiento con pago variado
# editable: 'ANY',
# METROGAS 12345

  Scenario: Usuario selecciona un Vencimiento con monto EDITABLE e indico el monto MAYOR OK
    Given usuario accede a pagos
    And   usuario selecciona [Alias] de [Empresa] por un valor de [N] pesos con vencimiento el [dd/mm/aa]
    And   usuario completa el campo Ingresa el monto a pagar con el valor 50
    And   usuario presiona Pagar
    Then  sistema presenta mensaje Finalizar
    And   usuario presiona Finalizar

  Scenario: Usuario selecciona un Vencimiento con monto EDITABLE e indico el monto MENOR OK
    Given usuario accede a pagos
    And   usuario selecciona [Alias] de [Empresa] por un valor de [N] pesos con vencimiento el [dd/mm/aa]
    And   usuario completa el campo Ingresa el monto a pagar con el valor 50
    And   usuario presiona Pagar
    Then  sistema presenta mensaje Finalizar
    And   usuario presiona Finalizar

# editable: 'HIGH_EQUAL',
# EDESUR 1122334455
  Scenario: Usuario selecciona un Vencimiento con monto EDITABLE PARA ARRIBA y pago OK
    Given usuario accede a pagos
    And   usuario selecciona [Alias] de [Empresa] por un valor de [N] pesos con vencimiento el [dd/mm/aa]
    And   usuario completa el campo Ingresa el monto a pagar con el valor 50
    And   usuario presiona Pagar
    Then  sistema presenta mensaje Finalizar
    And   usuario presiona Finalizar

  Scenario: Usuario selecciona un Vencimiento con monto EDITABLE PARA ARRIBA e indico el monto MAYOR OK
    Given usuario accede a pagos
    And   usuario selecciona [Alias] de [Empresa] por un valor de [N] pesos con vencimiento el [dd/mm/aa]
    And   usuario completa el campo Ingresa el monto a pagar con el valor 50
    And   usuario presiona Pagar
    Then  sistema presenta mensaje Finalizar
    And   usuario presiona Finalizar


  # Validaciones de mensajes Error/Alertas :
    # editable: 'HIGH_EQUAL',
    #  EDESUR 1122334455
    #
    # editable: 'ANY',
    #  METROGAS 12345
    #
    # editable: 'NON_EDITABLE',
    #  AySA 1122
  Scenario: Usuario selecciona un Vencimiento con monto EDITABLE y dejo el monto vacío ERROR
    Given usuario accede a pagos
    And   usuario selecciona [Alias] de [Empresa] por un valor de [N] pesos con vencimiento el [dd/mm/aa]
    And   usuario completa el campo Ingresa el monto a pagar con el valor 0
    Then  usuario presiona Continuar
    And   sistema no muestra el valor Pagar







