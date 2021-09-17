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

# Escenarios

# Escenarios

# Usuario completa los 3 hitos del desafío, 
# sistema transfiere automáticamente la suma correspondiente a la promoción. 
 Scenario: Usuario completa los 3 hitos del desafío, sistema transfiere automáticamente la suma correspondiente a la promoción. 
    Usuario completa los 3 hitos del desafío, 
    sistema transfiere automáticamente la suma correspondiente a la promoción. 
    When  sistema indica desafio del sol estado inicial
    And   usuario selecciona desafio del sol estado inicial
    And   sistema indica Pedí tu tarjeta de débito Listo.
    And   sistema no muestra el valor Imagen Empty  

# Validación de errores y alertas

# Usuario no completa alguno de los 3 desafíos, 
# sistema NO transfiere automáticamente la suma correspondiente a la promoción. 

 Scenario: Usuario no completa alguno de los 3 desafíos, sistema NO transfiere automáticamente la suma correspondiente a la promoción. 
    Usuario no completa alguno de los 3 desafíos, 
    sistema NO transfiere automáticamente la suma correspondiente a la promoción. 
    When sistema indica desafio del sol estado inicial
    And   usuario selecciona desafio del sol estado inicial
    And   sistema indica Pedí tu tarjeta de débito Listo.
    And   sistema no muestra el valor Imagen Empty  