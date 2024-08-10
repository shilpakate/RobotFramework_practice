*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/ddt_resource.robot
#Library    DataDriver   Testdata/login_data.csv
Library    DataDriver   Testdata/LoginData.xlsx

Suite Setup     LaunchBrowser
Suite Teardown    CloseBrowsers

#Test Template   ValidUsernameAndPassword
Test Template   InvalidUsername
#Test Template   InvalidPassword

*** Test Cases ***
Login with username ${username} and password ${password}

*** Keywords ***
ValidUsernameAndPassword
    [Arguments]     ${username}     ${password}
    set selenium speed    1
    LaunchBrowser
    InputUsername   ${username}
    InputPassword   ${password}
    ClickLogin
    LoginSuccess

InvalidUsername
    [Arguments]     ${username}     ${password}
    set selenium speed    1
    LaunchBrowser
    InputUsername   ${username}
    InputPassword   ${password}
    ClickLogin
    ErrorUsername

InvalidPassword
    [Arguments]     ${username}     ${password}
    set selenium speed    1
    LaunchBrowser
    InputUsername   ${username}
    InputPassword   ${password}
    ClickLogin
    ErrorPassword
