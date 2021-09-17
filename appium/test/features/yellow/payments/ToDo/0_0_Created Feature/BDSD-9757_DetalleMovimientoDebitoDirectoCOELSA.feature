
Feature: BDSD-6371_TratamientoTransferenciaAutomática

 Background: Login
   Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona selected, INICIO, tab, 1 out of 5

  Scenario: Usuario paga un servicio, elige agendar, aparece en lista de servicios agendados
    When  usuario selecciona selected, INICIO, tab, 1 out of 5
    And   usuario abre notificaciones
    And   usuario selecciona Ir a Pagar
    And   usuario cierra notificaciones
    And   usuario selecciona Volver
# Escenarios

# Dado que el usuario tiene adherido un debito automático de Cablevisión en la CA de BDS: 

# Usuario ingresa a la sección de actividad, sistema debe mostrar en la card
#  “debito aut” , el nombre de la empresa., fecha de debito y horario del mismo. 

# Usuario ingresa al detalle de la card, 
# sistema debe mostrar tipo de transacción, 
# # nombre de la empresa, 
# fecha de debito y medio de pago.  

