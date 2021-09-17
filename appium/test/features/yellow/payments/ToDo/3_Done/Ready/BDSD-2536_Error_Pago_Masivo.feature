@Payment_Regretion_HappyPath
@BDSD-2536
Feature: BDSD-2536 Error en pago masivo

#  CORRER INDIVIDALMENTE
  # Como usuario,
  # Quiero tener un detalle de los errores que surjan en un pago masivo
  # Para identificar cuáles pagos fallaron, saber por qué y cómo proceder.

Background: Reiniciar Datos
   Given Reset wiremock
    
  @Yellow_HappyPathRegretion
  @BDSD-2536_HappyPath
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 47.
  # Sistema presenta una congrats con warning de error en un pago.
  # Sistema me permite acceder al detalle de cuál fue el error y por qué.
    # #Given Reset wiremock
    And   Get to wiremock /PaymentsErrors47
    And   Usuario realiza login bdsolqeyellow@gmail.com
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
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
    


  Scenario: Usuario confirma pago de servicios, sistema muestra congrats con numero de pagos abonados y opción de finalizar o compartir comprobantes.
    # #Given Reset wiremock
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

 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, dos empresas con error 47.
  # Sistema presenta una congrats con warning de más de un error.
  # Sistema me permite acceder al detalle de cuáles fueron los errores y por qué.
    # #Given Reset wiremock
    Given   Get to wiremock /PaymentsErrorsDos
    And   Usuario realiza login bdsolqeyellow@gmail.com
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
    # And   sistema muestra elemento Mensaje de pago con texto Pagaste 1 servicio
    # And   sistema muestra elemento Mensaje de error de pago con texto Algunos servicios no se pudieron abonar correctamente
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
    And   sistema indica AnticipoEditableHigh de Anticipo (Gcia.) por un valor de 10055 pesos con vencimiento el 04/12/21 no pudo ser abonado

 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, todas las empresas con error 47.
  # Sistema presenta un warning de error en todos los pagos.
  # Sistema me permite reintentar el pago, acceder al detalle de cuáles fueron los errores y por qué.
    # #Given Reset wiremock
    And   Get to wiremock /PaymentsErrorsTodos
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    # And   sistema muestra elemento Mensaje de error de pago con texto Los servicios no se pudieron abonar correctamente
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
    And   sistema indica AnticipoEditableHigh de Anticipo (Gcia.) por un valor de 10055 pesos con vencimiento el 04/12/21 no pudo ser abonado
    And   sistema indica Multa140EditableAny de Multa 140 por un valor de 10055 pesos con vencimiento el 04/12/21 no pudo ser abonado

 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 41.
  # Sistema presenta una congrats con warning de error 41 en un pago.
  # Sistema me permite acceder al detalle de cuál fue el error y por qué.
    # #Given Reset wiremock
    And   Get to wiremock /PaymentsErrors41
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
    And   sistema muestra elemento detalle de error con texto Ocurrió un error inesperado. Por favor, intentalo nuevamente más tarde


 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 43.
  # Sistema presenta una congrats con warning de error 43 en un pago.
  # Sistema me permite acceder al detalle de cuál fue el error y por qué.
    # #Given Reset wiremock
    And   Get to wiremock /PaymentsErrors43
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
    And   sistema muestra elemento detalle de error con texto Esta factura se encuentra en revisión. Por favor, intentalo nuevamente más tarde
............
 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 44.
  Sistema presenta una congrats con warning de error 44 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    # #Given Reset wiremock
    And   Get to wiremock /PaymentsErrors44
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado

 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 50.
  Sistema presenta una congrats con warning de error 50 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    #Given Reset wiremock
    And   Get to wiremock /PaymentsErrors50
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 52.
  Sistema presenta una congrats con warning de error 52 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    #Given Reset wiremock
    And   Get to wiremock /PaymentsErrors52
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado

 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 56.
  Sistema presenta una congrats con warning de error 56 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    #Given Reset wiremock
    And   Get to wiremock /PaymentsErrors56
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 57.
  Sistema presenta una congrats con warning de error 57 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    And   Get to wiremock /PaymentsErrors57
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado

 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 58.
  Sistema presenta una congrats con warning de error 58 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    And   Get to wiremock /PaymentsErrors58
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado

 ................
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 60.
  Sistema presenta una congrats con warning de error 60 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    And   Get to wiremock /PaymentsErrors60
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
    And   sistema muestra elemento detalle de error con texto Superaste la cantidad de consultas diarias permitidas. Por favor, intentalo nuevamente mañana

 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 63.
  Sistema presenta una congrats con warning de error 63 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    And   Get to wiremock /PaymentsErrors63
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
    And   sistema muestra elemento detalle de error con texto Superaste el monto diario permitido. Por favor, intentalo nuevamente mañana
..........
 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 69.
  Sistema presenta una congrats con warning de error 69 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    And   Get to wiremock /PaymentsErrors69
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 70.
  Sistema presenta una congrats con warning de error 70 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    And   Get to wiremock /PaymentsErrors70
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 72.
  Sistema presenta una congrats con warning de error 72 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    And   Get to wiremock /PaymentsErrors72
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado

  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 73.
  Sistema presenta una congrats con warning de error 73 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    And   Get to wiremock /PaymentsErrors73
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 74.
  Sistema presenta una congrats con warning de error 74 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    And   Get to wiremock /PaymentsErrors74
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 75.
  Sistema presenta una congrats con warning de error 75 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    And   Get to wiremock /PaymentsErrors75
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
    #And   sistema muestra elemento detalle de error con texto Ocurrió un error inesperado. Por favor, intentalo nuevamente más tarde

 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 76.
  Sistema presenta una congrats con warning de error 76 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    #Given Reset wiremock
    And   Get to wiremock /PaymentsErrors76
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
    #And   sistema muestra elemento detalle de error con texto Ocurrió un error inesperado. Por favor, intentalo nuevamente más tarde

 
  Scenario: Usuario selecciona opción de pago masivo, elige más de un servicio y confirma pago, una empresa con error 77.
  Sistema presenta una congrats con warning de error 77 en un pago.
  Sistema me permite acceder al detalle de cuál fue el error y por qué.
    #Given Reset wiremock
    And   Get to wiremock /PaymentsErrors77
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
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Mensaje de error de pago
    Then  sistema indica EdenorConFactNoEditable de Edenor por un valor de 10011 pesos con vencimiento el 04/12/21 no pudo ser abonado
    #And   sistema muestra elemento detalle de error con texto Ocurrió un error inesperado. Por favor, intentalo nuevamente más tarde


