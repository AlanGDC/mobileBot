
Feature:BDSD-6034 Información de cash in out MVP


 Background: Reiniciar Datos
   Given Reset wiremock

  @Yellow_HappyPathRegretion
  @BDSD-6034_HappyPath
 Scenario: Usuario selecciona botón de acceso en home principal “ingresar o extraer dinero”.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   usuario selecciona ingresar o extraer dinero
    Then  sistema indica ingresar dinero
    And   sistema indica extraer dinero
    And   usuario selecciona copiar cbu
    And   usuario copia el valor 3108100900010000007321
    And   usuario copia el valor PERRO.CUMBIA.ATR




 Scenario: Usuario ingresa a la pestaña de “ingresar” y selecciona “copiar” alias, sistema muestra toast de “copiado”. 
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   usuario selecciona ingresar o extraer dinero
    Then  sistema indica ingresar dinero
    And   sistema indica extraer dinero
    And   usuario selecciona copiar alias


 Scenario: Usuario ingresa a la pestaña de “ingresar” y selecciona “ Compartir datos”, sistema muestra modal nativo del dispositivo. 
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona ingresar o extraer dinero
    Then  usuario selecciona compartir datos


 Scenario: Usuario ingresa a la pestaña de “extraer”, sistema muestra texto de cajeros automaticos
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   usuario selecciona ingresar o extraer dinero
    Then  usuario selecciona extraer dinero
    And   sistema indica banelco

 Scenario: Usuario ingresa a la pestaña de “extraer”, sistema muestra limites diarios y por operación de Banelco.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   usuario selecciona ingresar o extraer dinero
    Then  usuario selecciona extraer dinero
    And   sistema indica banelco

Scenario: Usuario ingresa a la pestaña de “extraer”, sistema muestra limites diarios y por operación de Link. 
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   usuario selecciona ingresar o extraer dinero
    Then  usuario selecciona extraer dinero
    And   sistema indica redLink

Scenario: Usuario ingresa a la pestaña de “extraer”, sistema muestra limites diarios de Extra Cash
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    And   usuario selecciona ingresar o extraer dinero
    Then  usuario selecciona extraer dinero
   And   usuario presiona Xpath //*[contains(@text,"15.000")]

 