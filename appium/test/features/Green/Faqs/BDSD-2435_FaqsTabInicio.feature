@regretion_green @regretion
Feature: BDSD-2435 Pantalla de Ayuda - App Loggeada - Tab Inicio + envio sugerencias

  Como usuario
  Quiero poder ingresar a “Ayuda” dentro de la App
  Para encontrar todo el soporte que necesito

  Background:
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8

  Scenario: El usuario selecciona Ver todas y es redireccionado a una pantalla con todas las secciones
    Given usuario presiona Xpath /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.TextView
    When usuario selecciona Ver todas
    Then sistema indica COMO ABRIR MI CUENTA
    Then sistema indica INICIO DE SESIÓN
    Then sistema indica CUENTA
    Then sistema indica TRANSFERENCIAS
    # Then sistema indica INVERSIONES #No aparece en la lista en develop
    Then sistema indica PAGOS DE SERVICIOS
    Then sistema indica TARJETAS

  Scenario: El usuario selecciona Mas opciones y visualiza las secciones Contacto Whatsapp, Sugerencias, Sucursales y Teléfono
    Given usuario presiona Xpath /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.TextView
    When usuario selecciona accessibilityLabel.contactUs
    Then sistema indica Contactanos por Whatsapp
    Then sistema indica Dejanos tu sugerencia
    Then usuario selecciona Teléfono
    Then usuario selecciona Sucursales

  Scenario: El usuario envia una sugerencia y vuelve a la tab inicio
   Given usuario presiona Xpath /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.TextView
    When usuario selecciona accessibilityLabel.contactUs
    Then usuario selecciona Dejanos tu sugerencia
    Then usuario completa el campo campo de texto con el valor Sugerencias Chat logueado
    Then usuario selecciona Enviar
    Then sistema indica ¡Muchas gracias! Tu sugerencia fue recibida
    Then usuario selecciona Finalizar
    Then sistema indica Transferir