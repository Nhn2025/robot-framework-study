*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test Case to demostrate WebElement Operation Keywords
    [Documentation]  Test Case to demonstrate WebElements Operation Keywords

    Open Browser  https://www.google.com/  alias=ChromeRCV
    Maximize Browser Window
    Sleep   4s

    ${attr}=    Get Element Attribute    id:APjFqb    class

    ${count}=   Get Element Count  id:APjFqb

    ${width}    ${height}=     Get Element Size     id:APjFqb

    Get WebElement  id:APjFqb

    @{webelements}=     Get WebElements    id:APjFqb

    Capture Element Screenshot    id:APjFqb    filename=${OUTPUT_DIR}/element.png

    Assign Id To Element    name:btnK   RCVid
    Page Should Contain Element     RCVid

    Element Should Be Focused   id:APjFqb
    Element Should Be Visible   id:APjFqb

    Input Text  id:APjFqb    RCVAcademy

    Clear Element Text  id:APjFqb

    Close Browser