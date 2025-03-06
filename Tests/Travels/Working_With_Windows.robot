*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Testcase to demonstrate Browser Window Operation Keywords in Robot FW
    [Documentation]  Tesrcase to demonstrate Browser Window Operation Keywords in Robot FW

    Open Browser    https://demo.automationtesting.in/Windows.html     Chrome      alias=ChromeRCV
    Maximize Browser Window
    Sleep   4s

    Wait Until Element Is Visible   xpath://a[normalize-space()='click']
    Click Link      xpath://a[normalize-space()='click']

    @{WindowHandles}=   Get Window Handles
    Sleep   4s

    @{WindowNames}=   Get Window Names
    Sleep   4s

    @{WindowTitles}=   Get Window Titles
    Sleep   4s

    Set Window Size     800     600

    ${width}    ${height}=  Get Window Size
    Log     ${width}
    Log     ${height}
    Sleep   4s

    Switch Window   ${WindowHandles}[1]
    Log             ${WindowHandles}[1]
    Sleep   4s

    Close Window

    Sleep   4s

    Switch Window   ${WindowHandles}[0]
    Close Window

    Close Browser