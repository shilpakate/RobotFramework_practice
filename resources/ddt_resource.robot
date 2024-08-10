*** Settings ***
Library     SeleniumLibrary
Variables    ../page_objects/Locators_1.py


*** Variables ***
${url}      https://practicetestautomation.com/practice-test-login/
${browser}  chrome

*** Keywords ***
LaunchBrowser
    open browser    ${url}      ${browser}
    maximize browser window

CloseBrowsers
    close all browsers

OpenLoginPage
    go to   ${url}

InputUsername
    [Arguments]    ${username}
    input text      ${login_username}     ${username}

InputPassword
    [Arguments]    ${password}
    input text      ${login_password}     ${password}

ClickLogin
    click element    ${login_button}

ClickLogout
    click link      Log out

LoginSuccess
    page should contain    ${message}

ErrorUsername
    ${error_messg}  get text    xpath://*[@id="error"]
    should be equal     ${error_messg}      Your username is invalid!

ErrorPassword
    ${error_messg}  get text    xpath://*[@id="error"]
    should be equal     ${error_messg}      Your password is invalid!
