*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test case to demonstrate List Operation Keywords in Robot FW
    [Documentation]  Test Case to demonstrate List Operation Keywords in Robot FW

    # Single list
    Open Browser    http://sugarcrm.com/au/request-demo/    Chrome
    Maximize Browser Window

    # Accept cookie (Hoạt động với xpath)
    Scroll Element Into View    xpath=//button[contains(text(),'Accept All Cookies')]
    Click Button    xpath=//button[contains(text(),'Accept All Cookies')]

    Page Should Contain List    xpath://select[@name='input_8']
    Page Should Not Contain     xpath://select[@name='input']

    @{AllItems}=    Get List Items   xpath://select[@name='input_8']
    ${ListLabel}=   Get Selected List Label      xpath://select[@name='input_8']
    ${ListValue}=   Get Selected List Value      xpath://select[@name='input_8']

    Scroll Element Into View    xpath://select[@name='input_8']

    List Selection Should Be    xpath://select[@name='input_8']   Company Size*

    Select From List By Index   xpath://select[@name='input_8']     1
    ${LLabel1}=     Get Selected List Label     xpath://select[@name='input_8']
    Sleep   2s

    Select From List By Label   xpath://select[@name='input_8']   51 - 100 employees
    ${LLabel2}=     Get Selected List Label     xpath://select[@name='input_8']
    Sleep   2s

    # Multiple lists
    Go to    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
    Maximize Browser Window

    Select frame    id:iframeResult
    Select All From List    xpath://*[@id='cars']
    Sleep   2s

    @{ListLabels}=  Get Selected List Labels    xpath://*[@id='cars']
    Sleep   2s

    Unselect From List By Value     xpath://*[@id='cars']   audi
    Sleep   2s

    Unselect From List By Index     xpath://*[@id='cars']   1
    Sleep   2s

    Unselect From List By Label     xpath://*[@id='cars']   Volvo
    Sleep   2s

    @{ListValues}=  Get Selected List Values    xpath://*[@id='cars']
    Sleep   2s

    Unselect All From List    xpath://*[@id='cars']
    Sleep   2s

    List Should Have No Selections  xpath://*[@id='cars']

    Close Browser