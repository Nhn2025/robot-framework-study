*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Test case demonstrate working with frames in Robot FW
    [Documentation]  TC to demonstrate working frames in Robot FW

    Open Browser    https://www.w3schools.com/html/tryit.asp?filename=tryhtml_default   Chrome

    Maximize Browser Window

    Select Frame    id:iframeResult

    Current Frame Should Contain    This is a Heading

    Current Frame Should Not Contain    JavaScript Confirm Box Two

    Unselect Frame

    Frame Should Contain    id:iframeResult     This is a Heading

    Close Browser