@Payment_Regretion
@BDSD-432
Feature:BDSD-432 Pausar Tarjetas

  Como Usuario,
  Quiero bloquear temporalmente el uso de la tarjeta
  Para evitar que se realicen compras durante el bloqueo y darle seguridad a mis operaciones

  Background: Reiniciar Datos
    Given Reset wiremock
    Then  usuario accede a tarjetas
#    Given Reset wiremock
#    Given existe el usuario con passcode 159753
#    And el usuario ingresa a la pantalla de login
#    And el usuario acepta los requisitos de identificacion
#    And el usuario ingresa el correo sgil@bdsol.com.ar
#    And el usuario confirma el correo
#    And accedo por magic link con mail sgil@bdsol.com.ar
#    And  usuario accede a tarjetas

    # Usuario visualiza su tarjeta activa, y decide pausarla
  @SOLOESTEMQP
  Scenario: Usuario bloquea temporalmente la tarjeta de débito física
    Then  usuario accede a tarjetas
    Given  usuario tapea tarjeta Física
    When   usuario tapea Pausar tarjeta
    Then  usuario puede ver Reactivar la tarjeta
    
      @BDSD-432_HappyPath
  Scenario: Usuario desbloquea la tarjeta de débito física
    Then  usuario accede a tarjetas
    Given  usuario tapea tarjeta Física
    When   usuario tapea Pausar tarjeta
    Then  usuario puede ver Pausar la tarjeta