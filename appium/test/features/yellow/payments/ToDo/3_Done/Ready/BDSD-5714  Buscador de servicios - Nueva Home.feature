# language: en
@Payment_Regretion
@BDSD-5714
Feature:BDSD-5714 Buscador de servicios - Nueva Home



 Background: Reiniciar Datos
   Given Reset wiremock


  @Yellow_HappyPathRegretion
  @BDSD-5714_HappyPath
  Scenario: Usuario selecciona FAB, sistema muestra modal con la opcion de “buscar servicio”, usuario realiza flujo de pago.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona empresa Edenor del rubro Electricidad
    And   usuario ingresa el valor 123123123123 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Edenor 24/12/19 212.31
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar


  Scenario: Usuario realiza una busqueda de una empresa de recarga “ SUBE”, usuario realiza flujo de recarga.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor SUBE
    And   usuario selecciona empresa SUBE del rubro Transporte
    And   usuario selecciona Entendido
    And   usuario selecciona Ingresa el codigo de pago
    And   usuario ingresa el valor 6061268061710543 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Recargar 150
    And   usuario selecciona Pagar
    Then   usuario selecciona Finalizar



  Scenario: Usuario selecciona una empresa desde la pantalla principal del buscador,sistema redirige al flujo de pago.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona empresa Edenor del rubro Electricidad
    And   usuario ingresa el valor 123123123123 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Edenor 24/12/19 212.31
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar