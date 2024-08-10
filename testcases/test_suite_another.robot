*** Settings ***
Library    SeleniumLibrary
#Variables  page_objects/locator.py
Resource    ../resources/login_keyword_pom.robot



*** Variables ***
${url}      https://practicetestautomation.com/practice-test-login/
${browser}      chrome

*** Test Cases ***
Valid Login Test
    [Documentation]    Verify that a user can log in with valid credentials
    LaunchBrowserUrl   ${url}  ${browser}
    Set Username    student
    Set Password    Password123
    Loginbtn
    CheckMessage
    CloseBrowser1

Invalid Login Test
    [Documentation]    Verify that a user cannot log in with invalid credentials
    LaunchBrowserUrl   ${url}  ${browser}
    Set Username    studet
    Set Password    Password1234
    Loginbtn
    Errormsg
    CloseBrowser1
