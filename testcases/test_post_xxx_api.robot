*** Settings ***
Resource    ../keywords/api/common_api_keywords.resource

*** Test Cases ***
Verify Send Request To Post Xxx Api
    ${res}=    Send request to post xxx api    https://postman-echo.com    /post    resources/testdata/sit/tc01_api.json
    Should Not Be Empty    ${res}
