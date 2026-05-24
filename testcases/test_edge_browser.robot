*** Settings ***
Resource    ../keywords/api/common_api_keywords.resource
Resource    ../keywords/web/common_web_keywords.resource


*** Test Cases ***
Test Open Microsoft Edge Browser
    [Documentation]    robot framework can open url by edge browser 
    Open microsoft edge to go to https://www.google.com

Test Open Chrome Browser
    [Documentation]    robot framework can open url by chrome browser 
    Open chrome to go to https://www.google.com