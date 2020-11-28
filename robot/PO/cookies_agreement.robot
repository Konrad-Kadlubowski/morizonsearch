*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${AGREE_BUTTON}    xpath=//*[contains(text(), 'ZGADZAM SIĘ')]

*** Keywords ***
Click on agree
    Wait Until Page Contains Element    ${AGREE_BUTTON}
    Click Button    ${AGREE_BUTTON}

