*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://practicetestautomation.com/practice-test-login/
${browser}      chrome

*** Test Cases ***
TestWithoutArgs
    [Tags]  withoutarg
    CheckPageTitleWOArgs

TestWithArgs
    [Tags]  witharg
    CheckPageTitleWArgs     ${url}      ${browser}

TestWithArgs&Return
    [Tags]  witharg
    ${pg_title_return}  CheckPageTitleWArgs&Return     ${url}      ${browser}
    log to console    ${pg_title_return}

*** Keywords ***
CheckPageTitleWOArgs
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    3

    ${pg_title}     get title
    log to console      ${pg_title}

    sleep    3
    close browser

CheckPageTitleWArgs
    [Arguments]     ${url}  ${browser}
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    3

    ${pg_title}     get title
    log to console      ${pg_title}

    sleep    3
    close browser

CheckPageTitleWArgs&Return
    [Arguments]     ${url}  ${browser}
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    3

    ${pg_title}     get title

    sleep    3
    close browser
    [Return]    ${pg_title}
