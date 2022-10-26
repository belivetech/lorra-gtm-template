___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.

___INFO___

{
  "displayName": "Example Template",
  "description": "This is an example template. For more information, visit https://developers.google.com/tag-manager/templates",
  "categories": ["AFFILIATE_MARKETING", "ADVERTISING"],
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "thumbnail": "",
    "displayName": "",
    "id": "brand_dummy"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "help": "Enter an example measurement ID. The value can be any character. This is only an example.",
    "displayName": "Example Measurement ID",
    "defaultValue": "foobarbaz1234",
    "name": "MeasurementID",
    "type": "TEXT"
  }
]


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
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_referrer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const queryPermission = require('queryPermission');
const getReferrerUrl = require('getReferrerUrl');
let referrer;
if (queryPermission('get_referrer', 'query')) {
  referrer = getReferrerUrl('queryParams');
}

var log = require('logToConsole');
log('data =', data);

// Call data.gtmOnSuccess when the tag is finished.
data.gtmOnSuccess();


___NOTES___

Created on 26/10/2022, 10:00:37 AM
