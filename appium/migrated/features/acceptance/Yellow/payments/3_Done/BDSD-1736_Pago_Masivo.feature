@Payment_Regretion
@BDSD-1736
Feature:BDSD-1736 Pago Masivo

  Como usuario,
  Quiero visualizar y accionar sobre próximos vencimientos de servicios agendados, desde la home de Pagos.
  Para poder pagar de a muchos servicios al mismo tiempo, acortar el camino y completar el pago a tiempo

  Background: Reiniciar Datos
    Given Reset wiremock
    When  usuario accede a pagos
   
#  Escenarios:
#
#  Happy path end to end:
#  Usuario tiene 4 servicios por vencer en la home de pagos, sistema ofrece el botón de pagos varios.
#  Usuario paga 3 de los 4 servicios, sistema guarda en historial lo comprobantes individualmente.
#
#  Happy path:
#  Usuario tiene mas de 1 vencimiento a pagar, sistema muestra opción de pagos varios.
#  Usuario opta por pagos varios y selecciona mas de 1 servicio, sistema deja avanzar.
#  Usuario selecciona mas de una servicio, sistema debe sumar los servicios seleccionados como monto total.
#  Usuario selecciona el box de “seleccionar todos”, sistema debe marcar todos los servicios con un tilde.
#  Usuario selecciona X cantidad de servicios, sistema debe mostrar cuantos servicios hay seleccionados.
#  Usuario selecciona servicios a pagar y aprieta continuar, sistema muestra pantalla de confirmación.
#  Usuario confirma pago de servicios, sistema muestra congrats con numero de pagos abonados y opción de finalizar o compartir comprobantes.
#  Usuario realiza pagos varios, sistema almacena en historial los pagos individualmente.
#  Usuario selecciona compartir comprobantes, sistema debe permitir seleccionar que comprobantes quiere compartir.
#  Usuario comparte comprobantes, sistema presenta nuevamente la pantalla para compartir.
#  Usuario selecciona la X en el margen superior izquierdo, sistema lo lleva a la home.
#
#  Validación de errores/alertas.
#  Sistema solo tiene un vencimiento, no muestra opción de pagos varios.
#  Usuario opta por pagos varios y no selecciona ninguno servicio, sistema no dejar avanzar.
#  Usuario selecciona una cantidad de servicios que supera el total disponible en cuenta, sistema muestra error y no deja avanzar.
#  Usuario selecciona varios servicios, avanza y luego vuelve para atrás, sistema debe mostrar la misma selección.



##  Happy path end to end:
##  Usuario tiene 4 servicios por vencer en la home de pagos, sistema ofrece el botón de pagos varios.
  @Payment_Regretion_HappyPath
  @BDSD-1736_HappyPath
  Scenario: Usuario confirma pago de servicios, sistema muestra congrats con numero de pagos abonados y opción de finalizar o compartir comprobantes.
    When  usuario accede a pagos
    And   usuario selecciona Pagar varios servicios
    And   usuario selecciona Seleccionar todos
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar


  Scenario: Usuario tiene 4 servicios por vencer en la home de pagos, sistema ofrece el botón de pagos varios.
    When  usuario accede a pagos
    Then  sistema muestra el mensaje Pagar Varios


#  Usuario paga todos los servicios, sistema guarda en historial lo comprobantes individualmente.

#  Scenario: Usuario paga todos los servicios, sistema guarda en historial lo comprobantes individualmente.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona todos los servicios
#    And   usuario presiona en continuar
#    And   usuario presiona Pagar
#    And   usuario presiona Finalizar
#    Then  usuario accede al Historial de Pagos
#    And   sistema muestra comprobante de pagos realizados

