# language: en
@Payment_Regretion
@BDSD-5894
Feature:BDSD-5894  Modal Pagos - Home Principal



 Background: Reiniciar Datos
   Given Reset wiremock




  @Yellow_HappyPathRegretion
  @BDSD-5894_HappyPath
  Scenario: Usuario selecciona FAB, sistema muestra modal con la opcion de “buscar servicio”, usuario realiza flujo de pago.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   sistema indica Recargar SubeRecarga
    And   usuario selecciona INICIO, tab, 1 out of 5
    And   usuario presiona Xpath //*[contains(@text,'Pagar')]
    And   usuario selecciona Pagar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona empresa Edenor del rubro Electricidad
    And   usuario ingresa el valor 123123123123 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Edenor 24/12/19 212.31
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar


  Scenario: Usuario selecciona el widget de “pagar”, sistema muestra modal con la opción de “buscar nuevo servicio” y “ pagar próximos vencimientos”..
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   sistema indica Recargar SubeRecarga
    And   usuario selecciona INICIO, tab, 1 out of 5
    And   usuario presiona Xpath //*[contains(@text,'Pagar')]
    And   usuario selecciona Pagar próximos vencimientos
    And   usuario selecciona Seleccionar todos
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar


  Scenario: Usuario selecciona el widget de “pagar”, sistema muestra modal solo con la opción de “ buscar nuevo servicio”.

    When  Get to wiremock /emptyState
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   usuario presiona Xpath //*[contains(@text,'Pagar')]
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona empresa Edenor del rubro Electricidad
    And   usuario ingresa el valor 123123123123 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Edenor 24/12/19 212.31
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar



  Scenario: Usuario selecciona el widget de “pagar”, sistema muestra modal con la opción de “buscar nuevo servicio” y “pagar próximos vencimientos”.
    When  Get to wiremock /ProxVenc1Fact
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   sistema indica Recargar SubeRecarga
    And    usuario selecciona INICIO, tab, 1 out of 5
    And   usuario presiona Xpath //*[contains(@text,'Pagar')]
    And   usuario selecciona Pagar próximos vencimientos
    And   usuario selecciona Seleccionar todos
    And   usuario selecciona Nuevo pago
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar
