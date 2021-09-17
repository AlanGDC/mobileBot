# language: en
@Payment_Regretion
@BDSD-1558
Feature:BDSD-1558 Recargas Habituales



#  Background:
#    Given existe el usuario con passcode 192837
#    And el usuario ingresa a la pantalla de login
#    And el usuario acepta los requisitos de identificacion
#    And el usuario ingresa el correo bdsolqe@gmail.com
#    And el usuario confirma el correo
#    And accedo por magic link con mail bdsolqe@gmail.com
#    And ingresa el passcode 192837
#    And el usuario acepta terminos y condiciones
#    And se visualiza la home

  Background: Reiniciar Datos
    Given Reset wiremock
    When  usuario accede a pagos

#Happy path:
#Usuario realiza recarga  → sistema retiene información de ID de usuario.
  #@Payment_Regretion_HappyPath
  @BDSD-1558_HappyPath
  Scenario: Usuario Realiza Recarga, sistema retiene informacion de ID de usuario.
    When usuario accede a pagos
    And   usuario selecciona Seccion de recargas
    And   usuario selecciona Empresas de Transporte
    And   usuario selecciona SUBE
    And   usuario selecciona Nueva Recarga
    And   usuario completa el campo campo de texto con el valor 6061268061710543
    And   usuario selecciona Continuar
    And   usuario hace click importe  Recargar 150
    And   usuario selecciona Editar Alias Recarga
    And   usuario completa el campo campo de texto con el valor SubeRecarga
    And   usuario selecciona Guardar nuevo alias de servicio
    And   usuario presiona Pagar
    And   usuario presiona Finalizar
    And   usuario selecciona Seccion de recargas
    Then  sistema presenta mensaje Seleccionar Favorito SubeRecarga
    And   usuario selecciona Empresas de Transporte
    And   usuario selecciona SUBE
    And   sistema presenta mensaje Seleccionar Favorito SubeRecarga


##Realizar una recarga a traves de shortcut:
##Usuario tapea card de recarga favorita en home de recargas que se identifica con un alias personalizado y la estrella amarilla, sistema auto completa datos de cliente y ofrece ingresar monto.
  Scenario: Usuario tapea card de recarga favorita en home de recargas, sistema auto completa datos de cliente y ofrece ingresar monto.
    When usuario accede a recargas
#    And  usuario selecciona Recarga Favorita ALIAS
#    And  usuario selecciona Importe
#    And  usuario presiona Confirmar
#    Then sistema presenta mensaje Recarga Efectuada
#    And  usuario presiona Finalizar
#
#
##Usuario tapea recarga reciente al entrar a empresas que se identifica con el numero de tarjeta/cliente y con la estrella vacía , sistema auto completa datos de cliente y ofrece ingresar monto.
  Scenario: Usuario tapea recarga reciente, sistema auto completa datos de cliente y ofrece ingresar monto.
    When usuario accede a recargas
#    And  usuario selecciona Recarga Reciente NROTARJETA
#    And  usuario selecciona Importe
#    And  usuario presiona Confirmar
#    Then sistema presenta mensaje Recarga Efectuada
#    And  usuario presiona Finalizar
#

##Realizar una recarga a traves de shortcut:
##Usuario tapea card de recarga favorita en home de recargas que se identifica con un alias personalizado y la estrella amarilla, sistema auto completa datos de cliente y ofrece ingresar monto.
  Scenario: Usuario tapea card de recarga favorita en home de recargas, sistema auto completa datos de cliente y ofrece ingresar monto.
    When usuario accede a recargas
#    And  usuario selecciona Recarga Favorita ALIAS
#    And  usuario selecciona Importe
#    And  usuario presiona Confirmar
#    Then sistema presenta mensaje Recarga Efectuada
#    And  usuario presiona Finalizar
#
#
##Usuario tapea recarga reciente al entrar a empresas que se identifica con el numero de tarjeta/cliente y con la estrella vacía , sistema auto completa datos de cliente y ofrece ingresar monto.
  Scenario: Usuario tapea recarga reciente, sistema auto completa datos de cliente y ofrece ingresar monto.
    When usuario accede a recargas
