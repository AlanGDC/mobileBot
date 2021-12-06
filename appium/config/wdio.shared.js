const { HtmlReporter } = require("@rpii/wdio-html-reporter");
let resultado

/* eslint-disable */
exports.config = {
  host: "127.0.0.1",
  port: 4723,
  user: process.env.BROWSERSTACK_USERNAME || 'alanduarte_uyx2Vj',
  key: process.env.BROWSERSTACK_ACCESS_KEY || '22AB1Cum9og1kuVnYoyX',
  specs: [
//    process.env.ENV
       "./test/features/prueba.feature"
    // "./test/features/yellow/payments/ToDo/2.1_Doing/Login.feature",
    // "./test/features/Green/Faqs/BDSD-2435_FaqsTabInicio.feature"
    // "./test/features/red/Home/BoxPaid.feature"
  ],
  exclude: ["./node_modules/**/**.feature"],
  sync: true,
  bail: 0,
  connectionRetryTimeout: 90000,
  connectionRetryCount: 15,
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
  
  // Reporte junit
  reporters: 
    [
        'spec',
        [
          'junit',
          {
            addFileAttribute: true,
            outputDir: './reports/junit-report',
            outputFileFormat: function(capabilities) { // optional
              return 'junit-report.xml'
            }
          }
        ],
           'spec',
        [
            'allure',
            {
                outputDir: './test-report/allure-result/',
                disableWebdriverStepsReporting: false,
                disableWebdriverScreenshotsReporting: false,
                useCucumberStepReporter: true,
            },
        ],
        'cucumberjs-json',
        [ 'cucumberjs-json', {
                jsonFolder: './reports/json/',
                language: 'en',
            },
        ],
  ],  


  // reporters: [ 'spec', HtmlReporter],
  // reporterOptions: {
  //     htmlReporter: {
  //         removeFolders: true,
  //         jsonFolder: '.tmp/new/',
  //         reportFolder: './tmp/multiple-cucumber-html-reporter/',
  //         displayDuration: true,
  //         openReportInBrowser: true,
  //         saveCollectedJSON: true,
  //         disableLog: true,
  //         pageTitle: 'pageTitle',
  //         reportName: 'reportName',
  //         pageFooter: '<div><h1>Custom footer</h1></div>',
  //         customData: {
  //             title: 'Run info',
  //             data: [
  //                 { label: 'Project', value: 'Custom project' },
  //                 { label: 'Release', value: '1.2.3' },
  //                 { label: 'Cycle', value: 'B11221.34321' },
  //                 { label: 'Execution Start Time', value: 'Nov 19th 2017, 02:31 PM EST' },
  //                 { label: 'Execution End Time', value: 'Nov 19th 2017, 02:56 PM EST' }
  //             ]
  //         },},},
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
  beforeSession(config, capabilities, specs) {
    require("@babel/register");
    function exec(cmd, handler = function(error, stdout, stderr){console.log(stdout);if(error !== null){console.log(stderr)}})
    {
        const childfork = require('child_process');
        return childfork.exec(cmd, handler);
    }
    exec('./utils/checkANRopen.sh'); 
  },

  before(capabilities, specs) {
    const chai = require("chai");

    global.expect = chai.expect;
    global.assert = chai.assert;
    global.should = chai.should();
  },
  afterStep: function (uri, feature, scenario, step, result) { 
    date = Date.now();
    console.log('afterStep scenario.passed ', scenario.passed)
    console.log('afterStep feature.document.feature.name ', feature.document.feature.name)
    console.log('afterStep step.scenario.name', step.scenario.name)
    console.log('afterStep step.step.text', step.step.text)
    if (scenario.passed) {
       resultado="OK"
   } else {
        resultado="ERROR"
   }
    let featureName= feature.document.feature.name
    let scenarioName=step.scenario.name
    let stepName=step.step.text


    // browser.saveScreenshot('./reports/screenshots/'+resultado+' '+featureName+scenarioName+stepName+'.png')
    browser.saveScreenshot('./reports/screenshots/'+resultado+date+'.png')
    browser.takeScreenshot();

  },
  // onPrepare: function onPrepare(config, capabilities) {},
  // beforeCommand: function (commandName, args) { },
  // beforeFeature: function (uri, feature, scenarios) { },
  beforeScenario: function (uri, feature, scenario, sourceLocation) {
    function exec(cmd, handler = function(error, stdout, stderr){console.log(stdout);if(error !== null){console.log(stderr)}})
    {
        const childfork = require('child_process');
        return childfork.exec(cmd, handler);
    }
    exec('./utils/checkAPPopen.sh'); 
   },
  // beforeStep: function (uri, feature, stepData, context) { }
  // afterStep: function (uri, feature, { error, result, duration, passed }, stepData, context) { }
  afterScenario: function () {
    browser.reset();
   },
  // afterFeature: function (uri, feature, scenarios) { }
  // afterCommand: function (commandName, args, result, error) { }
  // after: function (result, capabilities, specs) { }
  // afterSession: function (config, capabilities, specs) { }
  // onComplete: function(exitCode, config, capabilities, results) { }
  // onReload: function(oldSessionId, newSessionId) { }
};
