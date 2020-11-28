*** Settings ***
Documentation    This suite contains only one test which werify if searching feature on morizon website
...              works given city and price criteria
Resource    ../keywords/morizon_keywords.robot
Suite Setup    Run keywords    Open chrome on morizon page
...            AND    Agree to cookies
Test Teardown    Go to morizon main page
Suite Teardown    Default teardown


*** Test Cases ***
Apartment Search
    When I choose Wroclaw as a City the flat is located in
    And I choose price range from 200000 to 250000
    And I click search button
    And I open first offer
    Then The offer is opened
    And Price is in range from 200000 to 250000
