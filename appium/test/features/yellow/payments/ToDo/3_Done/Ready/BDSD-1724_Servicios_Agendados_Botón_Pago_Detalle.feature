@Payment_Regretion_HappyPath
@BDSD-1724
Feature: BDSD-1724 Servicios Agendados: Botón Pago Detalle

  Como usuario,
  Quiero tener acceso a pagar servicios desde agenda (informen factura, no informen o sean mixtos).
  Para no tener que recorrer el camino de primer pago cada vez.


 Background: Reiniciar Datos
   Given Reset wiremock


  @Yellow_HappyPathRegretion
  @BDSD-1724_HappyPath
    Scenario: Usuario ingresa a agenda selecciona el detalle de un servicio con vencimiento y elige pagar.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Ir a agenda
    And   usuario presiona Xpath //*[contains(@content-desc, "EdenorConFactNoEditable")]
    And   usuario selecciona Pagar servicio
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  usuario selecciona Finalizar


#  Dado que el usuario agendó un servicio sin vencimiento previamente:

  Scenario: Usuario ingresa a agenda selecciona el detalle de un servicio sin vencimiento y elige pagar.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
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
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  usuario selecciona Finalizar

#  Dado que el usuario agendó un servicio mixto previamente:

  Scenario: Usuario ingresa a agenda selecciona el detalle de un servicio mixto con vencimiento y elige pagar factura.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
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
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  usuario selecciona Finalizar

  Scenario: Usuario ingresa a agenda selecciona el detalle de un servicio mixto con vencimiento y elige hacer un pago espontaneo.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
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
    And   usuario selecciona Efectuar un pago espontáneo
    And   usuario selecciona Efectuar
    And   usuario selecciona Ingresa el monto a pagar
    And   usuario ingresa el valor 123 al campo Ingresa el monto a pagar
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  usuario selecciona Finalizar

  Scenario: Usuario ingresa a agenda selecciona el detalle de un servicio mixto sin vencimiento y elige pagar.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
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
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  usuario selecciona Finalizar

#  Usuario intenta pagar por detalle una factura con vencimiento sin facturas pendientes

  Scenario: Usuario intenta pagar por detalle una factura con vencimiento sin facturas pendientes
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Ir a agenda
    And   usuario completa el campo Buscar servicio agendado con el valor Edenor
    And   usuario selecciona EdenorSinFact Edenor
    And   usuario selecciona Pagar servicio
    Then  sistema indica accessibilityLabel.emptyStateText