#    And  usuario selecciona Recarga Reciente NROTARJETA
#    And  usuario selecciona Importe
#    And  usuario presiona Confirmar
#    Then sistema presenta mensaje Recarga Efectuada
#    And  usuario presiona Finalizar
#
##
##Desfavoritear una recarga:
##Usuario desfavoritea una recarga desde home de recargas al tocar la estrella amarilla, sistema muestra modal preguntando si esta seguro que quiere desfavoritear y no muestra mas la recarga en la home de recargas pero si aparece en home de pagos como una recarga reciente con numero de tarjeta/cliente en vez de alias personalizado.
  Scenario: Usuario desfavoritea una recarga desde home de recargas, sistema no muestra mas la recarga en la home.
    When usuario accede a recargas
    And usuario desfavoritea recarga ALIAS
#    # sistema muestra modal preguntando si esta seguro que quiere desfavoritear
#    And sistema muestra modal preguntando si esta seguro que quiere desfavoritear
#    # no muestra mas la recarga en la home de recargas
#    # pero si aparece en home de pagos como una recarga reciente
#    And usuario confirma la eliminacion
#    And sistema muestra mensaje Recarga Olvidada
#    And sistema muestra recarga como Reciente NROTARJETAALIAS
#


#Usuario desfavoritea una recarga desde home de empresas al tocar la estrella amarilla,
# sistema muestra modal preguntando si esta seguro que quiere desfavoritear
# y muestra la recarga como reciente con numero de tarjeta/cliente en vez de alias personalizado.

#Usuario desfavoritea una recarga favorita desde home de recargas
# y no tiene otros favoritos,
# sistema muestra empty state.

#Usuario desfavoritea una recarga favorita desde home de empresas
# y no tiene otros favoritos,
# sistema muestra empty state o solo recargas favoritas.


#Favoritear una recarga:
#Usuario favoritea una recarga reciente desde la home de empresas,
# sistema muestra modal para ingresar un alias personalizado
# y luego muestra la recarga como favorita en home de recargas y home de empresas.


#Usuario favoritea una recarga reciente desde la home de empresas pero solo tenia 1 recarga reciente, sistema no muestra recargas recientes.



#Usuario swipea una recarga favorita, sistema ofrece seleccionar la opción de editar.
#Usuario selecciona la opción de editar al swipear una recarga favorita, sistema muestra:
#    Opción de editar alias.
#    Opción de tapear la estrella amarilla de favoritos para que sea una recarga reciente y deje de ser favorito ( no muestra modal preguntando).
#
#Otros casos:
#Usuario ingresa a home de recargas y no elige shortcut de favorito o reciente → navega como nueva recarga.
#Usuario no realizo recargas previamente → sistema muestra empty state  →  usuario realiza flujo de nueva recarga.
#
#
#Validación de errores/ alertas:
#Usuario no selecciono ninguna recarga como favorito, sistema no debe mostrar recargas favoritas en home ni en empresa.
#Usuario olvida favorito al entrar a empresas ( home de empresas), sistema debe olvidar recarga en home de recargas.
#Sistema no permite olvidar recarga reciente desde home de empresas.
#Usuario edita alias de una recarga favorita, sistema debe cambiar alias de recarga en home de recargas y en home de empresas.
#Usuario no tiene suficiente dinero en su C/A, sistema no deja avanzar y muestra mensaje de error.
#Usuario no ingresa un monto dentro los parámetros informados, sistema no deja avanzar.
#Usuario ingresa un monto menor a $60 o mayor a $500 cuando selecciona la empresa REDBUS (Cordoba o Tucuman), sistema no deja avanzar.
#Usuario ingresa un monto menor a $100 o mayor a $500 cuando selecciona la empresa REDBUS (Mendoza), sistema no deja avanzar.
#Usuario ingresa un monto menor a $50 o mayor a $500 cuando selecciona la empresa SAETA, sistema no deja avanzar.


