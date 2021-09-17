Feature: BDSD-9598_InformaciónMovimientoDesafío



Background: Login
   Given Reset wiremock

    
# Escenarios

# Dado que el usuario recibió el premio de desafío del Sol de $1.500 en su CA:
# Usuario ingresa a la sección de actividad, sistema debe mostrar en la card “Desafio del Sol” , 
# monto acreditado, fecha y horario del mismo. 
# Usuario ingresa al detalle de la card, sistema debe mostrar: 
#  tipo de transacción: “Beneficio”. 
# nombre: Desafío del Sol
# Fecha de debito

#  Validación y/o alertas
# Dado que el usuario completo el desafío del Sol pero no se le acredito el dinero en cuenta: 
# Sistema de no debe mostrar card ni detalle en la sección de actividad. 

 Scenario: Dado que el usuario recibió el premio de desafío del Sol de $1.500 en su CA:
        Usuario ingresa a la sección de actividad, sistema debe mostrar en la card “Desafio del Sol” , 
        monto acreditado, fecha y horario del mismo. 
        Usuario ingresa al detalle de la card, sistema debe mostrar: 
        tipo de transacción: “Beneficio”. 
        nombre: Desafío del Sol
        Fecha de debito
    When  Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   usuario selecciona MOVIMIENTO DE BENEFICIOS
    Then  sistema indica tipo de transacción: “Beneficio”. 
    And   sistema indica nombre: Desafío del Sol
    And   sistema indica Fecha de debito