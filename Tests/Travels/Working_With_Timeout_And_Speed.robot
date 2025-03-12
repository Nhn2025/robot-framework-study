*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Test Case to Selenium Speed and Timeout in Robot Framework
    [Documentation]  Test Case to Selenium Speed and Timeout in Robot Framework

#   5s
    ${default_selenium_timeout}=    Get Selenium Timeout
#   0s
    ${default_selenium_speed}=  Get Selenium Speed

    Set Selenium Timeout    10s
    Set Selenium Speed  4s

    Open Browser    http://sugarcrm.com/au/request-demo/    Chrome

#   10s
    ${default_selenium_timeout}=    Get Selenium Timeout
#   4s
    ${default_selenium_speed}=  Get Selenium Speed