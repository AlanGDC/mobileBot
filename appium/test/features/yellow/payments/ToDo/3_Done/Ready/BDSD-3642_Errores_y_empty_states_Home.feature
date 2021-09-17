@BDSD-3642
Feature: BDSD-3642 Errores y empty states Home



 Background: Reiniciar Datos
   Given Reset wiremock

  @Yellow_HappyPathRegretion
  @BDSD-3642_HappyPath
  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP 14.
    Given Get to wiremock /LoginPaymentsErrors14
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    Then  usuario presiona Xpath //*[contains(@text,"Algo salió mal")]
    And   usuario presiona Xpath //*[contains(@text,"En este momento no es posible acceder a Pagos. Volvé a intentarlo")]

  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP 15.
    Given Get to wiremock /LoginPaymentsErrors15
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    Then  usuario presiona Xpath //*[contains(@text,"Algo salió mal")]
    And   usuario presiona Xpath //*[contains(@text,"En este momento no es posible acceder a Pagos. Volvé a intentarlo")]

  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP 20.
    Given Get to wiremock /LoginPaymentsErrors20
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    Then  usuario presiona Xpath //*[contains(@text,"Algo salió mal")]
    And   usuario presiona Xpath //*[contains(@text,"En este momento no es posible acceder a Pagos. Volvé a intentarlo")]

  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP 51.
    Given Get to wiremock /LoginPaymentsErrors51
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    Then  usuario presiona Xpath //*[contains(@text,"Algo salió mal")]
    And   usuario presiona Xpath //*[contains(@text,"En este momento no es posible acceder a Pagos. Volvé a intentarlo")]

  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP 53.
    Given Get to wiremock /LoginPaymentsErrors53
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    Then  usuario presiona Xpath //*[contains(@text,"Algo salió mal")]
    And   usuario presiona Xpath //*[contains(@text,"En este momento no es posible acceder a Pagos. Volvé a intentarlo")]

  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP 56.
    Given Get to wiremock /LoginPaymentsErrors56
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    Then  usuario presiona Xpath //*[contains(@text,"Algo salió mal")]
    And   usuario presiona Xpath //*[contains(@text,"En este momento no es posible acceder a Pagos. Volvé a intentarlo")]

  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP 62.
    Given Get to wiremock /LoginPaymentsErrors62
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    Then  usuario presiona Xpath //*[contains(@text,"Algo salió mal")]
    And   usuario presiona Xpath //*[contains(@text,"En este momento no es posible acceder a Pagos. Volvé a intentarlo")]

  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP 68.
   Given   Get to wiremock /LoginPaymentsErrors68
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    Then  usuario presiona Xpath //*[contains(@text,"Algo salió mal")]
    And   usuario presiona Xpath //*[contains(@text,"En este momento no es posible acceder a Pagos. Volvé a intentarlo")]


  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP 60.
    Given Get to wiremock /LoginPaymentsErrors60
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    Then  sistema muestra elemento titulo mensaje de error con texto Superaste la cantidad de consultas diarias permitidas
    And   sistema muestra elemento bajada mensaje de error con texto Volvé a intentarlo mañana.


  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP 50.
   Given Get to wiremock /LoginPaymentsErrors50
   And   Usuario realiza login bdsolqeyellow@gmail.com
   And   usuario selecciona Teclado Clave Tecla 1
   And   usuario selecciona Teclado Clave Tecla 4
   And   usuario selecciona Teclado Clave Tecla 7
   And   usuario selecciona Teclado Clave Tecla 2
   And   usuario selecciona Teclado Clave Tecla 5
   And   usuario selecciona Teclado Clave Tecla 8
   When  usuario selecciona PAGOS, tab, 5 out of 5
   Then  usuario presiona Xpath //*[contains(@text,"Algo salió mal")]
   And   usuario presiona Xpath //*[contains(@text,"En este momento no es posible acceder a Pagos. Volvé a intentarlo")]