#  Happy path:
#  Usuario tiene mas de 1 vencimiento a pagar, sistema muestra opción de pagos varios. # Validado con primer HP
#
##  Usuario opta por pagos varios y selecciona mas de 1 servicio, sistema deja avanzar.
#  Scenario: Usuario opta por pagos varios y selecciona mas de 1 servicio, sistema deja avanzar.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario presiona en continuar
#    Then  sistema muestra pantalla de confirmacion con servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   sistema muestra pantalla de confirmacion con servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#
#
##  Usuario selecciona mas de una servicio, sistema debe sumar los servicios seleccionados como monto total.
#  Scenario: Usuario selecciona mas de una servicio, sistema debe sumar los servicios seleccionados como monto total.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    Then  sistema muestra la suma de los montos seleccionados montoTotal
#
##  Usuario selecciona el box de “seleccionar todos”, sistema debe marcar todos los servicios con un tilde.
#  Scenario: Usuario selecciona el box de “seleccionar todos”, sistema debe marcar todos los servicios con un tilde.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona todos los servicios
#    Then  sistema marca todos los servicios en la vista marcados
#
#
##  Usuario selecciona X cantidad de servicios, sistema debe mostrar cuantos servicios hay seleccionados.
#  Scenario: Usuario selecciona el box de “seleccionar todos”, sistema debe marcar todos los servicios con un tilde.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona todos los servicios
#    Then  sistema marca todos los servicios en la vista marcados
#
##  Usuario selecciona servicios a pagar y aprieta continuar, sistema muestra pantalla de confirmación.
#  Scenario: Usuario selecciona servicios a pagar y aprieta continuar, sistema muestra pantalla de confirmación.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona todos los servicios
#    And   usuario presiona en continuar
#    Then  sistema muestra pantalla de confirmacion
#
#
##  Usuario confirma pago de servicios, sistema muestra congrats con numero de pagos abonados y opción de finalizar o compartir comprobantes.
#  Scenario: Usuario confirma pago de servicios, sistema muestra congrats con numero de pagos abonados y opción de finalizar o compartir comprobantes.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario presiona en continuar
#    And   usuario presiona Pagar
#    Then  sistema muestra pantalla de congrats con nro de pagos abonados y opcion de finalizar o compartir comprobante
#          sistema muestra pantalla de confirmacion con (.*) de (.*) con valor de  (.*) pesos con vencimiento el (.*)
#
##  Usuario realiza pagos varios, sistema almacena en historial los pagos individualmente.
#  Scenario: Usuario realiza pagos varios, sistema almacena en historial los pagos individualmente.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario presiona en continuar
#    And   usuario presiona Pagar
#    And   usuario presiona Finalizar
#    And   usuario accede al Historial de Pagos
#    Then  sistema presenta el servicio pagado empresa alias fecha monto
#    And  sistema presenta el servicio pagado empresa alias fecha monto
#
##  Usuario selecciona compartir comprobantes, sistema debe permitir seleccionar que comprobantes quiere compartir.
#  Scenario: Usuario realiza pagos varios, sistema almacena en historial los pagos individualmente.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario presiona en continuar
#    And   usuario presiona Pagar
##  Usuario opta por pagos varios y selecciona mas de 1 servicio, sistema deja avanzar.
#  Scenario: Usuario opta por pagos varios y selecciona mas de 1 servicio, sistema deja avanzar.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario presiona en continuar
#    Then  sistema muestra pantalla de confirmacion con servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   sistema muestra pantalla de confirmacion con servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#
#
##  Usuario selecciona mas de una servicio, sistema debe sumar los servicios seleccionados como monto total.
#  Scenario: Usuario selecciona mas de una servicio, sistema debe sumar los servicios seleccionados como monto total.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    Then  sistema muestra la suma de los montos seleccionados montoTotal
#
##  Usuario selecciona el box de “seleccionar todos”, sistema debe marcar todos los servicios con un tilde.
#  Scenario: Usuario selecciona el box de “seleccionar todos”, sistema debe marcar todos los servicios con un tilde.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona todos los servicios
#    Then  sistema marca todos los servicios en la vista marcados
#
#
##  Usuario selecciona X cantidad de servicios, sistema debe mostrar cuantos servicios hay seleccionados.
#  Scenario: Usuario selecciona el box de “seleccionar todos”, sistema debe marcar todos los servicios con un tilde.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona todos los servicios
#    Then  sistema marca todos los servicios en la vista marcados
#
##  Usuario selecciona servicios a pagar y aprieta continuar, sistema muestra pantalla de confirmación.
#  Scenario: Usuario selecciona servicios a pagar y aprieta continuar, sistema muestra pantalla de confirmación.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona todos los servicios
#    And   usuario presiona en continuar
#    Then  sistema muestra pantalla de confirmacion
#
#
##  Usuario confirma pago de servicios, sistema muestra congrats con numero de pagos abonados y opción de finalizar o compartir comprobantes.
#  Scenario: Usuario confirma pago de servicios, sistema muestra congrats con numero de pagos abonados y opción de finalizar o compartir comprobantes.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario presiona en continuar
#    And   usuario presiona Pagar
#    Then  sistema muestra pantalla de congrats con nro de pagos abonados y opcion de finalizar o compartir comprobante
#          sistema muestra pantalla de confirmacion con (.*) de (.*) con valor de  (.*) pesos con vencimiento el (.*)
#
##  Usuario realiza pagos varios, sistema almacena en historial los pagos individualmente.
#  Scenario: Usuario realiza pagos varios, sistema almacena en historial los pagos individualmente.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario presiona en continuar
#    And   usuario presiona Pagar
#    And   usuario presiona Finalizar
#    And   usuario accede al Historial de Pagos
#    Then  sistema presenta el servicio pagado empresa alias fecha monto
#    And  sistema presenta el servicio pagado empresa alias fecha monto
#
##  Usuario selecciona compartir comprobantes, sistema debe permitir seleccionar que comprobantes quiere compartir.
#  Scenario: Usuario realiza pagos varios, sistema almacena en historial los pagos individualmente.
#    When  usuario accede a pagos
#    And   usuario tiene mas de 1 pago por vencer
#    And   usuario presiona opcion de pagar varios
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario presiona en continuar
#    And   usuario presiona Pagar
#    Then  usuario presiona Ver Comprobantes
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario presiona en compartir comprobantes
#
##  Usuario comparte comprobantes, sistema presenta nuevamente la pantalla para compartir.
#
##  Usuario selecciona la X en el margen superior izquierdo, sistema lo lleva a la home.
##
#    Then  usuario presiona Ver Comprobantes
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario selecciona servicio de empresa con valor de  N pesos con vencimiento el dd/mm/aa
#    And   usuario presiona en compartir comprobantes
#
##  Usuario comparte comprobantes, sistema presenta nuevamente la pantalla para compartir.
#
##  Usuario selecciona la X en el margen superior izquierdo, sistema lo lleva a la home.
##
#  Validación de errores/alertas.
#  Sistema solo tiene un vencimiento, no muestra opción de pagos varios.
#  Usuario opta por pagos varios y no selecciona ninguno servicio, sistema no dejar avanzar.
#  Usuario selecciona una cantidad de servicios que supera el total disponible en cuenta, sistema muestra error y no deja avanzar.
#  Usuario selecciona varios servicios, avanza y luego vuelve para atrás, sistema debe mostrar la misma selección.
