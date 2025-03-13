*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demonstrate implicit wait in Robot Framework
    [Documentation]  Test Case to demonstrate implicit wait in Robot Framework

    Open Browser    http://sugarcrm.com/au/request-demo/    Chrome
    Maximize Browser Window

    Wait Until Page Contains    With our customers
    Wait Until Page Contains ELement    //xpath:[@id='abc']
    Wait Until Page Does Not Contain    With our customerss
    Wait Until Page Does Not Contain Element    //xpath:[@id='asbc']

    Wait Until Location Is  http://sugarcrm.com/au/request-demo/
    Wait Until Location Is not  http://sugarcrm.com/au/request-demo/1
    Wait Until Location Contains    au
    Wait Until Location Does Not Contain    aud

    Wait Until Element Contains     //xpath:[@id='abc']     Deployment Options

    Close Browser