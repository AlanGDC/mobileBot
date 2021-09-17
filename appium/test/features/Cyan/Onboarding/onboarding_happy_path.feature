# language: en
@Cyan
Feature: Onboarding Happy Path

    Scenario: Registro de un usuario no registrado (sin biometria)
        Given no existe un usuario onboardeado con DNI 36696108
        Then el DNI 36696108 esta habilitado para registrarse
        When el usuario comienza el registro
        Then el usuario acepta los requisitos de identificacion
        Then ingresa el DNI 36696108
        Then ingresa mail para registro
        Then se completan los datos biometricos para DNI 36696108
        Then continua el onboarding con DNI 36696108
        Then acepta su DDJJ
        Then desaparece el loading
        Then el usuario acepta primeros terminos y condiciones
        Then desaparece el loading
        Then ingresa el passcode 192837
        Then avanza a confirmacion de clave
        Then ingresa el passcode 192837
        Then desaparece el loading
        Then el usuario ingresa a Login
        Then se agregan los datos necesarios
        Then ingresa el passcode 192837
        Then se visualiza la home

    Scenario: Resumir onboarding
        Given no existe un usuario onboardeado con DNI 36696108
        Then el DNI 36696108 esta habilitado para registrarse
        When el usuario comienza el registro
        Then el usuario acepta los requisitos de identificacion
        Then ingresa el DNI 36696108
        Then ingresa mail para registro
        Then se completan los datos biometricos para DNI 36696108
        Then el usuario finaliza la aplicacion
        Then el usuario comienza el registro
        Then el usuario acepta los requisitos de identificacion
        Then ingresa el DNI 36696108
        Then ingresa mail para continuar onboarding
        Then continua el onboarding con DNI 36696108
        Then se visualiza pantalla DDJJ
        Then acepta su DDJJ
        Then desaparece el loading
        Then el usuario finaliza la aplicacion
        Then el usuario comienza el registro
        Then el usuario acepta los requisitos de identificacion
        Then ingresa el DNI 36696108
        Then ingresa mail para continuar onboarding
        Then continua el onboarding con DNI 36696108
        Then el usuario acepta primeros terminos y condiciones
        Then desaparece el loading
        Then el usuario finaliza la aplicacion
        Then el usuario comienza el registro
        Then el usuario acepta los requisitos de identificacion
        Then ingresa el DNI 36696108
        Then ingresa mail para continuar onboarding
        Then continua el onboarding con DNI 36696108
        Then ingresa el passcode 192837
        Then avanza a confirmacion de clave
        Then ingresa el passcode 192837
        Then desaparece el loading
        Then el usuario ingresa a Login
        Then se agregan los datos necesarios
        Then ingresa el passcode 192837
        Then se visualiza la home

    Scenario: Registro de un usuario no registrado (sin biometria) - DDJJ
        Given no existe un usuario onboardeado con DNI 36696108
        Then el DNI 36696108 esta habilitado para registrarse
        When el usuario comienza el registro
        Then el usuario acepta los requisitos de identificacion
        Then ingresa el DNI 36696108
        Then ingresa mail para registro
        Then se completan los datos biometricos para DNI 36696108
        Then continua el onboarding con DNI 36696108
        Then el usuario declara ser PEP
        Then el usuario declara ser FATCA
        Then acepta su DDJJ
        Then el usuario declara PEP Yo
        Then ingresa cargo Presidente
        Then continua en el cargo
        Then desaparece el loading
        Then el usuario acepta primeros terminos y condiciones
        Then desaparece el loading
        Then ingresa el passcode 192837
        Then avanza a confirmacion de clave
        Then ingresa el passcode 192837
        Then desaparece el loading
        Then el usuario ingresa a Login
        Then se agregan los datos necesarios
        Then ingresa el passcode 192837
        Then se visualiza la home
        Then se persiste su declaracion jurada en people-hub
