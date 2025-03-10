*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test Case to demonstrate how to handle Alerts in Robot Framework
    [Documentation]  Test Case to demonstraye how ro handle Alerts in Robot Framewotk

    # 4 loại Alert (Accept, Dismiss, Prompt, Confirm)

    # 1. Accept
    Open Browser    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert   Chrome

    Select Frame    id:iframeResult
    Maximize Browser Window
    Click Button    xpath://button[text()='Try it']
    Sleep   2s

    Handle Alert    action=ACCEPT

    # 2. Dismiss

    # 3. Prompt
    Go to    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_prompt

    Select Frame    id:iframeResult
    Maximize Browser Window
    Click Button    xpath://button[text()='Try it']
    Sleep   2s

    Input Text Into Alert     rua      action=ACCEPT

    # 4. Confirm
    Go to    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_confirm

    Select Frame    id:iframeResult
    Maximize Browser Window
    Click Button    xpath://button[text()='Try it']
    Sleep   2s

    Handle Alert    action=ACCEPT