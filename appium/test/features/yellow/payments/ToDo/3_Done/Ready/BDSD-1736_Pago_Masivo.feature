@Payment_Regretion
@BDSD-1736
Feature:BDSD-1736 Pago Masivo

  Como usuario,
  Quiero visualizar y accionar sobre próximos vencimientos de servicios agendados, desde la home de Pagos.
  Para poder pagar de a muchos servicios al mismo tiempo, acortar el camino y completar el pago a tiempo

Background: Reiniciar Datos
   Given Reset wiremock
    
   


  @Yellow_HappyPathRegretion
  @BDSD-1736_HappyPath
  Scenario: Usuario realiza un pago masivo desde la home de pagos, sistema muestra congrats.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Pagar varios servicios
    And   usuario selecciona Seleccionar todos
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar

    
# #  Happy path:

  Scenario: Usuario selecciona mas de una servicio, sistema debe sumar los servicios seleccionados como monto total.
    Given  Get to wiremock /ProxVenc2Fact
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Pagar varios servicios
    And   sistema indica Vas a pagar 0 pesos
    And   usuario presiona Xpath //*[contains(@content-desc, "EdenorConFactNoEditable")]
    And   usuario verifica monto a pagar //*[contains(@content-desc, "EdenorConFactNoEditable")]/android.widget.TextView[2] en el campo //*[contains(@content-desc, "Vas a pagar")]
    And   usuario presiona Xpath //*[contains(@content-desc, "EdenorSinFact")]
    Then  usuario verifica monto a pagar //*[contains(@content-desc, "EdenorSinFact")]/android.widget.TextView[2] en el campo //*[contains(@content-desc, "Vas a pagar")]
    
  Scenario: Usuario selecciona el box de “seleccionar todos”, sistema debe marcar todos los servicios con un tilde.
    Given  Get to wiremock /ProxVenc2Fact
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When   usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Pagar varios servicios
    And   usuario selecciona Seleccionar todos
    And   sistema indica EdenorConFactNoEditable con vencimiento el 04/12/21 por un monto de 10055
    And   sistema indica EdenorSinFact con vencimiento el 04/12/21 por un monto de 10055
    And   sistema indica VisaConFact con vencimiento el 04/12/21 por un monto de 10055
    And   sistema indica Multa140EditableAny con vencimiento el 04/12/21 por un monto de 10055

  Scenario: Usuario selecciona X cantidad de servicios, sistema debe mostrar cuantos servicios hay seleccionados.
    Given  Get to wiremock /ProxVenc2Fact
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When   usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Pagar varios servicios
    And   usuario selecciona EdenorConFactNoEditable con vencimiento el 04/12/21 por un monto de 10055
    And   usuario selecciona EdenorSinFact con vencimiento el 04/12/21 por un monto de 10055
    Then  sistema indica 2 seleccionados

#   @BDSD-1736_Pendiente
  Scenario: Usuario selecciona servicios a pagar y aprieta continuar, sistema muestra pantalla de confirmación.
    Given Get to wiremock /ProxVenc2Fact
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Pagar varios servicios
    And   usuario selecciona EdenorConFactNoEditable con vencimiento el 04/12/21 por un monto de 10055
    And   usuario selecciona EdenorSinFact con vencimiento el 04/12/21 por un monto de 10055
    And   usuario selecciona Nuevo pago
    Then   sistema muestra Xpath //*[contains(@text,'$ 20.110,00')]

  Scenario: Usuario confirma pago de servicios, sistema muestra congrats con numero de pagos abonados y opción de finalizar o compartir comprobantes.
    Given Get to wiremock /ProxVenc2FactAnd Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Pagar varios servicios
    And   usuario selecciona EdenorConFactNoEditable con vencimiento el 04/12/21 por un monto de 10055
    And   usuario selecciona EdenorSinFact con vencimiento el 04/12/21 por un monto de 10055
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    Then   sistema muestra Xpath //*[contains(@text,'Pago efectuado')]
    And   sistema muestra Xpath //*[contains(@text,'Pagaste 2 servicios')]

  Scenario: Usuario selecciona compartir comprobantes, sistema debe permitir seleccionar que comprobantes quiere compartir.
    Given Get to wiremock /ProxVenc2Fact
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Pagar varios servicios
    And   usuario selecciona EdenorConFactNoEditable con vencimiento el 04/12/21 por un monto de 10055
    And   usuario selecciona EdenorSinFact con vencimiento el 04/12/21 por un monto de 10055
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And  usuario selecciona Ver Comprobantes
    # Then   sistema indica OPCION DE PAGO DE COMPROBANTES  // F: Falta generar en el mock los comprobantes para poder tomar este label, verificar manualmente si se ve correctamente la pantalla


# #  Validación de errores/alertas.
  Scenario: Sistema solo tiene un vencimiento, no muestra opción de pagos varios.
    Given Get to wiremock /ProxVenc1Fact
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   sistema no muestra el valor Pagar varios servicios
  
  Scenario: Usuario opta por pagos varios y no selecciona ninguno servicio, sistema no dejar avanzar.
    Given  Get to wiremock /ProxVenc2Fact
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Pagar varios servicios
    And   usuario selecciona Nuevo pago
    Then  sistema no muestra el valor Pagar
  
  Scenario: Usuario selecciona una cantidad de servicios que supera el total disponible en cuenta, sistema muestra error y no deja avanzar.
    Given  Get to wiremock /accountNoSaldo
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Pagar varios servicios
    And   usuario selecciona Seleccionar todos
    And   sistema muestra Xpath //*[contains(@text,'El saldo en tu cuenta no es suficiente')]

