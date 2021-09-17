// android:id/aerr_close
const { HtmlReporter } = require("@rpii/wdio-html-reporter");
    let resultado
    
    /* eslint-disable */
    exports.config = {
      host: "127.0.0.1",
      port: 4723,
      specs: [
        "./test/features/yellow/payments/ToDo/5_Blocked/CloseSystemUIisntResponding.feature",
      ],
      exclude: ["./node_modules/**/**.feature"],
      sync: true,
      bail: 0,
      connectionRetryTimeout: 90000,
      connectionRetryCount: 3,
      services: ["appium"],
      appium: {
        command: "appium",
        waitStartTime: 6000,
        args: {
          commandTimeout: 30000,
          // address: "127.0.0.1",
          port: 4723,
          sessionOverride: true,
          noReset: true,
          debugLogSpacing: true,
        },
      },
      framework: "cucumber",
      maxInstances: 2,
      maxInstancesPerCapability: 1,
      cucumberOpts: {
        require: ["./test/steps-definitions/**/*.js"], // <string[]> (file/dir) require files before executing features
        backtrace: true, // <boolean> show full backtrace for errors
        requireModule: ["@babel/register"], // <string[]> ("extension:module") require files with the given EXTENSION after requiring MODULE (repeatable)
        dryRun: false, // <boolean> invoke formatters without executing steps
        failFast: false, // <boolean> abort the run on first failure
        format: ["pretty", "progress"], // <string[]> (type[:path]) specify the output format, optionally supply PATH to redirect formatter output (repeatable)
        colors: true, // <boolean> disable colors in formatter output
        snippets: true, // <boolean> hide step definition snippets for pending steps
        source: true, // <boolean> hide source uris
        profile: [], // <string[]> (name) specify the profile to use
        strict: false, // <boolean> fail if there are any undefined or pending steps
        // tags: ["@BDSD-1736"],           // <string[]> (expression) only execute the features or scenarios with tags matching the expression
        timeout: 360000, // <number> timeout for step definitions
        ignoreUndefinedDefinitions: true, // <boolean> Enable this config to treat undefined definitions as warnings.
      },
    
      //
      // =====
      // Hooks
      // =====
      // beforeSession(config, capabilities, specs) {
      //   require("@babel/register");
      // },
    
      // before(capabilities, specs) {
      //   const chai = require("chai");
    
      //   global.expect = chai.expect;
      //   global.assert = chai.assert;
      //   global.should = chai.should();
      // },
      // afterStep: function (uri, feature, scenario, step, result) { 
      //   date = Date.now();
      //   console.log('afterStep scenario.passed ', scenario.passed)
      //   console.log('afterStep feature.document.feature.name ', feature.document.feature.name)
      //   console.log('afterStep step.scenario.name', step.scenario.name)
      //   console.log('afterStep step.step.text', step.step.text)
      //   if (scenario.passed) {
      //      resultado="OK"
      //  } else {
      //       resultado="ERROR"
      //  }
      //   let featureName= feature.document.feature.name
      //   let scenarioName=step.scenario.name
      //   let stepName=step.step.text
    
    
      //   // browser.saveScreenshot('./reports/screenshots/'+resultado+' '+featureName+scenarioName+stepName+'.png')
      //   browser.saveScreenshot('./reports/screenshots/'+resultado+date+'.png')
      //   browser.takeScreenshot();
    
      // },
      // // onPrepare: function onPrepare(config, capabilities) {},
      // // beforeCommand: function (commandName, args) { },
      // // beforeFeature: function (uri, feature, scenarios) { },
      // // beforeScenario: function (uri, feature, scenario, sourceLocation) { }
      // // beforeStep: function (uri, feature, stepData, context) { }
      // // afterStep: function (uri, feature, { error, result, duration, passed }, stepData, context) { }
      // afterScenario: function () {
      //   browser.reset();
      //  },
      // afterFeature: function (uri, feature, scenarios) { }
      // afterCommand: function (commandName, args, result, error) { }
      // after: function (result, capabilities, specs) { }
      // afterSession: function (config, capabilities, specs) { }
      // onComplete: function(exitCode, config, capabilities, results) { }
      // onReload: function(oldSessionId, newSessionId) { }
    };
    


