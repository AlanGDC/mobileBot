@Payment_Regretion_HappyPath
@BDSD-2923
Feature: BDSD-2923 Pantalla pre conf primer pago de servicio

  Como usuario,
  Quiero poder realizar o agendar un pago de monotributo a traves de la app de BDS
  Para no tener que entrar a la web

 Background: Reiniciar Datos
   Given Reset wiremock

# #  Happy Path:
  @Yellow_HappyPathRegretion
  @BDSD-2923_HappyPath
  Scenario: Usuario intenta pagar un servicio con Factura NO agendado, en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
    Given Get to wiremock /emptyState
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona empresa Edenor del rubro Electricidad
    And   usuario ingresa el valor 123456789012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   sistema indica Editar etiqueta
    And   usuario selecciona Agendar servicio
    Then  sistema no muestra el valor Editar etiqueta
# # Etiqueta Electricidad

# #           Usuario intenta pagar un servicio sin Vencimiento NO agendado, en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
# # OK
  Scenario: Usuario intenta pagar un servicio sin Vencimiento NO agendado, en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.    
    Given Get to wiremock /emptyState
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Medcar
    And   usuario selecciona empresa Medcar del rubro Medicina Prepaga
    And   usuario ingresa el valor 123456789 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Ingresa el monto a pagar
    And   usuario ingresa el valor 999 al campo Ingresa el monto a pagar
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   sistema indica Editar etiqueta
    And   usuario selecciona Agendar servicio
    Then  sistema no muestra el valor Editar etiqueta

#           Usuario intenta pagar un servicio Mixto con factura pendiente NO agendado , en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
  #OK
  Scenario: Usuario intenta pagar un servicio Mixto con factura pendiente NO agendado, en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
    Given Get to wiremock /emptyState
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Visa
    And   usuario selecciona empresa Visa del rubro Tarjetas de Credito
    And   usuario ingresa el valor 123456789012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Visa 31/05/19 990.00
    # And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   sistema indica Editar etiqueta
    And   usuario selecciona Agendar servicio
    Then  sistema no muestra el valor Editar etiqueta

#           Usuario intenta pagar un servicio Mixto sin factura pendiente NO agendado , en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
  @BDSD-2923_Pendiente
  Scenario: Usuario intenta pagar un servicio Mixto sin factura pendiente NO agendado , en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
    Given Get to wiremock /emptyState
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Visa
    And   usuario selecciona empresa Visa del rubro Tarjetas de Credito
    And   usuario ingresa el valor 210987654321 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Pago espontáneo
    And   usuario selecciona Efectuar
    And   usuario selecciona Ingresa el monto a pagar
    And   usuario ingresa el valor 123 al campo Ingresa el monto a pagar
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   sistema indica Editar etiqueta
    And   usuario selecciona Agendar servicio
    Then  sistema no muestra el valor Editar etiqueta

          # Usuario intenta pagar un servicio Domesticas NO agendado     , en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
  @BDSD-2923_Pendiente
  Scenario: Usuario intenta pagar un servicio Domesticas NO agendado , en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
    Given Get to wiremock /emptyState
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Act.06hs hasta 4/2019
    And   usuario selecciona empresa Act.06hs hasta 4/2019 del rubro Servicio Domestico Activo
    And   usuario ingresa el valor 20334446660 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 20334446761 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 042019 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   sistema indica Editar etiqueta
    And   usuario selecciona Agendar servicio
    Then  sistema no muestra el valor Editar etiqueta

#           Usuario intenta pagar un servicio Monotributista NO agendado    , en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
  Scenario: Usuario intenta pagar un servicio Monotributista NO agendado , en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
    Given Get to wiremock /emptyState
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Monotr. Aut. Activo
    And   usuario selecciona empresa Monotr. Aut. Activo del rubro Monotributo
    And   usuario ingresa el valor 20335574430 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 122012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Ingresa el monto a pagar
    And   usuario ingresa el valor 999 al campo Ingresa el monto a pagar
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   sistema indica Editar etiqueta
    And   usuario selecciona Agendar servicio
    Then  sistema no muestra el valor Editar etiqueta

