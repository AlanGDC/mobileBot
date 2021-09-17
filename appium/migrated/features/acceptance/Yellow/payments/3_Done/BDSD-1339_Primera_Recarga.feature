@BDSD-1339
Feature: BDSD-1339 Primera Recarga

  Como Usuario,
  Quiero encontrar una empresa a través de la app de BDS.
  Para poder hacer la recarga de un servicio.

  Background: Reiniciar Datos
    Given Reset wiremock
    When  usuario accede a pagos
  
# Happy path SUBE:
#  Usuario recarga servicio OK
  #@Payment_Regretion_HappyPath
  @BDSD-1339_HappyPath
  Scenario: Usuario recarga servicio, sistema muestra el mismo con su alias en home de recargas
    When  usuario accede a pagos
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
    And   sistema presenta mensaje Seleccionar Favorito SubeRecarga


##  Usuario ingresa a recargas, sistema debe mostrar rubros.
  Scenario: Usuario ingresa a recargas, sistema debe mostrar rubros
    When  usuario accede a pagos
    And   usuario selecciona Recargas
    Then  sistema presenta mensaje Empresas de Transporte
    And   sistema presenta mensaje Empresas de celular
    And   sistema presenta mensaje Empresas de Televisión


# N/A las empresas son dinamicas
#  Usuario elige rubro “transporte”, sistema debe mostrar empresas de transporte.


#  Usuario elige empresa SUBE, sistema debe ofrecer ingresar 16 digitos.
  Scenario: Usuario elige empresa SUBE, sistema debe ofrecer ingresar 16 digitos
    When  usuario accede a pagos
    And   usuario selecciona Recargas
    And   usuario selecciona Empresas de Transporte
    And   usuario selecciona SUBE
    And   usuario selecciona Recargar 50
    Then  sistema presenta mensaje [n] dígitos

#  Usuario ingresa nro de tarjeta y confirma, sistema muestra montos pre determinables:  50, 100, 150, 200, 250, 300, 400, 500, 600, 700, 800.
  Scenario: Usuario elige empresa SUBE, sistema muestra los siguientes montos: 50, 100, 150, 200, 250, 300, 400, 500, 600, 700, 800.
    When  usuario accede a pagos
    And   usuario selecciona Recargas
    And   usuario selecciona Empresas de Transporte
    And   usuario selecciona SUBE
    And   usuario completa el campo Ingresa el codigo de pago con el valor 1234567890123456
    And   usuario presiona Continuar
    Then  sistema presenta mensaje Recargar 50
    And   sistema presenta mensaje Recargar 100
    And   sistema presenta mensaje Recargar 150
    And   sistema presenta mensaje Recargar 200

#  Usuario elige monto, sistema muestra pantalla de pre confirmación.
  Scenario: Usuario ingresa nro de tarjeta y confirma, sistema muestra montos pre determinables
    When  usuario accede a pagos
    And   usuario selecciona Recargas
    And   usuario selecciona Empresas de Transporte
    And   usuario selecciona SUBE
    And   usuario completa el campo Ingresa el codigo de pago con el valor 1234567890123456
    And   usuario selecciona Recargar 50
    Then  sistema presenta mensaje Vas a pagar a SUBE 50 pesos

#  Sistema muestra pantalla de pre confirmación,  usuario debe poder editar alias y confirmar pago.
  Scenario: Usuario ingresa nro de tarjeta y confirma, sistema muestra montos pre determinables
    When  usuario accede a pagos
    And   usuario selecciona Recargas
    And   usuario selecciona Empresas de Transporte
    And   usuario selecciona SUBE
    And   usuario completa el campo Ingresa el codigo de pago con el valor 1234567890123456
    And   usuario presiona Continuar
    And   usuario selecciona Recargar 50
    And   usuario selecciona Editar alias de tarjeta
    And   usuario completa el campo Editar alias de tarjeta de hasta [n máximo] caracteres con el valor SUBETE
    And   usuario selecciona Guardar nuevo alias de tarjeta
    And   usuario presiona Pagar
    Then  usuario presiona Finalizar

#  Usuario finaliza flujo con empresa SUBE, sistema muestra bajada “ Recarga efectuada, Acordate de acreditar la carga en una Terminal Automática SUBE”.
  Scenario: Usuario recarga servicio, sistema muestra el mismo con su alias en home de recargas
    When  usuario accede a pagos
    And   usuario selecciona Recargas
    And   usuario selecciona Empresas de Transporte
    And   usuario selecciona SUBE
    And   usuario completa el campo Ingresa el codigo de pago con el valor 1234567890123456
    And   usuario presiona Continuar
    And   usuario selecciona Recargar 50
    And   usuario presiona Pagar
    Then  sistema presenta mensaje Recarga efectuada Acordate de acreditar la carga en una Terminal Automática SUBE


##  Sistema debe guardar comprobante por default.


