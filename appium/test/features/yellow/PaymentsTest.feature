Feature:BDSD-1736 Pago Masivo


Background: Reiniciar Datos
   Given Usuario realiza login bdsolqeyellow@gmail.com
  

 Scenario: Usuario realiza un pago masivo desde la home de pagos, sistema muestra congrats.
   When   usuario presiona Xpath //*[@text='PAGOS']
    