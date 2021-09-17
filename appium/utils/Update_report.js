var myArgs = process.argv.slice(2);

const jsonfile = require('jsonfile')
 
const file = '.netlify/state.json'
const yellowTkn = { siteId: '9ebade43-7f1f-4884-8e28-785523b8a0d1' }
const greenTkn  = { siteId: '73e9b551-c553-4484-bc53-91dac6485064' }
const redTkn    = { siteId: 'ab779da8-66bd-4aab-afb0-0651c069b33d' }
const cyanTkn   = { siteId: '2bee76f2-46ac-452a-9fae-79ade3870a33' }
const api27Int  = { siteId: 'f1aa615a-e98a-425c-8cd0-9a8987031ee4' } //automation-api-27-int
const api26Int  = { siteId: 'c4d4bb17-5899-4882-9d73-33ee738e9ba4' } //automation-api-26-int
const api25Int  = { siteId: '4fb79df5-639b-4bdb-8884-8b10015870e1' } //automation-api-25-int
const api24Int  = { siteId: 'fe599b71-09e5-42ea-b8f6-394c688a9c51' } //automation-api-24-int
const api23Int  = { siteId: 'ad01b4ec-87cd-4296-9261-1dfaaf30b980' } //automation-api-23-int
const api22Int  = { siteId: 'c5e168be-974d-46dd-b3ed-76fbf3644b19' } //automation-api-22-int

const setToken = async (obj) => {
  jsonfile.writeFile(file, obj)
  .then(res => {
    console.log('Write token complete')
  })
  .catch(error => console.error(error))
}

switch (myArgs[0]) {
  case 'green':
      setToken(greenTkn)

      console.log('green report.');
      break;
  case 'red':
      setToken(redTkn)

      console.log('red report.');
      break;
  case 'yellow':
      setToken(yellowTkn)

      console.log('yellow report.');
      break;
  case 'cyan':
      setToken(cyanTkn)

        console.log('cyan report.');
      break;
  case 'cyan':
    setToken(cyanTkn)

      console.log('cyan report.');
    break;
    case 'system-images;android-27;google_apis_playstore;x86':
    setToken(api27Int)

      console.log('api27Int report.');
    break;
    case 'system-images;android-26;google_apis_playstore;x86':
    setToken(api26Int)

      console.log('api26Int report.');
    break;
    case 'system-images;android-25;google_apis_playstore;x86':
    setToken(api25Int)

      console.log('api25Int report.');
    break;
    case 'system-images;android-24;google_apis_playstore;x86':
    setToken(api24Int)

      console.log('api24Int report.');
    break;
    case 'system-images;android-23;google_apis;x86':
      setToken(api23Int)
  
        console.log('api23Int report.');
      break;
    case 'system-images;android-22;google_apis;x86':
      setToken(api22Int)
  
        console.log('api22Int report.');
      break;
  default:
      console.log('Sorry, that is not something I know how to do.');
  }


  


