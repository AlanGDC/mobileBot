# language: en
@Payment_Regretion
@BDSD-5895
Feature:BDSD-5895 Modal recargas - Home



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

    And    usuario selecciona INICIO, tab, 1 out of 5
    And   usuario presiona Xpath //*[contains(@text,'Recargar')]
    And   usuario selecciona Recargar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Sube
    And   usuario selecciona empresa SUBE del rubro Transporte
    And   usuario selecciona Entendido
    And   usuario selecciona Ingresa el codigo de pago
    And   usuario ingresa el valor 6061268061710543 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Recargar 150
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar
    And   sistema indica Xpath //*[contains(@text,'SubeRecarga2')]




  Scenario: Usuario no realizo ninguna recarga, sistema no muestra ningún widget y solo muestra el botón de “Realizar nueva recarga”.  
    When  Get to wiremock /emptyState
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   usuario presiona Xpath //*[contains(@text,'Recargar')]
    And   sistema no muestra el valor Recargar SubeRecarga
    And   sistema no muestra el valor Recargar nuevo servicio


