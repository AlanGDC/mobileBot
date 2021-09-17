import { Then, Given, When} from "cucumber";
import Payments from "../../page-objects/Payments/Payments";
import axios from 'axios'
import { Gestures } from '../../../helpers/Gestures'


//'./helpers/Gestures.js'

var chai = require('chai');
var sinon = require('sinon-chai');
chai.use(require('sinon-chai'));

Given(/^Usuario realiza login (.*)$/, 
function (email) {
  console.log(" USUARIO REALIZA LOGIN");
  
var deviceId = Payments.getText("//*[contains(@content-desc, 'deviceId:')]");

var linkAccountTokenPath = Payments.getText("//*[contains(@content-desc, 'magicLinkBaseUrl:')]")


var actionToken
var appBundleId
var environment
var urlLinkAccount

console.log("getCurrentDevice id: "+deviceId);
appBundleId = driver.getCurrentPackage();
console.log("getCurrentPackage id: "+appBundleId);
// ar.com.bdsol.bds.squads.yellow
environment= appBundleId.slice(17,20)
console.log("getCurrent Environment: "+environment);

// urlLinkAccount= "https://bff-mobile-"+environment+".bdsdigital.com.ar/api/auth/link-account-token";
urlLinkAccount= "https://bff-mobile-int.bdsdigital.com.ar/api/auth/link-account-token";

console.log("getCurrent urlLinkAccount: "+urlLinkAccount);

        axios.post(urlLinkAccount, { // auth-int.bdsdigital
          deviceId,
          email,
          appBundleId //:  "ar.com.bdsol.bds.integration"//"ar.com.bdsol.bds.uat"//
        }).then(resp => {
          actionToken =resp.data.actionToken;
          console.log("action token : "+actionToken);
          console.log("getCurrent resp.data: "+resp.data);
          browser.url(linkAccountTokenPath+"/link-account?token="+actionToken);// open-uat
          // driver.url("https://open-int.bdsdigital.com.ar/link-account?token="+actionToken);

          });
});

Given(/^usuario swipea (.*)$/, 
function (elemento) {
  var label='~';
  // var selector =label+element
  // driver.touchScroll(10, 100, element);
  // AppiumDriver.performTouch() with args: [[
    // {"action":"press","options":{"x":1034,"y":1188}},{"action":"wait","options":{"ms":500}},{"action":"moveTo","options":{"x":677,"y":1177}},{"action":"release","options":{}}],"13019aae-2e08-49f1-b4fe-4dfb12d2b4b3"]
  // driver.touchPerform([
  //   { action: 'press', options: { x: 1034, y: 1188 }},
  //   { action: 'moveTo', options: { x: 677, y: 1177 }},
  //   { action: 'release' }

    // { action: 'press', options: [Object] },
    // { action: 'moveTo', options: [Object] },
    // { action: 'release' }

  // ]);
  // Payments.sistemaIndica(label.concat(fileName));
  Payments.sistemaIndica(elemento)
  

  // $(elemento).touchAction([
  //       'press',
  //       { action: 'moveTo', x: 0, y: 632 },
  //       'release'
  //   ])

  // browser.touchAction([
  //   { action: 'press', x: 600, y: 600 },
  //   { action: 'moveTo', x: 100, y: 600 },
  //   'release'
  //   ])

  

  console.log('Localization x: '+$(elemento).getLocation('x'));
  let xpos =  $(elemento).getLocation('x') +100
  console.log('Localization y: '+$(elemento).getLocation('y')); 
  let ypos =  $(elemento).getLocation('y') +100

    driver.touchPerform([
      { action: 'press', options: { x: xpos, y: ypos }},
      {
        action: "wait",
        options: { ms: 1000 }
      },
      { action: 'moveTo', options: { x: xpos-100, y: ypos }},
      { action: 'release' }
    ]);
    driver.pause(1000);

});
// Given(/^Login con usuario (.*)$/, mail => {
//   Payments.sistemaIndica('~¡Bienvenido!')


//   deviceId = $('~deviceId').getText().trim();
//   magicLinkBaseUrl = $('~magicLinkBaseUrl').getText().trim()
//   const actionToken = browser.call(() => linkAccountToken(mail, deviceId));

