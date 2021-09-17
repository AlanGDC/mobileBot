# language: en
@Payment_Regretion
@BDSD-5699
Feature:BDSD-5699 Pagos pendientes - Nueva Sección



 Background: Reiniciar Datos
   Given Reset wiremock

  @Yellow_HappyPathRegretion
  @BDSD-5699_HappyPath
  Scenario: Usuarios tiene agendados y proximos a vencer 6 vencimientos, usuario selecciona el boton de “ver todos”,Usuario Selecciona la opción de “ seleccionar todos” y finaliza el flujo de pago, sistema redirige al usuario a la home de pagos y muestra empty state de “ estas al día”.
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

  Scenario: Usuario no agendo ningún servicio con vencimiento, sistema no muestra sección de próximos vencimientos.
    Given Get to wiremock /emptyState
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   sistema no muestra el valor Pagar varios servicios
     

  Scenario: Usuario  tiene agendado y próximo a vencer 2 servicios con vencimiento, sistema muestra 2 cards y el botón de “ver todos” en la home de pagos.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   Get to wiremock /ProxVenc2Facts
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona INICIO, tab, 1 out of 5
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   sistema indica EdenorConFactNoEditable con vencimiento el 04/12/21 por un monto de 10055
    And   sistema indica EdenorSinFact con vencimiento el 04/12/21 por un monto de 10055
    And   usuario selecciona Pagar varios servicios
    Then  sistema indica Seleccionar todos



  Scenario: Usuario solo tiene 1 servicio agendado y próximo a vencer, sistema solo muestra 1 card con el servicio próximo a vencer en la home de pagos sin mostrar el botón de “ ver todos”.
    Given Get to wiremock /ProxVenc1Fact
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona INICIO, tab, 1 out of 5  
    When  usuario selecciona PAGOS, tab, 5 out of 5
    Then  sistema indica EdenorConFactNoEditable con vencimiento el 04/12/21 por un monto de 10011
    And   sistema no muestra el valor Pagar varios servicios



  Scenario: Usuario tiene 5 servicios próximos a vencer y agendados, sistema muestra 3 cards y el botón de “ ver todos” en la home, usuario tapea una de las cards, sistema redirige al usuario al flujo individual de pago.
    Given  Get to wiremock /ProxVenc2Fact
    And    Usuario realiza login bdsolqeyellow@gmail.com
    And    usuario selecciona Teclado Clave Tecla 1
    And    usuario selecciona Teclado Clave Tecla 4
    And    usuario selecciona Teclado Clave Tecla 7
    And    usuario selecciona Teclado Clave Tecla 2
    And    usuario selecciona Teclado Clave Tecla 5
    And    usuario selecciona Teclado Clave Tecla 8
    When   usuario selecciona PAGOS, tab, 5 out of 5
    Then   sistema indica EdenorConFactNoEditable con vencimiento el 04/12/21 por un monto de 10055
    And    sistema indica EdenorSinFact con vencimiento el 04/12/21 por un monto de 10055
    And    sistema indica VisaConFact con vencimiento el 04/12/21 por un monto de 10055
    And    usuario selecciona Pagar varios servicios
    And    sistema indica EdenorConFactNoEditable con vencimiento el 04/12/21 por un monto de 10055
    And    sistema indica EdenorSinFact con vencimiento el 04/12/21 por un monto de 10055
    And    sistema indica VisaConFact con vencimiento el 04/12/21 por un monto de 10055
    And    sistema indica Multa140EditableAny con vencimiento el 04/12/21 por un monto de 10055
