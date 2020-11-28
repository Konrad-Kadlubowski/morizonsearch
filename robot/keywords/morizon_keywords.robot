*** Settings ***
Library    SeleniumLibrary
Resource    ../PO/cookies_agreement.robot
Resource    ../PO/search_bar.robot
Resource    ../PO/results_list.robot
Resource    ../PO/result_page.robot

*** Keywords ***
Open chrome on morizon page
    Open Browser    https://www.morizon.pl/    browser=chrome

Agree to cookies
    cookies_agreement.Click on agree

I choose ${city} as a City the flat is located in
    search_bar.Click on search text field
    search_bar.Type city    ${city}

I choose price range from ${min} to ${max}
    search_bar.Click on price range
    search_bar.Enter minimum price    ${min}
    search_bar.Enter maximum price    ${max}

I click search button
    search_bar.Click on search button

I open first offer
    results_list.Click on first offer

The offer is opened
    result_page.Verify if single result page is opened

Price is in range from ${min} to ${max}
    ${actual_price}=    result_page.Get offer price
    evaluate    ${min} < ${actual_price} < ${max}

Default teardown
    Close Browser

Go to morizon main page
    Go to    https://www.morizon.pl/