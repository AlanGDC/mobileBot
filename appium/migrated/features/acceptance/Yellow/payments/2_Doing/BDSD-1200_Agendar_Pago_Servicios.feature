## language: en
@Payment_Regretion
@BDSD-1200

Feature: BDSD-1200 Agenda de pagos
  Como usuario,
  Quiero agendar un servicio
  Para Identificarlo con un alias , Recibir alertas de vencimiento y Pagar recurrentemente.

  Background: Reiniciar Datos
    Given Reset wiremock
    When  usuario accede a pagos
#  Background: Reiniciar Datos
#    Given Reset wiremock
#    And Get to wiremock /cargardatosPagoEmpConFactPend

# Happy paths:
  @Payment_Regretion_HappyPath
  @BDSD-1200_HappyPath
  Scenario: Usuario paga un servicio, elige agendar, aparece en lista de servicios agendados
    When  usuario accede a pagos
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona Buscar Empresa
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona Ir a rubros de Edenor
    And   usuario esconde teclado
    And   usuario ingresa el valor 123456789012
    And   usuario selecciona Continuar
    And   usuario esconde teclado
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar
    And   usuario selecciona Ir a servicios agendados
    Then  sistema indica EdenorConFactNoEditable Edenor


#  N/A
#  Scenario: Usuario intenta pagar un servicio, no tiene pagos pendientes, el sistema ofrece agendarlo,
#  usuario acepta agendarlo, el servicio aparece en lista de servicios agendados.



####    Usuario busca un servicio para agendarlo.
  Scenario: Usuario busca un servicio para agendarlo.
    When  usuario accede a pagos
    And   usuario selecciona Ir a servicios agendados
    And   usuario selecciona Agendar nuevo servicio
    And   usuario selecciona categoria
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona Ir a rubros de Edenor
    And   usuario ingresa el valor 123456789012
    And   usuario selecciona Continuar
    And   usuario selecciona Ir a servicios agendados
    Then  sistema indica EdenorConFactNoEditable Edenor

####
####Servicio ya agendado:
####
####    Usuario busca servicio ya agendado, modifica alias
##
  Scenario: Usuario busca servicio ya agendado, modifica alias
    When  usuario accede a pagos
    And   usuario selecciona Ir a servicios agendados
    And   usuario selecciona Olvidar el servicio EdenorConFactNoEditable Edenor
    And   usuario selecciona modificar el Alias
    And   usuario completa el campo campo de texto con el valor EdenorConFactNoEditable
    And   usuario presiona Boton Volver Atras
    Then  sistema indica Olvidar el servicio EdenorConFactNoEditable Edenor
    

### Escenarios que van a fallar
##  - el toast de confirmacion en detalle para olvidar
  Scenario: Usuario busca servicio ya agendado, olvida servicio desde Detalle
    When  usuario accede a pagos
    And   usuario selecciona Ir a servicios agendados
    And   usuario selecciona Olvidar el servicio EdenorConFactNoEditable Edenor
    And   usuario selecciona Olvidar el servicio
    And   usuario selecciona Olvidar
#    Then  sistema muestra el mensaje <any>

####    Usuario busca servicio ya agendado, olvida servicio para proximos servicios
##  - Olvidar desde el swipe,
  Scenario: Usuario busca servicio ya agendado, olvida servicio desde Swipe
    When  usuario accede a pagos
    And   usuario selecciona Ir a servicios agendados
    And   usuario selecciona Olvidar el servicio EdenorConFactNoEditable Edenor
    And   usuario selecciona Olvidar el servicio
    And   usuario selecciona Olvidar



#
#
#  Scenario: Usuario intenta agendar un servicio ya pagado y agendado, sistema no lo permite e informa a usuario
#    When  usuario accede a pagos
#    And   usuario accede a nuevo pago
#    And   usuario selecciona categoria
#    And   usuario selecciona sub categoria <sub_categoria>
#    And   usuario selecciona empresa <empresa>
#    And   usuario completa codigo <tipoCodigo> con valor <valorCodigo>
#    Then  sistema informa que no hay facturas pendientes y no permite agendar
#
##
#    Examples:
#      |   sub_categoria | empresa  | tipoCodigo                |  valorCodigo | alias   |
#      | "Electricidad" | "EDESUR" | Nro.identificador cliente | 1122334455   | Electro |


