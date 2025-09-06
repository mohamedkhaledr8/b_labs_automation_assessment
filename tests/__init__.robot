*** Settings ***
Resource    ../resources/LoadConfig.robot
Resource    ../resources/BrowserConfig.robot
Resource    ../resources/loadTestData.robot


Suite Setup    Setup Suite
Suite Teardown   Teardown Suite

*** Keywords ***
Setup Suite
    Load Config As Global
    Load Test Data As Global
    Open Browser And Go To URL
Teardown Suite
    Close Browser After Suite
