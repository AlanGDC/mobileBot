  Feature: Features Criticos

  Background: Login
   Given Usuario realiza login aduarte@bdsol.com.ar
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
  
 Scenario: Usuario Paga un servicio 
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Unicef
    And   usuario selecciona empresa UNICEF del rubro Donaciones
    And   usuario ingresa el valor 33557443 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 2 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  sistema indica Finalizar

  Scenario: Usuario realiza una Transferencia
    When  usuario selecciona TRANSFERENCIAS, tab, 3 out of 5
    And   usuario selecciona FERNANDO DANIEL FREZZOTTI
    And   usuario selecciona FERNANDO DANIEL FREZZOTTI
    And   usuario selecciona Transferir
    And   usuario ingresa el valor 1 al campo Ingresar monto
    And   usuario selecciona Continuar
    ##No pare existir el label And   usuario selecciona Transferir
    And   usuario presiona Xpath //*[contains(@text,"Transferir")]
    And   usuario selecciona Finalizar

Scenario: Usuario comprueba en la Cuenta la taza anual renumerada
    When  usuario selecciona CUENTA, tab, 2 out of 5
    And   usuario selecciona Tasa anual remunerada
    And   usuario selecciona Caja de Ahorro Remunerada


Scenario: Usuario revisa informacion Tarjeta de Debito
    When  usuario selecciona TARJETAS, tab, 4 out of 5
    And   usuario selecciona Virtual
    And   usuario presiona Xpath //*[contains(@text,"Activar tarjeta virtual")]
    And   usuario selecciona informaci??n
    And   usuario selecciona Nombre
    And   usuario selecciona N??mero de la tarjeta
    And   usuario selecciona C??digo de seguridad
    And   usuario selecciona Fecha de vencimiento






