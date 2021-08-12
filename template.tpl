___INFO___

{
  "displayName": "Traffor",
  "categories": [
    "ANALYTICS",
    "ADVERTISING"
  ],
  "description": "Traffor.com - zobrazování reklamních prvků",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "displayName": "Vít Michalek - Traffor.com",
    "id": "github.com_vitmichalek"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "clearOnCopy": true,
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "simpleValueType": true,
    "name": "idtf",
    "type": "TEXT",
    "help": "ID projektu najdete v adminisraci",
    "valueHint": "12345-asdasd-1234",
    "displayName": "ID projektu"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const setInWindow = require('setInWindow');
const copyFromWindow = require('copyFromWindow');
const injectScript = require('injectScript');
const queryPermission = require('queryPermission');
const Math = require('Math');
const isConsentGranted = require('isConsentGranted');
const addConsentListener = require('addConsentListener');



    let idtf = data.idtf;
    const url = 'https://traffor.com/rd/?v=2&idtf='+idtf;
    if (queryPermission('inject_script', url)) {
      injectScript(url, () => {
        data.gtmOnSuccess();
        //log('SKLIK RETARGETING: status success', data);
      }, () => {
        data.gtmOnFailure();
       // log('SKLIK RETARGETING: status failure', data);
      });
    } else {
      data.gtmOnFailure();
     // log('SKLIK RETARGETING: status failure: request not allowed', data);
    }


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "data.idtf"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://traffor.com/rd/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": []
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []
setup: ''


___NOTES___

Created on 17. 5. 2020 0:30:14