//   browser.url(`${magicLinkBaseUrl}/link-account?token=${actionToken}`);
// });


Given(/^Usuario selecciona (.*)$/, 
function (fileName) {
  var label='~';
  label.concat(fileName);
  Payments.usuarioSelecciona(label.concat(fileName));
});

Given(/^Usuario recibe notificacion beneficios (.*)$/, 
function (nroBenef) {
  var	customerId="16"
  var campaignId="LOYALTY_PROGRAM_20"
  var completedStepId="TRANSFERS"
  var completedStepsCount=nroBenef

  var payload={campaignId,completedStepId,completedStepsCount}
  
  axios.post('https://notifications-yellow.bdsdigital.com.ar/campaigns/notify-completed-step', { 
    customerId,
    payload
  }).then();

});

Given(/^Sistema indica (.*)$/, 
function (fileName) {
  var label='~';
  label.concat(fileName);
  Payments.sistemaIndica(label.concat(fileName));
});

Given(/^Wait (.*) seconds$/, 
function (time) {
  Payments.waitTIme(time);
});

Given(/^usuario abre notificaciones$/, 
function () {
  driver.openNotifications();
  
});
  
When(/^usuario selecciona (.*)$/, 
function (fileName) {
  var label='~';
  label.concat(fileName);  
  // Agendar servicio
  if(fileName=='Agendar servicio')
  {
        if(browser.config.capabilities.browserName=='iOS')
      {
        Payments.usuarioPresiona('(//XCUIElementTypeOther[@name="Agendar servicio"])[2]/XCUIElementTypeOther');  
      } else {
        Payments.usuarioPresiona('/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[4]/android.view.ViewGroup');  
      }
  } else {
    Payments.usuarioSelecciona(label.concat(fileName));  
  }
  

});

Given(/^usuario cierra notificaciones$/, 
  function () {
    driver.pressKeyCode(4);
    
  });

When(/^usuario copia el valor (.*)$/, 
function (valorCopiado) {
  var clipboard =driver.getClipboard().trim();;
console.log(clipboard)
  if(valorCopiado==clipboard)
  {
  } else {
    new Error('oh no' + driver.getClipboard())

  }

});


When(/^usuario presiona Xpath (.*)$/, 
function (fileName) {
  Payments.usuarioPresiona(fileName);
});

When(/^sistema muestra Xpath (.*)$/, 
function (fileName) {
  Payments.sistemaIndicaXpath(fileName);
});

When(/^sistema no muestra Xpath (.*)$/, 
function (fileName) {
  Payments.sistemaNOIndicaXpath(fileName);
});


When(/^sistema indica Xpath (.*)$/, 
function (fileName) {
  Payments.sistemaIndicaXpath(fileName);
});



When(/^sistema muestra xpath (.*) con texto (.*)$/, 
function (fileName,texto) {
  Payments.sistemaIndicaXpathConTexto(fileName, texto);
});

When(/^sistema indica (.*)$/, 
function (fileName) {
  var label='~';
  label.concat(fileName);
  Payments.sistemaIndica(label.concat(fileName));
});

When(/^sistema no muestra el valor (.*)$/, 
function (fileName) {
  var label='~';
  label.concat(fileName);
  Payments.sistema_no_muestra_el_valor(label.concat(fileName));
});

Then(/^Usuario selecciona (.*)$/, 
function (fileName) {
  var label='~';
  label.concat(fileName);
  Payments.usuarioSelecciona(label.concat(fileName));
});

Then(/^usuario verifica monto a pagar (.*) en el campo (.*)$/, 
function (factura, montoAPagar) {
  Payments.usuarioVerificaMonto(factura, );
});

Then(/^Sistema indica (.*)$/, 
function (fileName) {
  var label='~';
  label.concat(fileName);
  Payments.sistemaIndica(label.concat(fileName));
});
    
When(/^usuario completa el campo (.*) con el valor (.*)$/, 
function (fileName, valor) {
  var label='~';
  label.concat(fileName);
  Payments.usuario_completa_el_campo(label.concat(fileName), valor);
});

