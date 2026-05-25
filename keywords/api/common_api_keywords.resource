*** Settings ***
Library    JSONLibrary
Library    RequestsLibrary
Library    Collections
Variables    ../../resources/configs/${env}/domain.yaml
Variables    ../../resources/configs/service_endpoint.yaml
Variables    ../../resources/configs/${env}/channel_authen.yaml

*** Keywords ***
Send request to post xxx api
    [Arguments]    ${channel}    ${domain}    ${endpoint}    ${request_data} 
    ${header}=   Create Dictionary    Content-Type=application/json
       ...       apiKey=${channel.apiKey}
       ...       apiSecret=${channel.apiSecret}  
       ...       requestUID=
       ...       resourceOwnerID=${channel.resourceOwnerID}  
    ${body}=   Set Variable    
    Create Session    domain    ${domain}
    ${response}=   POST On Session    domain    json=${body}    headers=${header}    expected_status=any    verify=${False}  
    ${res_json}    Set Variable    ${response.json()}
    RETURN    ${res_json}

Send request to get xxx api
    [Arguments]    ${domain}    ${endpoint}    ${queryparam}
    ${header}=   Create Dictionary    Content-Type=Application/json
        ...    X-Channal=MANUAL
        ...    X-Request-ID=   
    ${domain}    Set Variable    https://auth-scbeppd-${env}.se.scb.co.th
    ${endpoint}    Set Variable    authen-routing/s1/info
    Set To Dictionary    ${authen_routing_info.request_poram}    key    ${key}