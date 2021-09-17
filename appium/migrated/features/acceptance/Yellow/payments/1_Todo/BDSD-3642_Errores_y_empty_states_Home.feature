@BDSD-3642
Feature: Errores y empty states Home


# Usuario edita un servicio agendado y habilita notificaciones



#  HOME sin Botones:
#  https://app.zeplin.io/project/5ced4c0acb8dd31e073043af/screen/5dd418c5e13b8145649aa32b
#  [En este momento no es posible acceder a Pagos. Por favor, intentalo nuevamente más tarde]
#  [Si el problema persiste comunicate con nosotros]
#  Acá el link me dirige al num de wpp
#  LOGIN
#  Caso 14 / 15 / 20  / 51 / 53 / 56 /  62 / 68
#    Usuario accede a seccion de pagos con una respuesta de error de login SOAP:14
#  @BDSD-3642_HappyPath
#  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP:68.
#    When  usuario accede a pagos
#    Then  sistema muestra elemento Mensaje de Error con texto En este momento no es posible acceder a Pagos. Por favor, intentalo nuevamente más tarde
#
##    Usuario accede a seccion de pagos con una respuesta de error de login SOAP:15
#  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP:15.

##    Usuario accede a seccion de pagos con una respuesta de error de login SOAP:20
#  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP:20.

##    Usuario accede a seccion de pagos con una respuesta de error de login SOAP:51
#  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP:51.

##    Usuario accede a seccion de pagos con una respuesta de error de login SOAP:53
#  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP:53.

##    Usuario accede a seccion de pagos con una respuesta de error de login SOAP:56
#  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP:56.

##    Usuario accede a seccion de pagos con una respuesta de error de login SOAP:62
#  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP:62.

##    Usuario accede a seccion de pagos con una respuesta de error de login SOAP:68
#  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP:68.





#  https://app.zeplin.io/project/5ced4c0acb8dd31e073043af/screen/5dd41c68dc936644d4a94a6e
#  [Superaste la cantidad de consultas diarias permitidas. Por favor, intentalo nuevamente en 24 hs]
#  LOGIN
#  Caso 60
#    Usuario accede a seccion de pagos con una respuesta de error de login SOAP:60
#  @BDSD-3642_HappyPath
#  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP:60.
#    When  usuario accede a pagos
#    Then  sistema muestra elemento Mensaje de Error con texto Superaste la cantidad de consultas diarias permitidas. Por favor, intentalo nuevamente en 24 hs

#
#
#  HOME con Botones:
  #  https://app.zeplin.io/project/5ced4c0acb8dd31e073043af/screen/5e04ce3bb877981601f9f83c
  #  Servicios - En este momento no es posible obtener tus vencimientos. Por favor, intentalo nuevamente más tarde.
  #  Caso 50 - Pagos
  @BDSD-3642_HappyPath
  Scenario: Usuario accede a seccion de pagos con una respuesta de error de login SOAP:60.
    When  usuario accede a pagos
    Then  sistema muestra elemento Mensaje de Error con texto Superaste la cantidad de consultas diarias permitidas. Por favor, intentalo nuevamente mañana

  #  https://app.zeplin.io/project/5ced4c0acb8dd31e073043af/screen/5e04ce3dea9fee1d08084ed5
  #  Recargas  - En este momento no es posible obtener tus recargas habituales. Por favor, intentalo nuevamente más tarde.
  #  Caso 50 - Recargas
  #


