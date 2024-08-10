*** Settings ***
Library    SeleniumLibrary
Variables    page_objects/locator.py

*** Keywords ***
LaunchBrowserUrl
    [Arguments]    ${url}   ${browser}
    open browser    ${url}   ${browser}
    maximize browser window

Set Username
    [Arguments]    ${username_testcase}
    input text     ${locator_username}       ${username_testcase}

Set Password
    [Arguments]    ${password_testcase}
    input text     ${locator_password}       ${password_testcase}

Loginbtn
    click element     ${locator_submit_btn}

CheckMessage
    title should be    ${locator_message}

CloseBrowser
    close all browsers