When(/^usuario completa campo xpath (.*) con el valor (.*)$/, 
function (fileName, valor) {
  Payments.usuario_completa_el_campo(fileName, valor);
});

When(/^usuario presiona borrar (.*) veces$/, 
function (cant) {

  if(browser.config.capabilities.browserName=='iOS')
  {
    console.log("ESTA EN IOS");
    var label='~';
    for (var i = 0; i < cant; i++) {
      Payments.usuario_completa_el_campo(label.concat('Ingresa el monto a pagar'), '\b');
    }
  
  } else {
    console.log("ESTA EN ANDROID");
    for (var i = 0; i < cant; i++) {
      driver.pressKeyCode(67);
    }
  }
    
});

When(/^usuario swipea elemento (.*) a la izquierda$/, 
function (element) {
  $("~"+element).touchAction({
    action: 'tap', x: 30, y:20
    })
 
});

Given(/^CloseSystemUIisntResponding$/, 
  function () {
    var fileName ="android:id/aerr_close"
    var label='~';

    try {
      Payments.usuarioSelecciona(label.concat(fileName));
      Payments.usuarioSelecciona(label.concat(fileName));
      Payments.usuarioSelecciona(label.concat(fileName));
    } catch (error) {
      console.log(error);
    }
    
  });

  

When(/^usuario presiona Boton Volver Atras$/, 
function () {
    driver.pressKeyCode(4); 
});
When(/^usuario ingresa el valor (.*) al campo (.*)$/, 
function (value, label) {

  // console.log(driver.sessionCapabilities());
  console.log(browser.config.capabilities.browserName);
  // iOS
  // Android

  if(browser.config.capabilities.browserName=='iOS')
  {
    console.log("ESTA EN IOS");
    var labelTag='~';
    Payments.usuario_completa_el_campo(labelTag.concat(label), value);
  } else {
    console.log("ESTA EN ANDROID");
    var labelTag='~';
    Payments.usuarioSelecciona(labelTag.concat(label));

    for (var i = 0; i < value.length; i++) {  
      switch (value.charAt(i)) {
        case '0':
          driver.pressKeyCode(7);
          break;            
        case '1':
          driver.pressKeyCode(8);
          break;
        case '2':
          driver.pressKeyCode(9);
          break;
        case '3':
          driver.pressKeyCode(10);
          break;
        case '4':
          driver.pressKeyCode(11);
          break;
        case '5':
          driver.pressKeyCode(12);
          break;
        case '6':
          driver.pressKeyCode(13);
          break;
        case '7':
          driver.pressKeyCode(14);
          break;
        case '8':
          driver.pressKeyCode(15);
          break;
        case '9':
          driver.pressKeyCode(16);
          break;
        default:     
        } }
  }

  


});

When(/^Reset wiremock$/, 
function () {
  

    if(browser.config.capabilities.browserName=='iOS')
    {
      console.log("ESTA EN IOS");
        axios.post("http://localhost:9999/__admin/mappings/reset").then(resp => {
          console.log(resp.data);
      });
    } else {
      console.log("ESTA EN ANDROID");
        axios.post("http://localhost:8080/__admin/mappings/reset ").then(resp => {
          console.log(resp.data);
      });
    }

    driver.reset();

});


When(/^sistema muestra elemento (.*) con texto (.*)$/, 
function (field, valor) {
  var label='~';

  Payments.sistema_muestra_elemento_con_texto(label.concat(field), valor);
  
});


When(/^usuario scrolea hacia (.*)$/, 
function (element) {
  // var label='~';

  driver.touchScroll(10, 100, element);
  
});


// @Given("^Get to wiremock (.*)$")
// public void reset_wiremock(String url){
//     //__admin/reset
//     given().when().get("http://localhost:8080"+url).then().statusCode(200);
// }
When(/^Get to wiremock (.*)$/, 
    function (url) {
      if(browser.config.capabilities.browserName=='iOS')
      {
        console.log("ESTA EN IOS");
        axios.get("http://localhost:9999"+url).then(resp => {
            console.log(resp.data);
        });
      } else {
        console.log("ESTA EN ANDROID");
          axios.get("http://localhost:8080"+url).then(resp => {
            console.log(resp.data);
        });
      }
        
    });
    