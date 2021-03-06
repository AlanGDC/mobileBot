var i = 0,
    fs = require('fs'),
    newman = require('newman'); // ensure that you have run "npm i newman" in the same directory as this file

newman.run({
  collection: require('./BITRISE_Download Last UAT app.json'),
  reporters: 'cli'
  // run options go here
}, function (err, summary) {
  // handle collection run err, process the run summary here
}).on('request', function (err, execution) { // This is triggered when a response has been recieved
   if (err) { return console.error(err); }

   fs.writeFile(`app-release-int-${i++}.apk`, execution.response.stream, function (error) {
      if (error) { console.error(error); }
   });
});