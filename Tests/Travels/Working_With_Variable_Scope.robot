*** Settings ***

*** Variables ***
${VARIABLE_DEMO}    This is GLOBAL variable

*** Test Cases ***
This is demo test 1
    ${variable_demo}   Set Variable   This is TESTCASE variable
    Log    ${VARIABLE_DEMO}

This is demo test 2
    Log    ${VARIABLE_DEMO}
    Log    ${variable_demo}

This is demo test 3
    This is demo keyword

*** Keywords ***
This is demo keyword
    [Arguments]     ${variable_demo}=This is KEYWORD variable
    Log     ${VARIABLE_DEMO}