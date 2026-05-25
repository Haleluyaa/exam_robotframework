*** Settings ***
Resource    ../keywords/api/common_api_keywords.resource
Resource    ../keywords/web/common_web_keywords.resource
Variables    ../resources/configs/uat/domain.yaml
Variables    ../resources/configs/service_endpoint.yaml
Variables    ../resources/configs/uat/channel_authen.yaml
Variables    ../resources/testdata/uat/tc01_api.yaml

*** Variables ***
${env}    uat

*** Test Cases ***
Test Open Microsoft Edge Browser
    [Documentation]    robot framework can open url by edge browser 
    Open microsoft edge to go to https://www.google.com

Test Open Chrome Browser
    [Documentation]    robot framework can open url by chrome browser 
    Open chrome to go to https://www.google.com

TC01 Test Post /payments/v1/crossborder/moneyGram/withdrawal/inquiryProduct 
    [Documentation]    robotframework-requestLibrary test
    ${res}=    Send request to post xxx api    channel=${atmi}    domain=${eapi_gw}    endpoint=${v1CustomerServiceAlertsRegistration}    request_data=${TC01}

