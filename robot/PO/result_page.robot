*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${PRICE}    xpath=//*[@class="paramIconPrice"]//em

*** Keywords ***
Verify if single result page is opened
    Page Should Contain    Informacje szczegółowe
    Page Should Not Contain    oferty sprzedaży

Get offer price
    ${offer_price}=    Get Text    ${PRICE}
    ${offer_price}=    Remove String Using Regexp   ${offer_price}    [^0-9]
    ${offer_price}=    convert to integer  ${offer_price}
    [Return]    ${offer_price}