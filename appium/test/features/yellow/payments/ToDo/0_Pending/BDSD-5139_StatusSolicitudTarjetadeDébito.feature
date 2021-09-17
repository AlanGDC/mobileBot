Feature: BDSD-5139_StatusSolicitudTarjetadeDébito


 Background: Login
   Given Reset wiremock

    
# Escenarios

# Dado que el cliente solicito la tarjeta de débito de banco del sol: 
# Sistema debe mostrar un grado de avance en la card de la home principal.
# Sistema debe cambiar el estado del hito en la pantalla de detalle.
# Sistema debe mostrar evolución en la ilustración de la historia.
 Scenario: Dado que el cliente solicito la tarjeta de débito de banco del sol
        Sistema debe mostrar un grado de avance en la card de la home principal.
        Sistema debe cambiar el estado del hito en la pantalla de detalle.
        Sistema debe mostrar evolución en la ilustración de la historia.
    When  Get to wiremock /statusReadDebitOK
    And  Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   sistema indica desafio del sol estado en progreso uno hecho
    And   usuario selecciona desafio del sol estado en progreso uno hecho
    And   sistema indica Pedí tu tarjeta de débito. true
    And   sistema indica STEP_ONE_ICON
    
# # Dado que el cliente solicito la tarjeta de débito sin ingresar al detalle de “desafió del sol” previamente: 
# # Sistema debe mostrar un grado de avance en la card de la home principal. 
# # Sistema debe cambiar el estado del hito en la pantalla de detalle.
# # Sistema debe mostrar evolución en la ilustración de la historia.
Scenario: Dado que el cliente solicito la tarjeta de débito sin ingresar al detalle de “desafió del sol” previamente: 
        Sistema debe mostrar un grado de avance en la card de la home principal. 
        Sistema debe cambiar el estado del hito en la pantalla de detalle.
        Sistema debe mostrar evolución en la ilustración de la historia.
    When Get to wiremock /statusInicialDebitOK
    And  Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   sistema indica desafio del sol estado en progreso uno hecho
    And   usuario selecciona desafio del sol estado en progreso uno hecho
    And   sistema indica Pedí tu tarjeta de débito. true
    And   sistema indica STEP_ONE_ICON

# # Dado que un cliente existente ya solicito la TD previo al comienzo de la promoción: 
# # Sistema debería mostrar un grado de avance en la card de la home principal previo a que el usuario ingrese al detalle de la promoción. 
Scenario: Dado que un cliente existente ya solicito la TD previo al comienzo de la promoción: 
        Sistema debería mostrar un grado de avance en la card de la home principal previo a que el usuario ingrese al detalle de la promoción. 
    When Get to wiremock /statusInicialDebitOK
    And  Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   sistema indica desafio del sol estado en progreso uno hecho

 