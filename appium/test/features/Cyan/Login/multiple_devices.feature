# language: en
@TestLogin @Cyan
Feature: Multiple Linked Devices

    Background:
        Given existe el usuario bdsolqe@gmail.com
        Then el usuario ingresa a la pantalla de login

    Scenario: Limite de dispositivos alcanzado
        Given el usuario bdsolqe@gmail.com ya tiene 2 dispositivos vinculados
        When el usuario bdsolqe@gmail.com cierra sesion en todos los dispositivos
        Then ingresa el passcode 192837
        Then el usuario selecciona Ver dispositivos
        Then se visualiza listado de dispositivos vinculados



#   AGREGAR ESCENARIO DE DESVINCULACION REMOTA (DESDE Y PARA)
