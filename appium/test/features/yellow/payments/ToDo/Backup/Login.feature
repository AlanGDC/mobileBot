# magicLinkBaseUrl https://open-uat.bdsdigital.com.ar

# deviceId e08830ebfd0f7b4e  159357
# julianhodari@hotmail.com  070809

#   passcode: '147258',
#   email: 'bdsolqeyellow@gmail.com',
  
Feature: Onboarding

 Scenario: Login Email OK
   Given usuario selecciona Iniciar sesión
   When usuario selecciona Entendido
   And usuario completa el campo campo de texto con el valor mail@mail.com
   And usuario presiona Xpath //*[@*='Continuar']

 Scenario: Login Email mal formato
   Given usuario selecciona Iniciar sesión
   When usuario selecciona Entendido
   And usuario completa el campo campo de texto con el valor ASD
   And usuario presiona Xpath //*[@*='Continuar']
   And sistema muestra elemento mensaje de error con texto Correo inválido, intentá nuevamente.

 Scenario: Login Email vacio
   Given usuario selecciona Iniciar sesión
   When usuario selecciona Entendido
   And usuario presiona Xpath //*[@*='Continuar']
   And sistema muestra elemento mensaje de error con texto Correo inválido, intentá nuevamente.

  Scenario: Registro OK
   Given usuario selecciona Registrarme
   When usuario selecciona Entendido
   And usuario completa el campo campo de texto con el valor mail@mail.com
   And usuario presiona Xpath //*[@*='Continuar']

Scenario: Registro Email mal formato
   Given usuario selecciona Iniciar sesión
   When usuario selecciona Entendido
   And usuario completa el campo campo de texto con el valor ASD
   And usuario presiona Xpath //*[@*='Continuar']
   And sistema muestra elemento mensaje de error con texto Correo inválido, intentá nuevamente.

 Scenario: Registro Email vacio
   Given usuario selecciona Iniciar sesión
   When usuario selecciona Entendido
   And usuario presiona Xpath //*[@*='Continuar']
   And sistema muestra elemento mensaje de error con texto Correo inválido, intentá nuevamente.



   

   # Scenario: Login
   #  # Given sistema indica Iniciar sesión
   #  Given Usuario realiza login bdsolqeyellow@gmail.com
   #  And   usuario selecciona Teclado Clave Tecla 1
   #  And   usuario selecciona Teclado Clave Tecla 4
   #  And   usuario selecciona Teclado Clave Tecla 7
   #  And   usuario selecciona Teclado Clave Tecla 2
   #  And   usuario selecciona Teclado Clave Tecla 5
   #  And   usuario selecciona Teclado Clave Tecla 8
   #  When  usuario presiona Xpath //*[@*='PAGOS']
    # And   usuario selecciona Mas acciones 
    # And   usuario selecciona Buscar nuevo servicio
    # And   usuario completa el campo Buscar empresa con el valor Unicef
    # And   usuario selecciona empresa UNICEF del rubro Donaciones
    # And   usuario ingresa el valor 33557443 al campo Ingresa el codigo de pago
    # And   usuario selecciona Continuar
    # And   usuario selecciona Ingresa el monto a pagar
    # And   usuario presiona borrar 2 veces
    # And  usuario ingresa el valor 30 al campo Ingresa el monto a pagar
    # And   usuario selecciona Continuar
    # And   usuario selecciona Pagar
    # And  usuario presiona Xpath //*[@*='Finalizar']
    # And  usuario presiona Xpath //*[@*='INICIO']
    # # And   usuario presiona Xpath /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton
    # And   usuario presiona Xpath /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.TextView[1]
    # And   usuario presiona Xpath //*[@*='Desvincular dispositivo']
    # And   usuario presiona Xpath //*[@*='Desvincular']
    

    