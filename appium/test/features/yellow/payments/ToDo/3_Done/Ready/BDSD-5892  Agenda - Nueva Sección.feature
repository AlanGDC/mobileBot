Feature:BDSD-5892  Agenda - Nueva Sección



  Background: Reiniciar Datos
   Given Reset wiremock



    @Yellow_HappyPathRegretion
    @BDSD-5892_HappyPath
    Scenario: Usuario selecciona el shortcut en la home de servicios seleccionado el botón FAB y eligiendo la opción de agenda.
        Sistema muestra todos los servicio agendados separados en pago de servicios y recargas.
        Usuario selecciona un servicio, sistema lo lleva al detalle del servicio.
        Usuario selecciona el botón de “pagar”, sistema redirige a pantalla confirmar monto.
        Usuario finaliza el pago, sistema redirige a la pantalla home de agenda.
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        And   usuario completa el campo Buscar servicio agendado con el valor Sube
        And   usuario presiona Xpath //*[contains(@text,'RECARGAS')]
        And    Reset wiremock
        And   Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        And   usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        And   usuario completa el campo Buscar servicio agendado con el valor Edenor
        Then  usuario selecciona EdenorConFactNoEditable Edenor
        And   usuario selecciona Pagar servicio
        And   usuario selecciona Continuar
        And   usuario selecciona Pagar
        And   usuario selecciona Finalizar
        And   usuario presiona Xpath //*[contains(@text,'Agenda')]


     Scenario: Usuario Swipea la card de una recarga o servicio y tapea en eliminar, sistema muestra modal de confirmación y al eliminar redirige al usuario a la home de agenda mostrando un toast de “ servicio/recarga eliminado”.
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        And   usuario completa el campo Buscar servicio agendado con el valor Edenor
        Then  usuario selecciona EdenorConFactNoEditable Edenor
        And   usuario selecciona Eliminar
        And   usuario selecciona Olvidar este servicio
        And   usuario presiona Xpath //*[contains(@text,'Agenda')]

    Scenario: Usuario elimina desde detalle de agenda el servicio, sistema muestra modal de confirmación y al eliminar redirige al usuario a la home de agenda mostrando un toast de “ servicio/recarga eliminado”.
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        And   usuario completa el campo Buscar servicio agendado con el valor Edenor
        Then  usuario selecciona EdenorConFactNoEditable Edenor
        And   usuario selecciona Eliminar
        And   usuario selecciona Olvidar este servicio
        And   usuario presiona Xpath //*[contains(@text,'Agenda')]

    Scenario: Usuario selecciona botón de FAB y presiona en “agenda”, sistema muestra home de agenda con los servicios/recargas agendados.
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        Then  usuario completa el campo Buscar servicio agendado con el valor Sube
        And   sistema indica SubeRecarga SUBE
        

    Scenario: Usuario ingresa a agenda por primera vez, sistema muestra empty state y permite al usuario agendar un servicio o recarga.
        Usuario finaliza agendamiento de servicio o recarga,
        sistema redirige al usuario a la home de agenda y muestra toast de servicio agendado.
        Given Get to wiremock /emptyState
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        Then  usuario presiona Xpath //*[contains(@text,'Acá vas a poder modificar las notificaciones y etiquetas de tus servicios agendados.')]
        #' #
        And   usuario selecciona Agendar nuevo servicio
        And   usuario completa el campo Buscar empresa con el valor Edenor
        And   usuario selecciona empresa Edenor del rubro Electricidad
        And   usuario ingresa el valor 123123123123 al campo Ingresa el codigo de pago
        And   usuario selecciona Continuar
        And   usuario selecciona Guardar servicio

    Scenario: Usuario agenda una recarga, sistema debe mostrar la agenda separada en “servicios” y “recargas”.
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        And   usuario completa el campo Buscar servicio agendado con el valor Sube
        And   usuario presiona Xpath //*[contains(@text,'RECARGAS')]
        And    Reset wiremock
        And   Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        And   usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        And   usuario completa el campo Buscar servicio agendado con el valor Edenor
        And   usuario presiona Xpath //*[contains(@text,'PAGOS')]


    

    Scenario: Usuario agenda nuevo servicio sin vencimiento, sistema agenda el servicio y lo muestra en la home.
        Given Get to wiremock /emptyState
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        Then  usuario selecciona Agendar nuevo servicio
        And   usuario completa el campo Buscar empresa con el valor Visa
        And   usuario selecciona empresa Visa del rubro Tarjetas de Credito
        And   usuario ingresa el valor 123456789012 al campo Ingresa el codigo de pago
        And   usuario selecciona Continuar
        And   usuario selecciona Guardar servicio

    Scenario: Usuario agenda nuevo servicio con vencimiento, sistema agenda el servicio y lo muestra en la home.
        Given Get to wiremock /emptyState
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        And   usuario selecciona Agendar nuevo servicio
        And   usuario completa el campo Buscar empresa con el valor Medcar
        And   usuario selecciona empresa Medcar del rubro Medicina Prepaga
        And   usuario ingresa el valor 123456789 al campo Ingresa el codigo de pago
        And   usuario selecciona Continuar
        And   usuario selecciona Guardar servicio

    Scenario: Usuario busca dentro de la home de agenda seleccionando el buscador, sistema brinda las empresas o alias  que contengan los caracteres que el usuario escribió.
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        Then  usuario completa el campo Buscar servicio agendado con el valor MedcarNoFact
        And   sistema indica MedcarNoFact Medcar
        And    Reset wiremock
        And   Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        And   usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        And   usuario completa el campo Buscar servicio agendado con el valor Edenor
        And   sistema indica EdenorConFactNoEditable Edenor

    Scenario: Usuario busca dentro de la home de agenda seleccionando el buscador, sistema muestra empty state ya que la empresa o el alias no fue encontrada.
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        Then  usuario completa el campo Buscar servicio agendado con el valor NOEXISTE
        And   usuario presiona Xpath //*[contains(@text,'No encontramos "NOEXISTE" en tu agenda. Volvé a intentarlo.')]
        # '

 Scenario: Usuario busca servicio ya agendado, modifica alias
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        And   usuario completa el campo Buscar servicio agendado con el valor Edenor
        And   usuario selecciona EdenorConFactNoEditable Edenor
        And   usuario selecciona Editar
        And   usuario selecciona campo de texto
        And   usuario presiona borrar 4 veces
        And   usuario completa el campo campo de texto con el valor EDITADO123
        And   usuario selecciona Guardar nuevo alias de servicio
        And   usuario presiona Xpath //*[contains(@text,'EDITADO123')]


      Scenario: Usuario intenta agendar un servicio ya pagado y agendado, sistema no lo permite e informa a usuario
        Given Usuario realiza login bdsolqeyellow@gmail.com
        And   usuario selecciona Teclado Clave Tecla 1
        And   usuario selecciona Teclado Clave Tecla 4
        And   usuario selecciona Teclado Clave Tecla 7
        And   usuario selecciona Teclado Clave Tecla 2
        And   usuario selecciona Teclado Clave Tecla 5
        And   usuario selecciona Teclado Clave Tecla 8
        When  usuario selecciona PAGOS, tab, 5 out of 5
        And   usuario selecciona Mas acciones
        And   usuario selecciona Ir a agenda
        And   usuario selecciona Agendar nuevo servicio
        And   usuario completa el campo Buscar empresa con el valor Edenor
        And   usuario selecciona empresa Edenor del rubro Electricidad
        And   usuario ingresa el valor 123456789012 al campo Ingresa el codigo de pago
        And   usuario selecciona Continuar
        Then  sistema muestra elemento mensaje de error con texto Este servicio ya se encuentra en tu agenda
