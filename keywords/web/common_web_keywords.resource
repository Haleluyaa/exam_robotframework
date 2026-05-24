*** Settings ***
Library    OperatingSystem
Library    RequestsLibrary
Library    SeleniumLibrary

*** Keywords ***
Open microsoft edge to go to ${url}
    # ${edge_path}=    Evaluate
    # ...    webdriver_manager.microsoft.EdgeChromiumDriverManager().install()
    # ...    modules=webdriver_manager.microsoft
    ${edge_path}=    Set Variable    /Users/s96681/works/Assignments/edgedriver_mac64/msedgedriver
    Open Browser    ${url}    edge
    ...    executable_path=${edge_path}

Open chrome to go to ${url}
    # ${chrome_path}=    Evaluate
    # ...    webdriver_manager.chrome.ChromeDriverManager().install()
    # ...    modules=webdriver_manager.chrome
    ${chrome_path}=    Set Variable    /Users/s96681/works/Assignments/chromedriver-mac-arm64/chromedriver
    Open Browser    ${url}    chrome
    ...    executable_path=${chrome_path}