@Payment_Regretion_HappyPath
@BDSD-4163
Feature:BDSD-4163 Boton de Pago Espontaneo



  Como usuario,
  Quiero poder realizar pagos espontáneos en todas las facturas mixtas
  para poder realizar pagos sin “matar” las facturas por vencer.

 Background: Reiniciar Datos
   Given Reset wiremock
   
  @Yellow_HappyPathRegretion
  @BDSD-4163_HappyPath
  Scenario: Usuario selecciona a pagar una factura mixta selecciona el botón de pago espontaneo y realiza un pago.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5f
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Visa
    And   usuario selecciona empresa Visa del rubro Tarjetas de Credito
    And   usuario ingresa el valor 123456789012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Efectuar un pago espontáneo
    And   usuario selecciona Efectuar
    And   usuario ingresa el valor 400 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  usuario selecciona Finalizar


  Scenario: Usuario selecciona a pagar una factura mixta selecciona el botón de pago espontaneo e ingresa monto 0.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Visa
    And   usuario selecciona empresa Visa del rubro Tarjetas de Credito
    And   usuario ingresa el valor 123456789012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Efectuar un pago espontáneo
    And   usuario presiona Xpath //*[contains(@text,"El importe que ingreses no cancelará ningún vencimiento vigente.")] 
# "
    And   usuario selecciona Efectuar
    And   usuario ingresa el valor 123456789012 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar
    Then  sistema no muestra el valor Vas a efectuar un pago espontáneo a Visa por 400 pesos


  Scenario: Usuario selecciona a pagar una factura mixta selecciona el botón de pago espontaneo e ingresa monto mayor a saldo.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Visa
    And   usuario selecciona empresa Visa del rubro Tarjetas de Credito
    And   usuario ingresa el valor 123456789012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Efectuar un pago espontáneo
    And   usuario presiona Xpath //*[contains(@text,"El importe que ingreses no cancelará ningún vencimiento vigente.")] 
# "
    And   usuario selecciona Efectuar
    And   usuario ingresa el valor 9999999 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar
    Then  sistema no muestra el valor Vas a efectuar un pago espontáneo a Visa por 400 pesos




  Scenario: Usuario selecciona a pagar una factura mixta de un servicio no agendado,no tiene vencimientos selecciona el botón de pago espontaneo.
    Given Get to wiremock /emptyState
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Visa
    And   usuario selecciona empresa Visa del rubro Tarjetas de Credito
    And   usuario ingresa el valor 210987654321 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Pago espontáneo
    And   usuario presiona Xpath //*[contains(@text,"El importe que ingreses no cancelará ningún vencimiento vigente.")] 
# "
    And   usuario selecciona Efectuar
    And   usuario ingresa el valor 400 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar
    And   usuario selecciona Pagar
    Then  usuario selecciona Finalizar

  Scenario: Usuario selecciona a pagar una factura mixta de un servicio ya agendado, no tiene vencimientos selecciona el botón de pago espontaneo.
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  usuario selecciona PAGOS, tab, 5 out of 5
    And   usuario selecciona Mas acciones
    And   usuario selecciona Buscar nuevo servicio
    And   usuario completa el campo Buscar empresa con el valor Visa
    And   usuario selecciona empresa Visa del rubro Tarjetas de Credito
    And   usuario ingresa el valor 123456789012 al campo Ingresa el codigo de pago
    And   usuario selecciona Continuar
    And   usuario selecciona Efectuar un pago espontáneo
    And   usuario presiona Xpath //*[contains(@text,"El importe que ingreses no cancelará ningún vencimiento vigente.")] 
# "
    And   usuario selecciona Efectuar
    And   usuario ingresa el valor 9999999 al campo Ingresa el monto a pagar
    And   usuario selecciona Continuar

