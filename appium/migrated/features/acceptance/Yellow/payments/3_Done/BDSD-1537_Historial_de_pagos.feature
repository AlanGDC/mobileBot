@Payment_Regretion
@BDSD-1537
Feature: BDSD-1537 Historial de Pagos

  Como usuario,
  Quiero poder visualizar pagos pasados y comprobantes.
  Para comparar con pagos actuales, usar en reclamos u otros.

  Background: Reiniciar Datos
    Given Reset wiremock
    When  usuario accede a pagos
# Happy path:
#     Usuario paga un servicio, debe encontrar el registro en el historial scrolleando.
#     Usuario genera un pago singular con vencimiento, sistema debe guardar en historial.

  #@Payment_Regretion_HappyPath
  @BDSD-1537_HappyPath
  Scenario: Usuario paga un servicio, debe encontrar el registro en el historial scrolleando
    When  usuario accede a pagos
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona Buscar Empresa
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona Ir a rubros de Edenor
    And   usuario completa el campo campo de texto con el valor 123456789012
    And   usuario selecciona Continuar
    And   usuario selecciona Continuar
    And   usuario selecciona Editar alias de servicio
    And   usuario completa el campo campo de texto con el valor EDENORalias
    And   usuario selecciona Guardar nuevo alias de servicio
    And   usuario selecciona Pagar
    And   usuario selecciona Finalizar
    And   usuario selecciona Ir a historial de pagos
    Then  sistema presenta mensaje Electricidad Edenor de 10055.00 pagado el 16/12/19




##    Usuario paga un servicio, debe encontrar el registro en el historial buscando por criterio relevante.

  Scenario: Usuario pago un servicio, debe encontrar el registro en el historial buscando por empresa
    When  usuario accede a pagos
    And   usuario selecciona Historial de Pagos
    And   usuario completa codigo Buscar pagos efectuados con valor [empresa]
    Then  sistema presenta mensaje [alias] [empresa] de [monto] pagado el [dd/mm/aa]


  Scenario: Usuario pago un servicio, debe encontrar el registro en el historial buscando por alias
    When  usuario accede a pagos
    And   usuario selecciona Historial de Pagos
    And   usuario completa codigo Buscar pagos efectuados con valor [alias]
    Then  sistema presenta mensaje [alias] [empresa] de [monto] pagado el [dd/mm/aa]



##  Usuario ingresa a una card del historial, sistema debe permitir compartir.
  Scenario: Usuario ingresa a una card del historial, sistema debe permitir compartir.
    When  usuario accede a pagos
    And   usuario selecciona Historial de Pagos
    And   usuario completa codigo Buscar pagos efectuados con valor [alias]
    Then  usuario selecciona [alias] [empresa] de [monto] pagado el [dd/mm/aa]
    And  sistema presenta mensaje Compartir comprobante


###  Usuario hace scroll y tiene información de pagos de años pasados, sistema debe mostrar la información apilada por año.
###  Usuario busca pagos de años anteriores, sistema debe mostrar pagos desplegados.
###  Usuario despliega card de año, sistema debe mostrar todos los pagos agrupados por mes y todos los meses desplegados.
##
###     Home primer pago
##       Usuario genera un pago singular sin vencimiento, sistema debe guardar en historial.
  Scenario: Usuario genera un pago singular sin vencimiento, sistema debe guardar en historial.
    When  usuario accede a pagos
    And   usuario selecciona Buscar empresa
    And   usuario selecciona Buscar empresa
    And   usuario selecciona Impuestos y Servicios
    And   usuario selecciona Electricidad
    And   usuario selecciona empresa EDESUR
    And   usuario completa codigo Ingresa el codigo de pago con valor 1122334455
    And   usuario completa codigo Ingresa el monto a pagar con valor 100
    And   usuario presiona Continuar
    And   usuario selecciona Editar alias de servicio
    And   usuario completa codigo Ingresa el alias de servicio de hasta [n máximo] caracteres con valor [alias]
    And   usuario presiona Pagar
    And   usuario presiona Finalizar
    And   usuario selecciona Historial de Pagos
    And   usuario selecciona Ir a historial de pagos
    Then  sistema presenta mensaje [alias] [empresa] de [monto] pagado el [dd/mm/aa]


#       Usuario genera un pago mensual de múltiples vencimientos, sistema guarda en historial.
  Scenario: Usuario genera un pago mensual de múltiples vencimientos, paga mensual sistema guarda en historial
    When  usuario accede a pagos
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona categoria Impuestos y Servicios
    And   usuario selecciona sub categoria Gas
    And   usuario selecciona empresa METROGAS
    And   usuario completa codigo Clave pago electronico con valor 12345
    And   usuario selecciona factura mensual [Cuota] de [Servicio] en el valor de [N] y vencimiento el [dd/mm/aa]
    And   usuario presiona Continuar
    And   usuario presiona Pagar
    And   usuario presiona Finalizar
    And   usuario selecciona Ir a historial de pagos
    And   usuario completa codigo Buscar pagos efectuados con valor [alias]
    Then  sistema presenta mensaje [alias] [empresa] de [monto] pagado el [dd/mm/aa]


