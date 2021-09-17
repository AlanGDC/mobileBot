# language: en
@TermsAndConditions @Cyan

Feature: Terms and Conditions - App

  Background:
    Given existe el usuario bdsolqe@gmail.com
    Then el usuario ingresa a la pantalla de login


  @Issue:BDSD-2936
  Scenario: Solicitud de Aceptacion de Terminos y Condiciones unica por cada version
    Given se agrega una nueva version de terminos y condiciones
    Then ingresa el passcode 192837
    Then el usuario acepta terminos y condiciones
    Then se visualiza la home
    Then navega a perfil
    Then cierra sesion
    Then ingresa el passcode 192837
    Then se visualiza la home

  @Issue:BDSD-2936
  Scenario: Solicitud de Aceptacion de Terminos y Condiciones ante actualizacion
    Given se agrega una nueva version de terminos y condiciones
    Then ingresa el passcode 192837
    Then el usuario acepta terminos y condiciones
    Then se visualiza la home
    Then se agrega una nueva version de terminos y condiciones
    Then navega a perfil
    Then cierra sesion
    Then ingresa el passcode 192837
    Then el usuario acepta terminos y condiciones
    Then se visualiza la home