*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SEARCH_TEXTFIELD}    xpath=//*[@id="ps_location_text"]
${PRICE_RANGE_DROPDOWN}    xpath=//*[@id="ps_price"]/div/span[@class="default"]
${PRICE_RANGE_MIN_TEXTFIELD}    xpath=//*[@id="ps_price_from"]
${PRICE_RANGE_MAX_TEXTFIELD}    xpath=//*[@id="ps_price_to"]
${SEARCH_BUTTON}    xpath=//*[@class="submitKey"]

*** Keywords ***
Click on search text field
    Click Element    ${SEARCH_TEXTFIELD}

Type city
    [Arguments]    ${CITY}
    Input Text    ${SEARCH_TEXTFIELD}    ${CITY}

Click on price range
    Click Element    ${PRICE_RANGE_DROPDOWN}

Enter minimum price
    [Arguments]    ${min_price}
    Click Element    ${PRICE_RANGE_MIN_TEXTFIELD}
    Input Text    ${PRICE_RANGE_MIN_TEXTFIELD}    ${min_price}

Enter maximum price
    [Arguments]    ${max_price}
    Click Element    ${PRICE_RANGE_MAX_TEXTFIELD}
    Input Text    ${PRICE_RANGE_MAX_TEXTFIELD}    ${max_price}

Click on search button
    Click Element    ${SEARCH_BUTTON}