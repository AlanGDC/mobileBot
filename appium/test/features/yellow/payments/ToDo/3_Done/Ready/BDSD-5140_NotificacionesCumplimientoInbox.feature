Feature: BDSD-5140_NotificacionesCumplimientoInbox

Background: Login
   Given Reset wiremock

 
 @Yellow_HappyPathRegretion
 Scenario: Usuario existente ya tiene un hito cumplido, sistema no envía notificación inbox del hito ya cumplido, sino de los dos hitos que tiene por cumplir. 
    Given  Get to wiremock /statusInicial
    And   Usuario recibe notificacion beneficios 1
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When   usuario presiona Xpath /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageView
    Then  sistema muestra Xpath //*[contains(@text,'¡Muy bien! Diste el primer paso')]
    And   sistema muestra Xpath //*[contains(@text,'Quedan 2 más para completar el desafío.')]
    And   usuario presiona Xpath //*[contains(@text,'Quedan 2 más para completar el desafío.')]
    And   sistema muestra Xpath //*[contains(@text,'Desafío del Sol')]
    And   usuario selecciona Entendido



Scenario: Usuario existente cumplió alguno de los 2 hitos restantes, sistema envía notificación inbox con el nro de hito que cumplió y el status del desafío. 
    Given  Get to wiremock /statusInicial
    And   Usuario recibe notificacion beneficios 2
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When   usuario presiona Xpath /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageView
    Then  sistema muestra Xpath //*[contains(@text,'¡Estás muy cerca de conseguirlo!']
    And   sistema muestra Xpath //*[contains(@text,'Queda 1 paso para completar el desafío.')]
    And   usuario presiona Xpath //*[contains(@text,'Queda 1 paso para completar el desafío.')]
    And   sistema muestra Xpath //*[contains(@text,'Desafío del Sol')]
    And   usuario selecciona Entendido


Scenario: Usuario nuevo cumplió alguno de los 3 hitos, sistema envía notificación inbox con el nro de hito que cumplió y el status del desafío. 
    Given  Get to wiremock /statusInicial
    And   Usuario recibe notificacion beneficios 3
    And   Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When   usuario presiona Xpath /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageView
    Then  sistema muestra Xpath //*[contains(@text,'¡Desafío completado!']
    And   sistema muestra Xpath //*[contains(@text,'Tus $ 1500 van en camino hacia tu caja de ahorro.')]
    And   usuario presiona Xpath //*[contains(@text,'Tus $ 1500 van en camino hacia tu caja de ahorro.')]
    And   sistema muestra Xpath //*[contains(@text,'Desafío del Sol')]
    And   usuario selecciona Entendido
