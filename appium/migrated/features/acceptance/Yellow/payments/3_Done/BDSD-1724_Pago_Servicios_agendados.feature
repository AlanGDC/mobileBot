@Payment_Regretion
@BDSD-1724
Feature: BDSD-1724 Servicios Agendados: Botón Pago Detalle

  Como usuario,
  Quiero tener acceso a pagar servicios desde agenda (informen factura, no informen o sean mixtos).
  Para no tener que recorrer el camino de primer pago cada vez.


  Background: Reiniciar Datos
    Given Reset wiremock
    When  usuario accede a pagos
#  Background: Reiniciar Datos
#    Given Reset wiremock
#    And Get to wiremock /cargardatosPagoEmpConFactPend
#    And   existe el usuario con passcode 192837
#    And   el usuario ingresa a la pantalla de login
#    And   el usuario acepta los requisitos de identificacion
#    And   el usuario ingresa el correo bdsolqe@gmail.com
#    And   el usuario confirma el correo
#    And   accedo por magic link con mail bdsolqe@gmail.com y password Bdsol123
#    Then  ingresa el passcode 192837

#Happy path:
  @Payment_Regretion_HappyPath
  @BDSD-1724_HappyPath
  Scenario: Usuario ingresa a agenda y paga un servicio agendado con vencimiento.
    When  usuario accede a pagos
    And   usuario selecciona Ir a servicios agendados
    And   usuario selecciona EdenorConFactNoEditable Edenor
    And   usuario selecciona Pagar servicio
    And   usuario presiona Continuar
    And   usuario presiona Pagar
    Then  usuario presiona Finalizar



#  Dado que el usuario agendó un servicio sin vencimiento previamente:
#  Usuario ingresa a agenda y tapea la card de un servicio agendado sin vencimiento, sistema muestra detalle de servicio agendado.
#  Usuario selecciona el boton de realizar pago, sistema redirige al usuario al flujo de pago bajo el usuario correspondiente en la empresa.
#  Sistema muestra input en cero, usuario realiza el pago.
  Scenario: Usuario ingresa a agenda y paga un servicio sin vencimiento.
    When  usuario accede a pagos
    And   usuario selecciona Ir a servicios agendados
    And   usuario selecciona Electricidad Edenor
    And   usuario selecciona Pagar servicio
    And   usuario presiona Continuar
    And   usuario presiona Pagar
    And   usuario presiona Finalizar
    Then  sistema no muestra el valor Edenor con vencimiento el 04/12/21 por un monto de 10055

#  Dado que el usuario agendó un servicio mixto previamente:
#  Usuario ingresa a agenda y tapea la card de un servicio agendado mixto, sistema muestra detalle de servicio agendado.
#  Usuario selecciona el boton de realizar pago, sistema redirige al usuario al flujo de pago bajo el usuario correspondiente en la empresa.
#  Sistema muestra input en cero si no hay una factura vigente y usuario realiza el pago.
#  Sistema muestra monto predeterminado y usuario realiza pago.



#Validaciones de errores/alertas:
#  Usuario no confirma pago desde servicios agendados, no tiene que desaparecer de home de servicios.
  Scenario: Usuario no confirma pago desde servicios agendados, no tiene que desaparecer de home de servicios.
    When  usuario accede a pagos
    And   usuario selecciona Ir a servicios agendados
    And   usuario selecciona Electricidad Edenor
    And   usuario selecciona Pagar servicio
    And   usuario presiona Boton Volver Atras
    And   usuario presiona Boton Volver Atras
    And   usuario presiona Boton Volver Atras
    Then  sistema indica Edenor con vencimiento el 04/12/21 por un monto de 10055





