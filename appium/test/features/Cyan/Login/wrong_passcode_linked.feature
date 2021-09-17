# language: en
@TestLogin @Cyan
Feature: Login

    Background:
        Given existe el usuario bdsolqe@gmail.com
        Then el usuario ingresa a la pantalla de login
        Then ingresa el passcode 192837
        Then navega a perfil
        When cierra sesion


    Scenario: Se realiza un login exitoso despues de ingresar una vez mal el password
        Then ingresa el passcode 111111
        Then visualiza mensaje informando que quedan 2 intentos

    Scenario: Se realiza un login exitoso después de ingresar 2 veces mal el password
        Then ingresa el passcode 111111
        Then ingresa el passcode 222222
        When acepta reintentar
        Then visualiza mensaje informando que quedan 1 intentos
        Then ingresa el passcode 192837
        Then se visualiza la home

    Scenario: Se resetea la cuenta de ingresos incorrectos despues de loguearse correctamente
        Then ingresa el passcode 111111
        Then ingresa el passcode 222222
        When acepta reintentar
        Then visualiza mensaje informando que quedan 1 intentos
        Then ingresa el passcode 192837
        Then navega a perfil
        When cierra sesion
        Then ingresa el passcode 111111
        Then visualiza mensaje informando que quedan 2 intentos

    Scenario: se visualiza mensaje de cuenta bloqueada después de ingresar 3 veces mal el password
        Then ingresa el passcode 111111
        Then ingresa el passcode 222222
        When acepta reintentar
        Then visualiza mensaje informando que quedan 1 intentos
        Then ingresa el passcode 333333
        Then se visualiza mensaje de cuenta bloqueada






