*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource  ../locators/btech_locators.robot

*** Keywords ***
Open Btech Website
    [Arguments]    ${url}  ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window


Search For Product
    
    [Arguments]    ${product_name}
    Log To Console    searching for product: ${product_name}
    Wait Until Element Is Visible        ${SEARCH_BOX}    ${element_visibility}
    Input Text    ${SEARCH_BOX}    ${product_name}
    Click Button  ${SEARCH_BUTTON}


Select First Search Result
    Log To Console    selecting first result
   Wait Until Element Is Visible       ${RESULT_LIST}   ${element_visibility}
    ${count}=    Set Variable    0
    WHILE    ${count} <= 1
        ${results}=    Get WebElements    ${RESULT_LIST}
        ${count}=    Get Length    ${results}
        Sleep    1s
    END
    Click Element    ${results}[0]

Assert Result Has Image
    Log To Console    asserting result has image
   Element Should Be Visible    ${FIRST_RESULT_IMG}

Add Product To Cart
    Log To Console    adding selected product to the card
    Wait Until Element Is Visible    ${ADD_TO_CART_BTN}   ${element_visibility}
    Click Button    ${ADD_TO_CART_BTN}


Navigate To Cart
    Log To Console    navigating to the card
    Wait Until Element Is Visible    ${GO_TO_CART_BUTTON}   ${element_visibility}
    Click Element     ${GO_TO_CART_BUTTON}







