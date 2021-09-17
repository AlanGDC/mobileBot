@Payment_Regretion_HappyPath
@BDSD-3134
Feature: BDSD-3134 Pago servicios agendados con sin vencimiento


Background: Reiniciar Datos
   Given Reset wiremock
   
  @Yellow_HappyPathRegretion
  @BDSD-3134_HappyPath
  Scenario: Usuario selecciona una factura con vencimiento, sistema redirige al usuario al flujo de pago bajo
  And Usuario realiza login bdsolqeyellow@gmail.com
    Given   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Ir a agenda
    And   usuario completa el campo Buscar servicio agendado con el valor Edenor
    And   usuario selecciona EdenorConFactNoEditable Edenor
    And   usuario selecciona Pagar servicio
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  sistema indica Finalizar



#  Dado que el usuario agendó un servicio sin vencimiento previamente:

  Scenario: Usuario selecciona una factura sin vencimiento, sistema redirige al usuario al flujo de pago bajo
    And Usuario realiza login bdsolqeyellow@gmail.com
    Given   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Ir a agenda
    And   usuario completa el campo Buscar servicio agendado con el valor Medcar
    And   usuario selecciona MedcarNoFact Medcar
    And   usuario selecciona Pagar servicio
    And   usuario selecciona Ingresa el monto a pagar
    And   usuario ingresa el valor 123 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  sistema indica Finalizar


#  Dado que el usuario agendó un servicio mixto con factura previamente:

  Scenario: Usuario selecciona una factura de servicio mixto con vencimiento, sistema redirige al usuario al flujo de pago bajo
    And Usuario realiza login bdsolqeyellow@gmail.com
    Given   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Ir a agenda
    And   usuario completa el campo Buscar servicio agendado con el valor Visa
    And   usuario selecciona VisaConFact Visa
    And   usuario selecciona Pagar servicio
    And   usuario selecciona Visa 31/05/19 990.00
    And   usuario selecciona Ingresa el monto a pagar
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  sistema indica Finalizar


#  Dado que el usuario agendó un servicio mixto con factura previamente:

  Scenario: Usuario selecciona una factura de servicio mixto sin vencimiento, sistema redirige al usuario al flujo de pago bajo
    And Usuario realiza login bdsolqeyellow@gmail.com
    Given   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Ir a agenda
    And   usuario completa el campo Buscar servicio agendado con el valor Visa
    And   usuario selecciona VisaSinFact Visa
    And   usuario selecciona Pagar servicio
    And   usuario selecciona Pago espontáneo
    And   usuario selecciona Efectuar
    And   usuario selecciona Ingresa el monto a pagar
    And   usuario ingresa el valor 123 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  sistema indica Finalizar





