# language: en
@Cyan
Feature: Onboarding Unhappy Paths

    Scenario: Registro de un usuario no habilitado (fuera de whitelist)
        Given no existe un usuario onboardeado con DNI 36696108
        Then el DNI 36696108 no esta en la whitelist
        Then el DNI 36696109 esta habilitado para registrarse
        When el usuario comienza el registro
        Then el usuario acepta los requisitos de identificacion
        Then ingresa el DNI 36696109
        Then ingresa mail para registro
        Then se rechaza onboarding para DNI 36696108


    Scenario: Registro de un usuario que declara ser Sujeto Obligado y no lo es
        Given no existe un usuario onboardeado con DNI 36696108
        Then el DNI 36696108 esta habilitado para registrarse
        When el usuario comienza el registro
        Then el usuario acepta los requisitos de identificacion
        Then ingresa el DNI 36696108
        Then ingresa mail para registro
        Then se completan los datos biometricos para DNI 36696108
        Then continua el onboarding con DNI 36696108
        Then el usuario declara ser SO
        Then acepta su DDJJ
        Then el usuario declara una ocupacion
        Then desaparece el loading
        Then el usuario acepta primeros terminos y condiciones
        Then desaparece el loading
        Then ingresa el passcode 192837
        Then avanza a confirmacion de clave
        Then ingresa el passcode 192837
        Then desaparece el loading
        Then el usuario ingresa a Login
        Then ingresa el passcode 192837
        Then visualiza pantalla de DDJJ erronea

    Scenario: Resumir onboarding desde un dispositivo distinto al inicial
        Given no existe un usuario onboardeado con DNI 36696108
        Then el DNI 36696108 esta habilitado para registrarse
        When el usuario comienza el registro
        Then el usuario acepta los requisitos de identificacion
        Then ingresa el DNI 36696108
        Then ingresa mail para registro
        Then se completan los datos biometricos para DNI 36696108
        Then se modifica el deviceId del dispositivo onboardeado
        Then el usuario finaliza la aplicacion
        Then el usuario comienza el registro
        Then el usuario acepta los requisitos de identificacion
        Then ingresa el DNI 36696108
        Then ingresa mail para continuar onboarding
        Then se visualiza pantalla de Registro Iniciado en otro dispositivo
