*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FIRST_OFFER}    xpath=//div[@class="row row--property-list"][1]//div[@class="row row--property-list"]

*** Keywords ***
Click on first offer
    Wait Until Page Contains Element    ${FIRST_OFFER}
    Click Element    ${FIRST_OFFER}