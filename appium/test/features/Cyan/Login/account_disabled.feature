# language: en
@TestLogin @Cyan
Feature: Account Disabled

  Scenario: Envio de mail para Desbloqueo de cuenta
    Given el usuario bdsolqe@gmail.com se encuentra bloqueado
    Then el usuario ingresa a la pantalla de login
    Then ingresa el passcode 192837
    Then se visualiza mensaje de cuenta bloqueada
    When selecciona desbloquear cuenta
    When el usuario ingresa el correo bdsolqe@gmail.com
    When el usuario confirma el correo
    Then se envia mail

  Scenario: Desbloqueo de passcode con dispositivo no vinculado
    Given el usuario bdsolqe@gmail.com se encuentra bloqueado
    Then el usuario ingresa a la pantalla de login
    Then ingresa el passcode 192837
    Then se visualiza mensaje de cuenta bloqueada
    When selecciona desbloquear cuenta
    When el usuario ingresa el correo bdsolqe@gmail.com
    When el usuario confirma el correo
    Then se envia mail
    When el usuario intenta desbloquear la passcode de bdsolqe@gmail.com
    Then ingresa el passcode 147258
    Then avanza a confirmacion de clave
    Then ingresa el passcode 147258
    Then se le solicita volver a vincular su dispositivo

  Scenario: Desbloqueo de passcode con dispositivo vinculado
    Given existe el usuario bdsolqe@gmail.com
    Then el usuario ingresa a la pantalla de login
    Then ingresa el passcode 192837
    Then se visualiza la home
    Then navega a perfil
    When cierra sesion
    Then ingresa el passcode 111111
    Then ingresa el passcode 222222
    When acepta reintentar
    Then visualiza mensaje informando que quedan 1 intentos
    Then ingresa el passcode 333333
    Then se visualiza mensaje de cuenta bloqueada
    When selecciona desbloquear cuenta
    When el usuario ingresa el correo bdsolqe@gmail.com
    When el usuario confirma el correo
    Then se envia mail
    When el usuario intenta desbloquear la passcode de bdsolqe@gmail.com
    Then ingresa el passcode 147258
    Then avanza a confirmacion de clave
    Then ingresa el passcode 147258
    When finaliza el proceso
    Then el usuario ingresa a la pantalla de login