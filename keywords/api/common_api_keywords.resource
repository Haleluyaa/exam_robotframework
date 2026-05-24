*** Settings ***
Library    JSONLibrary
Library    RequestsLibrary

*** Keywords ***
Send request to post xxx api
    [Arguments]    ${domain}    ${url}    ${request_data} 
    ${header}=   Create Dictionary    Content-Type=application/json
       ...       X-Channel=MANUAL  
       ...       X-Request-ID=  
    ${body}=   Load JSON From File    file_name=${request_data}
    Create Session    domain    ${domain}
    ${response}=   POST On Session    domain    json=${body}    expected_status=any    verify=${False}  
    ${res_json}    Set Variable    ${response.json()}
    RETURN    ${res_json}        