*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${env}  uat
&{url}  uat=https://www.ebay.com/

*** Keywords ***
Start TestCase
    Open Browser    ${url.${env}}    chrome
    Maximize Browser Window

Finish TestCase
    Close Browser