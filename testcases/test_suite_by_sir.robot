#*** Settings ***
Library     SeleniumLibrary
#
Suite Setup    log to console   Opening Browser
Suite Teardown    log to console   Closing Browser
#
Test Setup    log to console   Login Page
Test Teardown    log to console   Logout Page
#
*** Variables ***
${url}   https://practicetestautomation.com/practice-test-login/
${browser}      chrome
${username}     student
${password}     Password123
#


##=====================================================================================================
##=====================================================================================================

*** Settings ***
Library     SeleniumLibrary

Suite Setup    LaunchBrowser
Suite Teardown    CloseBrw

Test Setup    LoginCheck
Test Teardown    LogoutCheck

*** Variables ***
${url}   https://practicetestautomation.com/practice-test-login/
${browser}      chrome
${username}     student
${password}     Password123

*** Test Cases ***
TestForTitle
    set selenium speed    2
    CheckPgTitle

TestForCourseCount
    set selenium speed    2
    click element    xpath://*[@id="menu-item-21"]/a
    ${res_count}     get element count    xpath://*[@id="selenium-webdriver-with-java-for-beginners"]/a
    go back
    ${res_count}=          Convert to string    ${res_count}
    ${expected_value}=    Convert to string    ${4}
    should be equal     ${res_count}    ${expected_value}

#TestForAnchorCount


*** Keywords ***
LaunchBrowser
    open browser    ${url}  ${browser}
    maximize browser window

LoginCheck
    input text      name:username    ${username}
    input text      id:password    ${password}
    click element    xpath://*[@id="submit"]

CheckPgTitle
    title should be    Logged In Successfully | Practice Test Automation

LogoutCheck
    click element    xpath://*[@id="loop-container"]/div/article/div[2]/div/div/div/a

CloseBrw
    close browser
##=====================================================================================================
##=====================================================================================================
