*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demonstrate implicit wait in Robot Framework
    [Documentation]  Test Case to demonstrate implicit wait in Robot Framework
#   0s
    ${default_implicit_wait}=       Get Selenium Implicit Wait

    Set Selenium Implicit Wait  20s
#   20s
    ${custom_implicit_wait}=        Get Selenium Implicit Wait

#   12s
    Open Browser    http://sugarcrm.com/au/request-demo/    Chrome
    Maximize Browser Window

    Close Browser