@BDSD-2923
Feature: BDSD-2923 Pantalla pre conf primer pago de servicio

  Como usuario,
  Quiero poder realizar o agendar un pago de monotributo a traves de la app de BDS
  Para no tener que entrar a la web

  Background: Reiniciar Datos
    Given Reset wiremock
    When  usuario accede a pagos
   
#  Background: Login
#    Given existe el usuario con passcode 192837
#    And   el usuario ingresa a la pantalla de login
#    And   el usuario acepta los requisitos de identificacion
#    And   el usuario ingresa el correo bdsolqe@gmail.com
#    And   el usuario confirma el correo
#    And   accedo por magic link con mail bdsolqe@gmail.com y password Bdsol123
#    Then  ingresa el passcode 192837
#  http://localhost:8080/emptyState

#  Happy Path:
  #@Payment_Regretion_HappyPath
  @BDSD-2923_HappyPath
  Scenario: Usuario intenta pagar un servicio con Factura NO agendado, en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
    When  usuario accede a pagos
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona Buscar Empresa
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona Ir a rubros de Edenor
    And   usuario completa el campo campo de texto con el valor 123456789012
    And   usuario selecciona Continuar
    And   usuario selecciona Continuar
    And   sistema indica Editar alias de servicio
    And   usuario selecciona Agendar servicio
    Then  sistema no muestra el valor Editar alias de servicio

  @Pendiente
  Scenario: Usuario intenta pagar un servicio sin Vencimiento NO agendado				, en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
    When  usuario accede a pagos
    And   usuario selecciona Buscar Empresa
    And   usuario selecciona Buscar Empresa
    And   usuario completa el campo Buscar empresa con el valor Medcar
    And   usuario selecciona Ir a rubros de Medcar
    And   usuario completa el campo campo de texto con el valor 123456789
    And   usuario selecciona Continuar
    And   sistema indica campo de texto
    And   usuario selecciona campo de texto
    And   usuario completa el campo campo de texto con el valor 123
    And   usuario selecciona Continuar
    And   sistema indica Editar alias de servicio
    And   usuario selecciona Agendar servicio
    Then  sistema no muestra el valor Editar alias de servicio

#  Usuario intenta pagar un servicio Mixto con factura pendiente NO agendado	, en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
#  Usuario intenta pagar un servicio Mixto sin factura pendiente NO agendado	, en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
#  Usuario intenta pagar un servicio Domesticas NO agendado					, en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
#  Usuario intenta pagar un servicio Monotributista NO agendado				, en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
#  Usuario intenta pagar un servicio Vep NO agendado							, en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
#
#
#  Validacion de errores/alertas:
#
#  Usuario intenta pagar un servicio con Factura agendado			, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
#  Usuario intenta pagar un servicio sin Vencimiento agendado		, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
#  Usuario intenta pagar un servicio Mixto con factura pendiente	, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
#  Usuario intenta pagar un servicio Mixto sin factura pendiente	, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
#  Usuario intenta pagar un servicio Domesticas 					, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
#  Usuario intenta pagar un servicio Monotributista				, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
#  Usuario intenta pagar un servicio Vep


