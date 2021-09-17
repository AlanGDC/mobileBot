Feature: BDSD- Beneficio

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
  Scenario: Beneficio
    When  usuario selecciona desafio del sol estado inicial


modal beneficio:
desafio del sol estado inicial

"Completá los 3 pasos y te regalamos $1000 para que uses en lo que quieras."



"Pedí tu tarjeta de débito."
"Realizá una transferencia a la cuenta de un tercero por al menos $ 300."
"Realizá un pago o una recarga de servicios por al menos $ 200."

"Mas información"


exit:
/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton
