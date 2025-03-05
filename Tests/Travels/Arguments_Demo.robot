*** Settings ***

*** Variables ***

*** Test Cases ***
Argument demo keyword test1
    Argument demo keyword   nhu     academy

Argument demo keyword test2
    Argument demo keyword   nhu2     academy2

*** Keywords ***
Argument demo keyword
    [Arguments]     ${arg1}     ${arg2}
    Log     ${arg1}
    Log     ${arg2}