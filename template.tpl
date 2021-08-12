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
    "id": "github.com_pavelsabatka"
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
    const url = 'https://traffor.com/rd.js';
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
                    "string": "seznam_retargeting_id"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
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
                    "string": "seznam_pagetype"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
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
                    "string": "seznam_itemId"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
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
                    "string": "seznam_category"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
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
                    "string": "seznam_cId"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
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
                    "string": "seznam_value"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
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
                    "string": "seznam_orderId"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
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
                    "string": "seznam_zboziId"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
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
                    "string": "seznam_zboziType"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
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
                    "string": "seznam_rtgUrl"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
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
                    "string": "seznam_dispatchedRetargetingIds"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
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
                    "string": "seznam_rmkt_queue"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
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
                "string": "https://c.imedia.cz/"
              },
              {
                "type": 1,
                "string": "https://www.seznam.cz/"
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
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
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
  }
]


___TESTS___

scenarios:
- name: Conversion - request was sent
  code: |-
    runCode(retargetingData);
    assertApi('injectScript').wasCalled();
- name: Conversion - params were submitted
  code: |-
    runCode(conversionData);
    assertApi('setInWindow').wasCalledWith('seznam_cId', 'ID123');
    assertApi('setInWindow').wasCalledWith('seznam_value', 99.12);
    assertApi('setInWindow').wasCalledWith('seznam_orderId', 'T_112233');
- name: Conversion - zbozi_cz
  code: |-
    let zboziData = {
      'codetype': 'conversion',
      'id': 'ID123',
      'revenue': 99.123,
      'orderId': 'T_112233',
      'zboziId': '54321',
      'zboziType': 'standard'
    };

    // Call runCode to run the template's code.
    runCode(zboziData);

    // Verify that the tag finished successfully.
    assertApi('setInWindow').wasCalledWith('seznam_zboziId', '54321');
    assertApi('setInWindow').wasCalledWith('seznam_zboziType', 'standard');
- name: Retargeting - request was sent
  code: |-
    runCode(retargetingData);
    assertApi('injectScript').wasCalled();
- name: Retargeting - ID variable was set
  code: |-
    runCode(retargetingData);
    assertApi('setInWindow').wasCalledWith('seznam_retargeting_id', 'ID123');
- name: Retargeting - category page - standard
  code: |-
    retargetingData.model = 'vars';
    retargetingData.pagetype = 'category';
    retargetingData.category = 'Jidlo/Pecivo/Bile pecivo/Rohliky';


    runCode(retargetingData);
    assertApi('setInWindow').wasCalledWith('seznam_pagetype', 'category');
    assertApi('setInWindow').wasCalledWith('seznam_category', 'Jidlo | Pecivo | Bile pecivo | Rohliky');
- name: Retargeting - offerdetail page - standard
  code: |-
    retargetingData.model = 'vars';
    retargetingData.pagetype = 'offerdetail';
    retargetingData.itemId = 'ITEM_123/4';


    runCode(retargetingData);
    assertApi('setInWindow').wasCalledWith('seznam_pagetype', 'offerdetail');
    assertApi('setInWindow').wasCalledWith('seznam_itemId', 'ITEM_123/4');
- name: Retargeting - custom URL
  code: |-
    retargetingData.url = 'https://example.com/foo?bar=1';

    runCode(retargetingData);

    assertApi('setInWindow').wasCalledWith('seznam_rtgUrl', 'https://example.com/foo?bar=1', true);
- name: Retargeting - enable multiple hits
  code: |-
    mock('copyFromWindow', ['OTHER_ID_1', 'OTHER_ID_2', 'ID123', 'OTHER_ID_3']);
    retargetingData.url = 'https://example.com/foo?bar=1';
    retargetingData.multipleHitsPerPage = true;

    runCode(retargetingData);

    assertApi('setInWindow').wasCalledWith('seznam_dispatchedRetargetingIds', ['OTHER_ID_1', 'OTHER_ID_2', 'OTHER_ID_3'], true);
- name: Retargeting - consent granted
  code: |-
    mock('isConsentGranted', true);
    runCode(retargetingData);
    assertApi('injectScript').wasCalled();
- name: Retargeting - consent denied
  code: |-
    mock('isConsentGranted', false);
    runCode(retargetingData);
    assertApi('injectScript').wasNotCalled();
setup: |-
  let conversionData = {
    'codetype': 'conversion',
    'id': 'ID123',
    'revenue': 99.123,
    'orderId': 'T_112233'
  };


  let retargetingData = {
    'id': 'ID123',
    'codetype': 'retargeting',
    'multipleHitsPerPage': false
  };


___NOTES___

Created on 17. 5. 2020 0:30:14


