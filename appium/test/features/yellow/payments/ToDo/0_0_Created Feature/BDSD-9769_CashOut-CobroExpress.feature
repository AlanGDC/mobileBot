Feature: BDSD-9769 CashOut CobroExpress
  Como usuario,
  Quiero agendar un servicio
  Para Identificarlo con un alias , Recibir alertas de vencimiento y Pagar recurrentemente.


# Escenarios

# Dado que el usuario ingresa a la sección de “ingreso y extracción de dinero”: 

# Sistema debe mostrar la empresa “Cobroexpress”  en la sección de “extracción” con el limite de dinero a extraer y los requerimientos necesarios. 

 Background: Reiniciar Datos
   Given Reset wiremock
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario presiona Xpath //*[@*='PAGOS']
   And   usuario presiona Xpath //*[@*='INICIO']


  Scenario: Usuario paga un servicio, elige agendar, aparece en lista de servicios agendados
    When  usuario presiona Xpath //*[@*='PAGOS']
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio