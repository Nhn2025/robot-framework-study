*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC to demonstrate Browser Operation Keywords in Robot Framework
    [Documentation]  TC to demonstrate Browser Operation Keywords in Robot Framework

    Open Browser    https://www.google.com/     Chrome  alias=ChromeRCV

    Maximize Browser Window

    Open Browser    about:blank     ff  alias=RCVFF

    # Lấy danh sách alias & ID của trình duyệt
    @{alias}    Get Browser Aliases
    @{browser_ID}   Get Browser Ids

    # Log các giá trị alias
    Log     ${alias}[0]
    Log     ${alias}[1]

    # Log các giá trị browser ID
    Log     ${browser_ID}[0]
    Log     ${browser_ID}[1]

    # Chuyển sang browser đầu tiên
    Switch Browser  ${browser_ID}[0]
    Input Text  id:APjFqb   DuongNhu
    Sleep   4s

    # Chuyển sang browser alias khác
    Switch Browser     1
    Go To   https://www.facebook.com/

    # Đóng tất cả trình duyệt
    Close All Browsers