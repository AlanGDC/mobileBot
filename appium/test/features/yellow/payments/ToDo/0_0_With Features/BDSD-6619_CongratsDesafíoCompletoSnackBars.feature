Feature: BDSD-6619_CongratsDesafíoCompletoSnackBars



Background: Login
   Given Reset wiremock

    
# Escenarios

# Usuario realiza el primer hito, 
# sistema muestra snack bar en la ultima home donde el usuario realizo el hito. 
 Scenario: Usuario realiza el primer hito, sistema muestra snack bar en la ultima home donde el usuario realizo el hito. 
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
    And   Get to wiremock /statusInicial
    Then  sistema indica LABELPRIMERHITO

# Usuario realiza el primer hito, 
# sistema NO muestra snack bar en un flujo.

# Usuario completa el desafío, 
# sistema muestra snackbar luego de la congrats de felicitación en la home de donde el ususario realizo el hito. 

# Usuario completa el desafío, 
# sistema NO muestra snackbar luego de la congrats de felicitación si el usuario se encuentra en algún flujo. 




