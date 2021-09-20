___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Substring",
  "categories": "UTILITY",
  "description": "Extract characters from a string.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "string",
    "displayName": "Input string",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "start",
    "displayName": "Start position",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "NON_NEGATIVE_NUMBER"
      }
    ],
    "help": "Required. The position where to start the extraction. First character is at index 0."
  },
  {
    "type": "TEXT",
    "name": "end",
    "displayName": "End position",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_NEGATIVE_NUMBER"
      }
    ],
    "help": "Optional. The position (up to, but not including) where to end the extraction. If omitted, it extracts the rest of the string"
  }
]


___SANDBOXED_JS_FOR_SERVER___

let string = data.string;
let start = data.start;
let end = data.end;

return string.substring(start, end);


___TESTS___

scenarios: []


___NOTES___

Created on 20/09/2021, 20:49:21


