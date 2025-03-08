*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Test case desmonstate Radio button operation keywords
    [Documentation]  Test case demonstrate Radio button operation keywords

    Open Browser    http://sugarcrm.com/au/request-demo/    Chrome
    Maximize Browser Window
    Sleep   4s

    Page Should Contain Radio Button    xpath://*[@id="doi0"]

    Page Should Not Contain Radio Button    xpath://*[@id="doi00"]

    Radio Button Should Not Be Selected     doi

    Select Radio Button     doi     0

    Sleep   4s

    Scroll Element Into View    xpath://*[@id="field1"]/div/input

    Radio Button Should Be Set To   doi     0

    Close Browser