#           Usuario intenta pagar un servicio Vep NO agendado       , en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
  Scenario: Usuario intenta pagar un servicio Vep NO agendado , en pantalla pre confirmacion se visualiza la opcion "Agendar servicio", si se deshabilita se esconde de la vista la opcion de editar el Alias del Servicio.
    Given Get to wiremock /emptyState
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor VEP
    And   usuario selecciona empresa VEP del rubro Impuestos AFIP (VEP)
    And   usuario ingresa el valor 12345678901 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 12345678902 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   sistema muestra Xpath //*[contains(@content-desc, "caja de ahorro")]
    And   usuario selecciona Continuar
    And   sistema indica Editar etiqueta
    And   usuario selecciona Agendar servicio
    Then  sistema no muestra el valor Editar etiqueta

#
#  Validacion de errores/alertas:
#
#           Usuario intenta pagar un servicio con Factura agendado   , en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
  Scenario: Usuario intenta pagar un servicio con Factura agendado   , en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
  And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Edenor
    And   usuario selecciona empresa Edenor del rubro Electricidad
    And   usuario ingresa el valor 123456789012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Continuar
    Then  sistema no muestra el valor Agendar servicio

#           Usuario intenta pagar un servicio sin Vencimiento agendado  , en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
  Scenario: Usuario intenta pagar un servicio sin Vencimiento agendado  , en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
   And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Medcar
    And   usuario selecciona empresa Medcar del rubro Medicina Prepaga
    And   usuario ingresa el valor 123456789 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Ingresa el monto a pagar
    And   usuario ingresa el valor 99999 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar
    Then  sistema no muestra el valor Agendar servicio

#           Usuario intenta pagar un servicio Mixto con factura pendiente , en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio". 
  Scenario: Usuario intenta pagar un servicio Mixto con factura pendiente agendado, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Visa
    And   usuario selecciona empresa Visa del rubro Tarjetas de Credito
    And   usuario ingresa el valor 123456789012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Visa 31/05/19 990.00
    And   usuario selecciona Continuar
    Then  sistema no muestra el valor Agendar servicio

#           Usuario intenta pagar un servicio Mixto sin factura pendiente agendado, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
  Scenario: Usuario intenta pagar un servicio Mixto sin factura pendiente agendado,  en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Visa
    And   usuario selecciona empresa Visa del rubro Tarjetas de Credito
    And   usuario ingresa el valor 210987654321 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Pago espontáneo
    And   usuario selecciona Efectuar
    And   usuario selecciona Ingresa el monto a pagar
    And   usuario ingresa el valor 123 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar
    Then  sistema no muestra el valor Agendar servicio

#           Usuario intenta pagar un servicio Domesticas agendado, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
 @BDSD-2923_Pendiente
  Scenario: Usuario intenta pagar un servicio Domesticas agendado, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Act.06hs hasta 4/2019
    And   usuario selecciona empresa Act.06hs hasta 4/2019 del rubro Servicio Domestico Activo
    
    And   usuario ingresa el valor 20334446660 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 20334446761 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 042019 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Continuar
    Then  sistema no muestra el valor Agendar servicio

#           Usuario intenta pagar un servicio Monotributista agendado, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
  @BDSD-2923_Pendiente
  Scenario: Usuario intenta pagar un servicio Monotributista agendado, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Monotr. Aut. Activo
    And   usuario selecciona empresa Monotr. Aut. Activo del rubro Monotributo
    
    And   usuario ingresa el valor 20335574430 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    
    And   usuario ingresa el valor 122012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Ingresa el monto a pagar
    And   usuario ingresa el valor 999 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar

    Then  sistema no muestra el valor Agendar servicio

#           Usuario intenta pagar un servicio Vep agendado, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
  @BDSD-2923_Pendiente
  Scenario: Usuario intenta pagar un servicio Vep agendado, en pantalla pre confirmacion NO se visualiza la opcion "Agendar servicio".
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor valor VEP
    And   usuario selecciona empresa VEP del rubro Impuestos AFIP (VEP)
    
    And   usuario ingresa el valor 12345678901 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario ingresa el valor 12345678902 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Continuar
    Then  sistema no muestra el valor Agendar servicio


