*** Settings ***
Resource    ../../resources/keywords/btech_keywords.robot

*** Test Cases ***
Search For Product And Add It To Cart
    Wait Until Keyword Succeeds    ${retry_keyword_number}   ${retry_interval}     Search For Product    ${product_name}
    Wait Until Keyword Succeeds      ${retry_keyword_number}    ${retry_interval}    Select First Search Result
    Assert Result Has Image
    Add Product To Cart
    Navigate To Cart


