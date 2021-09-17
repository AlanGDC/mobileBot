Feature:  BDSD-8477	Actualización de Cash in RapiPago

 Background: Reiniciar Datos
   Given Reset wiremock
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  sistema indica Inicio banco del sol
    And   usuario selecciona selected, INICIO, tab, 1 out of 5


  Scenario: Usuario paga un servicio, elige agendar, aparece en lista de servicios agendados
    When  usuario selecciona ingresar o extraer dinero
    And   usuario selecciona Ver todas
    And   usuario selecciona extraer dinero
    And   sistema indica rapipago
    And   sistema indica text rapipago

    "Retirá dinero desde cualquier sucursal con tu tarjeta de débito y tu DNI."
    
    accessibilityLabel.rapiPago
    "Límite diario $ 50.000"
