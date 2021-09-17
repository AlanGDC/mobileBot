# language: en
@Payment_Regretion
@BDSD-5701
Feature:BDSD-5701 Historial - Nueva Sección



 Background: Reiniciar Datos
    Given Reset wiremock

  @Yellow_HappyPathRegretion
  @BDSD-5701_HappyPath
  Scenario: Dado que el usuario realizo recargas y pagos, Sistema muestra en la pestaña de “historial” las cards de los pagos y recargas. Usuario selecciona una de las cards. Sistema muestra detalle de pago y compartir comprobante.
     Given Reset wiremock
     And    Usuario realiza login bdsolqeyellow@gmail.com
     And   usuario selecciona Teclado Clave Tecla 1
     And   usuario selecciona Teclado Clave Tecla 4
     And   usuario selecciona Teclado Clave Tecla 7
     And   usuario selecciona Teclado Clave Tecla 2
     And   usuario selecciona Teclado Clave Tecla 5
     And   usuario selecciona Teclado Clave Tecla 8
     When  usuario selecciona PAGOS, tab, 5 out of 5
     And   usuario selecciona pestaña historial
     And   usuario completa el campo Buscar pagos efectuados con el valor Unicef
     Then  sistema indica Donaciones UNICEF de 25.00 pagado el 2017-11-10T14:39:40.271+00:00


  Scenario: Usuario no realizo ninguna recarga o pago de servicio, sistema muestra empty state en pestaña de historial.
    Given  Reset wiremock
    And    Get to wiremock /emptyState
    And    Usuario realiza login bdsolqeyellow@gmail.com
    And    usuario selecciona Teclado Clave Tecla 1
    And    usuario selecciona Teclado Clave Tecla 4
    And    usuario selecciona Teclado Clave Tecla 7
    And    usuario selecciona Teclado Clave Tecla 2
    And    usuario selecciona Teclado Clave Tecla 5
    And    usuario selecciona Teclado Clave Tecla 8
    When   usuario selecciona PAGOS, tab, 5 out of 5
    And    usuario selecciona pestaña historial
    Then   usuario presiona Xpath //*[contains(@text,'En este momento no es posible acceder a tu historial. Volvé a intentarlo más tarde.')]
# # #'


  Scenario: Usuario ingresa en la home de historial, sistema debe permitir buscar por Alias.
    Given Reset wiremock
    When  Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona pestaña historial
    And   usuario completa el campo Buscar pagos efectuados con el valor SubeRecarga
    Then  sistema indica SubeRecarga SUBE de 25.00 pagado el 2019-02-11T14:44:40.271+00:00

  Scenario: Usuario realiza recarga de SUBE, sistema debe mostrar el comprobante de recarga con una especificación especial.
    Given Reset wiremock
    When  Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona pestaña historial
    And   usuario completa el campo Buscar pagos efectuados con el valor SUBE
    And   usuario selecciona SubeRecarga SUBE de 25.00 pagado el 2019-02-11T14:44:40.271+00:00
    Then  sistema indica Compartir comprobante
    And sistema muestra Xpath //*[contains(@text,'MEDIO DE PAGO:')] 
    And sistema muestra Xpath //*[contains(@text,'1000000678')]
    And sistema muestra Xpath //*[contains(@text,'6061268061710541')]
    And sistema muestra Xpath //*[contains(@text,'4810')]
    And sistema muestra Xpath //*[contains(@text,'6215')]
    And sistema muestra Xpath //*[contains(@text,'Nº DE CLIENTE:')] 
    And sistema muestra Xpath //*[contains(@text,'Nº DE TRANSACCIÓN:')] 
    And sistema muestra Xpath //*[contains(@text,'Nº DE CONTROL:')] 
    And sistema muestra Xpath //*[contains(@text,'RECARGA DE SERVICIOS')] 

  Scenario: Usuario realiza un recarga múltiples veces el mismo día, sistema brinda un comprobante por cada una de las recargas.
    Given Reset wiremock
    When  Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona pestaña historial
    And   usuario completa el campo Buscar pagos efectuados con el valor SUBE
    Then sistema indica SubeRecarga SUBE de 25.00 pagado el 2019-02-11T14:44:40.271+00:00
    And  sistema indica SubeRecarga2 SUBE de 25.00 pagado el 2019-02-11T14:44:40.271+00:00


