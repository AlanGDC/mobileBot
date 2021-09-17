Feature: BDSD-6290_MasInformaciónyTYC



Background: Login
   Given Reset wiremock

    
# Dado que el cliente se encuentra en la sección de “desafío del sol”: 

# Sistema muestra opción de “mas información”. 

# Usuario selecciona la opción de “mas información”, 
# sistema redirige a pantalla full screen con información detallada del desafió, 
# botón de “entendido” y boton  de “términos y condiciones”. 
# Usuario selecciona botón de “términos y condiciones”, 
# sistema muestra pantalla full screen con términos y condiciones. 

 Scenario: Dado que el cliente se encuentra en la sección de “desafío del sol”: 
        Usuario selecciona la opción de “mas información”, 
        sistema redirige a pantalla full screen con información detallada del desafió, 
        botón de “entendido” y boton  de “términos y condiciones”. 
        Usuario selecciona botón de “términos y condiciones”, 
        sistema muestra pantalla full screen con términos y condiciones. 
    When  Get to wiremock /statusInicial
    And  Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   usuario selecciona accessibilityLabel.loyaltyProgramWidget
    And   usuario selecciona Mas información
    And   sistema muestra elemento top info text con texto En Banco del Sol podés participar del desafío por $ 1500 de regalo en tu caja de ahorro para que uses en lo que quieras. ¡Tenés 30 días para completar el desafío!
    And   sistema muestra elemento bottom info text con texto Una vez completado el desafío te vamos a depositar en un plazo máximo de 30 días, $ 1500 de regalo en tu caja de ahorro.
    And   sistema indica Pedí tu tarjeta de débito.
    And   sistema indica Realizá una transferencia a la cuenta de un tercero por al menos $ 300.
    And   sistema indica Realizá un pago o una recarga de servicios por al menos $ 200.
    And   usuario selecciona Términos y Condiciones

