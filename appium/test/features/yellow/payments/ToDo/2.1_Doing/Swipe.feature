  Feature: Swipe

  Background: Login
   Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
  
 Scenario: Usuario Paga un servicio 
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Ir a agenda
    And   usuario swipea (//android.view.ViewGroup[@content-desc="Agua AySA"])[1]
    And   usuario swipea (//android.view.ViewGroup[@content-desc="Agua AySA"])[2]
    And   usuario swipea //android.view.ViewGroup[@content-desc="Donaciones UNICEF"]
    And   usuario swipea //android.view.ViewGroup[@content-desc="Otros Servic Sparkling"]
    And   usuario swipea //android.view.ViewGroup[@content-desc="6061268378226217 SUBE"]


#     And   usuario completa el campo Buscar empresa con el valor Unicef
#     And   usuario selecciona empresa UNICEF del rubro Donaciones
#     And   usuario ingresa el valor 33557443 al campo Ingresa el codigo de pago
#     And   usuario selecciona Continuar
#     And   usuario ingresa el valor 2 al campo Ingresa el monto a pagar
#     And   usuario selecciona Continuar
#     And   usuario selecciona Pagar
#     Then  sistema indica Finalizar