#       Usuario genera el pago anual de múltiples vencimientos, sistema guarda en historial.
#        ( si se paga el anual, es solo un comprobante, no 12 comprobantes, ej: ABL).
  # VER COMO PROBAR CON PAGO DE FACTURA ANUAL
#  Scenario: Usuario genera el pago anual de múltiples vencimientos, paga anual, sistema guarda en historial.
#    When  usuario accede a pagos
#    And   usuario selecciona Buscar Empresa
#    And   usuario selecciona categoria Impuestos y Servicios
#    And   usuario selecciona sub categoria Gas
#    And   usuario selecciona empresa METROGAS
#    And   usuario completa codigo Clave pago electronico con valor 12345
#    And   usuario selecciona factura Anual
#    And   usuario presiona Continuar
#    And   usuario presiona Pagar
#    And   usuario presiona Finalizar
#    And   usuario selecciona Historial de Pagos
#    And   usuario selecciona Ir a historial de pagos
#    Then  sistema presenta mensaje [alias] [empresa] de [monto] pagado el [dd/mm/aa]


#     Alias / Empresa:
#       Usuario cambia el alias de un servicio, sistema muestra los pagos anteriores en historial bajo el nuevo alias.
  Scenario: Usuario busca servicio ya agendado, modifica alias
    When  usuario accede a pagos
    And   usuario presiona Ver Servicios Agendados
    And   usuario selecciona [alias] [empresa] de [monto] pagado el [dd/mm/aa]
    And   usuario selecciona Editar alias de servicio
    And   usuario completa codigo Ingresa el alias de servicio de hasta [n máximo] caracteres con valor AliasNuevo
    And   usuario selecciona Guardar
    When  usuario accede a pagos
    And   usuario selecciona Ir a historial de pagos
    And   usuario completa codigo Buscar pagos efectuados con valor AliasNuevo
    Then  sistema presenta mensaje AliasNuevo [empresa] de [monto] pagado el [dd/mm/aa]


#       Empresa cambia nombre de servicio, sistema muestra los pagos anteriores bajo el nombre anterior y los nuevos pagos bajo el nuevo nombre.

# Validaciones de errores/alertas:
#  Usuario ingresa a agenda y agenda un servicio nuevo, sistema no guarda el servicio en historial ( home post primer pago).
  Scenario: Usuario ingresa a agenda y agenda un servicio nuevo, sistema no guarda el servicio en historial
    When  usuario accede a pagos
    And   usuario presiona Ver Servicios Agendados
    And   usuario selecciona Agendar Nuevo
    And   usuario selecciona Impuestos y Servicios
    And   usuario selecciona Electricidad
    And   usuario selecciona empresa EDESUR
    And   usuario completa codigo Ingresa el codigo de pago con valor 1122334455
    And   usuario presiona Continuar
    And   usuario selecciona Editar alias de servicio
    And   usuario completa codigo Ingresa el alias de servicio de hasta [n máximo] caracteres con valor AliasAgendado
    And   usuario selecciona Guardar Servicio
    And   usuario selecciona Ir a historial de pagos
    And   usuario completa codigo Buscar pagos efectuados con valor AliasAgendado
    Then  sistema indica servicio inexistente

  Scenario: Usuario paga un servicio, debe encontrar el registro en el historial scrolleando
    When  usuario accede a pagos
    And   usuario selecciona Buscar empresa
    And   usuario selecciona Buscar empresa
    And   usuario selecciona Impuestos y Servicios
    And   usuario selecciona Electricidad
    And   usuario selecciona empresa EDESUR
    And   usuario completa codigo Ingresa el codigo de pago con valor 1122334455
    And   usuario presiona Continuar
    And   usuario selecciona Editar alias de servicio
    And   usuario completa codigo Ingresa el alias de servicio de hasta [n máximo] caracteres con valor [alias]
    And   usuario presiona Pagar
    And   usuario presiona Finalizar
    And   usuario selecciona Historial de Pagos
    And   usuario selecciona Ir a historial de pagos
    Then  sistema presenta mensaje [alias] [empresa] de [monto] pagado el [dd/mm/aa]


#     Home post primer pago: NO PUEDO PROBAR
#  Usuario genera un pago masivo, sistema guarda individualmente en el historial cada uno de los servicios abonados.
#  Usuario no confirmo pago de un servicio, sistema no muestra comprobante en historial.
#  Usuario busca pagos por empresa/alias de un servicio que nunca pagó, sistema debe mostrar empty state.
#  Usuario cambia el alias de un servicio y busca pagos anteriores con alias anterior, sistema no debe mostrar servicio.
#  Empresa cambia nombre de servicio, usuario busca pagos anteriores con el nuevo nombre, no debe poder encontrarlo.
#  Empresa cambia nombre de servicio y usuario busca pagos nuevos con el nombre anterior, no debe poder encontrarlo.


