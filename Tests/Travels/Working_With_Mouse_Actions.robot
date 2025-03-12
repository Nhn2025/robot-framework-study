*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demonstrate mouse operations in Robot Framework
    [Documentation]  Test Case to demonstrate mouse operations in Robot Framework

    Open Browser    http://sugarcrm.com/au/request-demo/    Chrome
    Maximise Browser Window

    Scroll Element Into View    interest_market_c0
    Mouse Down  xpath://*[@id='field25']/div/input
    Sleep   2s
    Mouse Up    xpath://*[@id='field25']/div/input
    Sleep   2s

    Mouse Down On Link  xpath://*[@id='field25']/div/input
    Sleep   4s

    Mouse Down On Link  xpath://*[@id='field25']/div/input
    Sleep   4s

    Mouse Over  xpath://*[@id='field25']/div/input
    Sleep   4s

    Mouse Out  xpath://*[@id='field25']/div/input
    Sleep   4s

    #Drag and drop example
    Go to   xpath://*[@id='field25']/div/input
    Drag and drop  xpath://*[@id='field25']/div/input
    Sleep   4s

    #Right click on element
    Open Context Menu   xpath://*[@id='field25']/div/input
    Sleep   2s

    Close Browser