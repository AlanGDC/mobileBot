const selectors = {
  homePagos: "~Boton Login",
};
const DEFAULT_TIMEOUT = 60000;
var gMonto = 0;

class TabBar {

  usuarioSelecciona(fileName, isShown = true) {
    // wait(1000);  
      if(browser.config.capabilities.browserName=='iOS' && fileName=='~Pagar')
      {  
        $('(//XCUIElementTypeOther[@name="Pagar"])[4]').waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
        $('(//XCUIElementTypeOther[@name="Pagar"])[4]').waitForExist(DEFAULT_TIMEOUT, !isShown);
        $('(//XCUIElementTypeOther[@name="Pagar"])[4]').waitForEnabled(DEFAULT_TIMEOUT, !isShown);
        $('(//XCUIElementTypeOther[@name="Pagar"])[4]').click();
        try {
          $('(//XCUIElementTypeOther[@name="Pagar"])[4]').click();        
          } catch (e) {
            console.log(e.message);
          }
      }
      else 
      {
        $(fileName).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
        $(fileName).waitForExist(DEFAULT_TIMEOUT, !isShown);
        $(fileName).waitForEnabled(DEFAULT_TIMEOUT, !isShown);
        $(fileName).click();
        if(fileName=='~Recargar 150'||fileName=='~Edenor - Cuota Anual04/12/19 10055.00'||fileName=='~Edenor 24/12/19 212.31'||fileName=='~Nuevo pago'||fileName=='~Pagar'||fileName=='~Continuar'||fileName=='~Visa 31/05/19 990.00'||(browser.config.capabilities.browserName=='iOS' && fileName=='~~Efectuar un pago espontáneo'))
        {
          console.log('Alguien mando el label pagar');
          try {
            $(fileName).click();        
            } catch (e) {
              console.log(e.message);
            }
        }
      }
  
     
    // if(fileName=='Pagar')
    // {
        // try {
        //   $(fileName).click();        
        //   } catch (e) {
        //     console.log(e.message);
        //   }
      // }
      // else 
      // {
      // }
      
    function wait(ms){
      var start = new Date().getTime();
      var end = start;
      while(end < start + ms) {
        end = new Date().getTime();
      }
      }
 
    }
    

    waitTIme(time, isShown = true) {
      wait(3000);  
        function wait(ms){
          var start = new Date().getTime();
          var end = start;
          while(end < start + ms) {
            end = new Date().getTime();
        }
        }
   
    }

  sistemaIndica(fileName, isShown = true){
  $(fileName).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
  $(fileName).waitForExist(DEFAULT_TIMEOUT, !isShown)
  } 
  
  usuarioVerificaMonto(fileName, montoAPagar, isShown = true) {

    montoAPagar = parseFloat($(montoAPagar).getText().replace("$", "").replace(".", "").trim());

    var strText = $(fileName).getText();
    var intMonto = parseFloat(strText.replace("$", "").replace(".", "").trim());
    gMonto = gMonto+intMonto

    console.log("MONTO GMONTO = "+gMonto);
    console.log("MONTO A PAGAR = "+montoAPagar);

    if (montoAPagar != gMonto){
      throw new Error('MONTO A PAGAR INCORRECTO')
    }
  }

  getText(fileName, isShown = true){
    $(fileName).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    return ($(fileName).getText().trim());
    } 
    
  sistema_no_muestra_el_valor(fileName, isShown = true){
    wait(2000);  
      if($(fileName).isDisplayed())
      {
        throw new Error('oh no')
      } else { }

      function wait(ms){
        var start = new Date().getTime();
        var end = start;
        while(end < start + ms) {
          end = new Date().getTime();
        }
        }
  }

  usuarioPresiona(label, isShown = true) {
    $(label).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    $(label).click();
  }

  usuario_completa_el_campo(fileName,value, isShown = true) {
    $(fileName).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    $(fileName).waitForExist(DEFAULT_TIMEOUT, !isShown);
    $(fileName).waitForEnabled(DEFAULT_TIMEOUT, !isShown);
    $(fileName).setValue(value);
  }

  usuario_completa_el_campo(fileName,value, isShown = true) {
  $(fileName).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
  $(fileName).waitForExist(DEFAULT_TIMEOUT, !isShown);
  $(fileName).waitForEnabled(DEFAULT_TIMEOUT, !isShown);
  $(fileName).setValue(value);
  }

  sistemaIndicaXpath(fileName, isShown = true) {
    $(fileName).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    console.log($(fileName).getText().trim())
  }
  
  sistemaNOIndicaXpath(fileName, isShown = true) {
    if($(fileName).isDisplayed())
      {
        new Error('oh no')
      } else {
        
      }
  }

  sistemaIndicaXpathConTexto(fileName,texto, isShown = true) {
    $(fileName).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    
        if(texto.trim() == $(fileName).getText().trim())
        {
          
        } else {
          throw new Error('Texto no coincide, texto del elemento: '+ $(fileName).getText().trim() + ', texto esperado :'+texto.trim())
        }
    }
  
  sistema_muestra_elemento_con_texto(fileName,value, isShown = true) {
    $(fileName).waitForDisplayed(DEFAULT_TIMEOUT, !isShown);
    $(fileName).waitForExist(DEFAULT_TIMEOUT, !isShown);
    $(fileName).waitForEnabled(DEFAULT_TIMEOUT, !isShown);
    
          if(value.trim() == $(fileName).getText().trim())
          {
            
          } else {
            throw new Error('Texto no coincide, texto del elemento: '+ $(fileName).getText().trim() + ', texto esperado :'+value.trim())
          }
    }
  
}

export default new TabBar();
