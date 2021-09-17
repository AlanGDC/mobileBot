# language: en
@Payment_Regretion
@BDSD-5700
Feature:BDSD-5700 Recargas - Nueva Sección



 Background: Reiniciar Datos
   Given Reset wiremock

  @Yellow_HappyPathRegretion
  @BDSD-5700_HappyPath
  Scenario: Sistema debe mostrar en la home de pagos 3 widgets con su respectiva ilustración de recargas agendadas y utilizadas y 1 widget con la opción de “ recargar”
  Sistema debe mostrar en la home de pagos 3 widgets con su respectiva ilustración de recargas agendadas y
  utilizadas y 1 widget con la opción de “ recargar”.
  Usuario selecciona una de las recargas agendadas.
  Sistema dirige al usuario a la pantalla de confirmación de monto dentro del flujo de recarga.
  Usuario finaliza flujo de recarga, sistema redirige al usuario a la home de pagos.
    When   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And  usuario selecciona PAGOS, tab, 5 out of 5
    And   sistema indica Recargar SubeRecarga
    And   usuario selecciona Recargar SubeRecarga
    And   usuario selecciona Recargar 150
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar
    Then  sistema indica Recargar SubeRecarga

  

  Scenario: Usuario no realizo ninguna recarga, sistema no muestra la sección de recargas en home.
    When  Get to wiremock /emptyState
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   sistema no muestra el valor SubeRecarga
    And   sistema no muestra el valor SubeRecarga2
    And   sistema no muestra el valor SubeRecarga3
    
Scenario: Usuario esta por realizar una recarga por primera vez, sistema muestra en la instancia de confirmación un toggle.
    When  Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Sube
    And   usuario selecciona empresa SUBE del rubro Transporte
    And   usuario selecciona Entendido
    And   usuario selecciona Ingresa el codigo de pago
    And   usuario ingresa el valor 6061268061710543 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Recargar 150
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar
    Then  sistema indica Recargar SubeRecarga
 
