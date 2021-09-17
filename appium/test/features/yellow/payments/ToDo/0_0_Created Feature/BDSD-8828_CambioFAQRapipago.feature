Feature: BDSD-8828 Cambio FAQ Rapipago


# Escenarios

# 1.En la pantalla de Cash In/Out: Modificar del proximamente el “extraer con RapiPago” 

# 2. Modificar la FAQ: 
# Modificada (CTA_9): 
# PREGUNTA: ¿Cómo puedo extraer dinero de mi Caja de Ahorro?
# A través de cualquier cajero de la red Banelco, Link, sucursales Rapipago o comercios adheridos al servicio de Extra Cash.

# Agregar: 

# (CTA_15)
# PREGUNTA: ¿Qué necesito para poder extraer dinero en Rapipago?
# RESPUESTA: Solo necesitás tu Tarjeta de Débito y tu DNI.

# (CTA_16): 
# PREGUNTA: ¿Cuáles son los límites de extracción en la Rapipago?
# RESPUESTA: Podés extraer hasta un límite de $ 50.000 diarios.

# Sistema debe mostrar la empresa “Cobroexpress”  en la sección de “extracción” con el limite de dinero a extraer y los requerimientos necesarios. 

 Background: Reiniciar Datos
   Given Reset wiremock
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  sistema indica Inicio banco del sol
    And   usuario selecciona selected, INICIO, tab, 1 out of 5


  Scenario: Usuario paga un servicio, elige agendar, aparece en lista de servicios agendados
    When  usuario presiona Xpath //*[@*='PAGOS']
    And   usuario selecciona Ver todas
    And   usuario selecciona CUENTA
    And   usuario selecciona "¿Cómo puedo extraer dinero de mi Caja de Ahorro?"
    And   usuario selecciona "A través de cualquier cajero de la red Banelco, Link, sucursales Rapipago o comercios adheridos al servicio de Extra Cash."



"¿Qué necesito para poder extraer dinero en los comercios adheridos Extra Cash?"
"Solo necesitás tu Tarjeta de Débito y tu DNI. En algunos casos puede que ciertos comercios te exijan una compra mínima."


"¿Cuáles son los límites de extracción en la Red Banelco?"
"Podés extraer hasta un límite de $ 15.000. Cada operación tiene un límite de $ 15.000 pesos."