#volver para atrás y cambiar ID de producto sin guardar el monto ingresado/elegido.#  Happy path:
###  Usuario elige rubro, sistema debe permitir volver para atrás y cambiar de rubro.
###  Usuario elige empresa dentro de rubro, sistema debe volver para atrás y cambiar de empresa.
##
##
###  Usuario elige empresa MOVI, sistema debe ofrecer ingresar 16 digitos.
##  Scenario: Usuario elige empresa MOVI, sistema debe ofrecer ingresar 16 digitos.
##    When  usuario accede a pagos
##    And   usuario presiona en Recargas
##    And   usuario selecciona Recargas categoria Transporte
##    And   usuario selecciona empresa MOVI
##    Then  sistema ofrece ingresar 16 digitos
##
###  Usuario elige empresa SAETA, sistema debe ofrecer ingresar de 7 a 8 digitos.
##  Scenario: Usuario elige empresa SAETA, sistema debe ofrecer ingresar de 7 a 8 digitos.
##    When  usuario accede a pagos
##    And   usuario presiona en Recargas
##    And   usuario selecciona Recargas categoria Transporte
##    And   usuario selecciona empresa SAETA
##    Then  sistema ofrece ingresar 8 digitos
##
###  Usuario elige empresa REDBUS, sistema debe ofrecer ingresar de 7 a 8 digitos.
##  Scenario: Usuario elige empresa REDBUS, sistema debe ofrecer ingresar de 7 a 8 digitos.
##    When  usuario accede a pagos
##    And   usuario presiona en Recargas
##    And   usuario selecciona Recargas categoria Transporte
##    And   usuario selecciona empresa REDBUS
##    Then  sistema ofrece ingresar 8 digitos
##
##
###  Usuario elige empresa DirectTV, sistema debe ofrecer ingresar 16 digitos que comiencen con 057.
##  Scenario: Usuario elige empresa DirectTV, sistema debe ofrecer ingresar 16 digitos que comiencen con 057.
##    When  usuario accede a pagos
##    And   usuario presiona en Recargas
##    And   usuario selecciona Recargas categoria Telecomunicación
##    And   usuario selecciona empresa Claro
##    Then  sistema ofrece ingresar 16 digitos
##
###  Usuario elige cualquier empresa telefónica, sistema debe ofrecer ingresar (no menos ni mas) de 10 dígitos.
##  Scenario: Usuario elige cualquier empresa telefónica, sistema debe ofrecer ingresar (no menos ni mas) de 10 dígitos.
##    When  usuario accede a pagos
##    And   usuario presiona en Recargas
##    And   usuario selecciona Recargas categoria Celular
##    And   usuario selecciona empresa Claro
##    Then  sistema ofrece ingresar 16 digitos
##
###Monto:
###
###  Usuario confirma numero de tarjeta de transporte, sistema debe ofrecer monto predeterminado.
###  Usuario elige empresa SUBE, sistema muestra los siguientes montos: 50, 100, 150, 200, 250, 300, 400, 500, 600, 700, 800.
##  Scenario: Usuario elige empresa SUBE, sistema muestra los siguientes montos: 50, 100, 150, 200, 250, 300, 400, 500, 600, 700, 800.
##    When  usuario accede a pagos
##    And   usuario presiona en Recargas
##    And   usuario selecciona Recargas categoria Transporte
##    And   usuario selecciona empresa SUBE
##    And   usuario ingresa el nro de codigo SUBE con el valor 1234 y confirma
##    Then  sistema muestra montos pre determinados : 50, 100, 150, 200
##
###  Usuario elige empresa MOVI, sistema muestra los siguientes montos: 50, 100, 798, 1507
##  Scenario: Usuario elige empresa MOVI, sistema muestra los siguientes montos: 50, 100, 798, 1507
##    When  usuario accede a pagos
##    And   usuario presiona en Recargas
##    And   usuario selecciona Recargas categoria Transporte
##    And   usuario selecciona empresa MOVI
##    And   usuario ingresa el nro de codigo MOVI con el valor 1234 y confirma
##    Then  sistema muestra montos pre determinados : 50, 100, 798, 1507
##
###  Usuario elige empresa SAETA, sistema debe ofrecer cargar cualquier monto desde 50 hasta 500.
##  Scenario: Usuario elige empresa SAETA, sistema debe ofrecer cargar cualquier monto desde 50 hasta 500.
##    When  usuario accede a pagos
##    And   usuario presiona en Recargas
##    And   usuario selecciona Recargas categoria Transporte
##    And   usuario selecciona empresa SAETA
##    And   usuario ingresa el nro de codigo SAETA con el valor 1234 y confirma
##    Then  sistema permite ingresar un monto entre 50 a 500
##
###  Usuario elige empresa REDBUS ( Cordoba o Tucuman), sistema debe ofrecer cargar cualquier monto desde 60 a 500.
##  Scenario: Usuario elige empresa REDBUS ( Cordoba o Tucuman), sistema debe ofrecer cargar cualquier monto desde 60 a 500.
##    When  usuario accede a pagos
##    And   usuario presiona en Recargas
##    And   usuario selecciona Recargas categoria Transporte
##    And   usuario selecciona empresa REDBUSCordoba
##    And   usuario ingresa el nro de codigo REDBUSCordoba con el valor 1234 y confirma
##    Then  sistema permite ingresar un monto entre 60 a 500
##
###  Usuario elige empresa REDBUS (Mendoza), sistema debe ofrecer cargar cualquier monto desde 100 a 500.
##  Scenario: Usuario elige empresa REDBUS ( Cordoba o Tucuman), sistema debe ofrecer cargar cualquier monto desde 60 a 500.
##    When  usuario accede a pagos
##    And   usuario presiona en Recargas
##    And   usuario selecciona Recargas categoria Transporte
##    And   usuario selecciona empresa REDBUSMendoza
##    And   usuario ingresa el nro de codigo REDBUSMendoza con el valor 1234 y confirma
##    Then  sistema permite ingresar un monto entre 100 a 500
##
###  Usuario ingresa/elige monto , sistema debe permitir


