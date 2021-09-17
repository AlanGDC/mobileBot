Feature: BDSD-8266 ScanFacturaPMC

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

# Cliente selecciona opción de scan de factura, expone factura al lector y sistema redirige a pantalla de input con el monto del vto precargado
  Scenario: Cliente selecciona opción de scan de factura, expone factura al lector y sistema redirige a pantalla de input con el monto del vto precargado
    When  usuario selecciona ingresar o extraer dinero

    Escanear factura

    Buscar Empresa



Ingresar código manualmente

//android.view.ViewGroup[@content-desc="Ingresa el codigo de pago"]/android.view.ViewGroup[2]/android.widget.ImageView


# Cliente selecciona opción de scan de factura desde shortcut o FAB, expone factura al lector y sistema redirige a pantalla de error y reintento o búsqueda manual de empresa

# Cliente selecciona opción de scan de factura desde pantalla de input, expone factura al lector y sistema redirige a pantalla de error y reintento o ingreso manual de código

# Cliente selecciona opción de scan de factura, expone factura al lector y sistema redirige a pantalla de “esta factura ya no está disponible…”

# Shortcut de pago: cliente selecciona opción de scan de factura y decide volver para elegir otra opción

# FAB de Pagos: cliente selecciona opción de scan de factura y decide volver para elegir otra opción

# Cliente selecciona opción de scan de factura desde shortcut o FAB, expone factura al lector pero sistema no capta código de barras, sistema debe permitir cerrar cámara y regresar a pantalla anterior

