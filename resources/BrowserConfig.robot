*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser And Go To URL
    Log To Console    Opening browser: ${browser} and URL: ${url}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close Browser After Suite
    Log To Console    closing browser: ${browser}
    Close Browser


