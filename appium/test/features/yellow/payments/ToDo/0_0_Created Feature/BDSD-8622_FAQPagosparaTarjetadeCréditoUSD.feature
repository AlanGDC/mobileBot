Feature: BDSD-8622_FAQPagosparaTarjetadeCréditoUSD


 Background: Reiniciar Datos
   Given Reset wiremock
    And Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  sistema indica selected, INICIO, tab, 1 out of 5
    And   usuario selecciona selected, INICIO, tab, 1 out of 5


  Scenario: FAQ Pagos para Tarjetade Crédito USD
    When  usuario selecciona selected, INICIO, tab, 1 out of 5
    And   usuario presiona Xpath /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.TextView
    And   usuario selecciona Ver todas
    # And   usuario scrolea PAGOS DE SERVICIOS
    And   usuario selecciona PAGOS DE SERVICIOS
    # And  usuario presiona Xpath //*[@*='¿Puedo pagar una el vencimiento de una tarjeta de crédito en dólares?']
    And usuario scrolea //*[@*='¿Puedo pagar una el vencimiento de una tarjeta de crédito en dólares?']
    And  usuario presiona Xpath //*[@*='¿Puedo pagar una el vencimiento de una tarjeta de crédito en dólares?']
  #   "¿Puedo pagar una el vencimiento de una tarjeta de crédito en dólares?"
  #   "Por el momento no es posible pero sí verás el vencimiento en tu listado de “Próximos vencimientos”. Si la empresa lo permite podrás realizar un “Pago espontáneo” por el equivalente en pesos de tu vencimiento en dólares. Una vez efectuado el pago, seguirás viendo el vencimiento hasta la fecha de su liquidación."
  # Boton ayuda: 
  #   "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.TextView"
  # usuario scrolea 