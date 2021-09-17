Given(/^CloseSystemUIisntResponding$/, 
function (fileName) {
  var label='~';
  label.concat(fileName);
  Payments.usuarioSelecciona(label.concat(fileName));
});
