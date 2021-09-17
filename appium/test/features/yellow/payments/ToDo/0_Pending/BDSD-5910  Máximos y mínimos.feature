Feature: BDSD-5910 Máximos y mínimos


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
   
  

# Happy Path

# Usuario selecciona empresa editable/sin vencimiento. 
# Sistema redirige al flujo de nueva recarga, usuario ingresa ID de usuario. 
# Sistema muestra pantalla para ingresar monto con hint debajo del campo de “ Mas de 200”, 
# usuario ingresa 400 y finaliza el pago.  
#  //*[@*='Monto mínimo $ 2']



 Scenario: Usuario selecciona empresa editable/sin vencimiento, Sistema muestra pantalla para ingresar monto con hint debajo del campo de “ Mas de 200”.
   When   usuario presiona Xpath //*[@*='PAGOS']
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Visa
    And   usuario selecciona empresa Visa del rubro Tarjetas de Credito
    And   usuario ingresa el valor 123456789012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Visa 31/05/19 990.00
    Then  sistema muestra Xpath //*[@*='Monto mínimo $ 2']



# Escenarios alternativos de validaciones/alertas

#          Usuario selecciona una empresa de recarga tal como “SUBE”, sistema muestra combos en la instancia de seleccion de monto. 
 Scenario: Usuario selecciona una empresa de recarga tal como “SUBE”, sistema muestra combos en la instancia de seleccion de monto. 
   When   usuario presiona Xpath //*[@*='PAGOS']
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Sube
    And   usuario selecciona empresa SUBE del rubro Transporte
    And   usuario selecciona Entendido
    And   usuario selecciona Ingresa el codigo de pago
    And   usuario ingresa el valor 6061268061710543 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
   Then   sistema indica Recargar 50
    And   sistema indica Recargar 100
    And   sistema indica Recargar 150
    And   sistema indica Recargar 200



#          Usuario selecciona una empresa con vencimiento sin monto editable, sistema no muestra hint de máximo ni minimos. 
#  Scenario: Usuario selecciona una empresa cD


#          Usuario selecciona una empresa la cual muestra un monto pero no se puede editar el monto por uno mayor, sistema no muestra “hint” de máximo ni minimos en la instancia de selección de monto. 
#  Scenario: Usuario selecciona una empresa la cual muestra un monto pero no se puede editar el monto por uno mayor, sistema no muestra “hint” de máximo ni minimos en la instancia de selección de monto. 
#    When   usuario presiona Xpath //*[@*='PAGOS']
#     And   usuario selecciona Mas acciones
#     And   usuario selecciona Buscar nuevo servicio
#     And   usuario completa el campo Buscar empresa con el valor ATM Inmob Mendoza
#     And   usuario selecciona empresa ATM Inmob Mendoza del rubro Impuestos Provinciales
#     And   usuario ingresa el valor 1234567890 al campo Ingresa el codigo de pago
#     And   usuario selecciona Continuar
#     And   usuario selecciona ATM Inmob Mendoza 04/12/21 10055.00


