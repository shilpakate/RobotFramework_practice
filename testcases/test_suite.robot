*** Settings ***
Library     SeleniumLibrary

Suite Setup    log to console   Opening Browser
Suite Teardown    log to console   Closing Browser

Test Setup    log to console   Login Page
Test Teardown    log to console   Logout Page

*** Test Cases ***
TestSearchEmployee
    log to console    This is search employee testcase

TestLogin
    log to console    This is login testcase

TestDeleteEmployee
#    wait for expected condition
    log to console    This is delete employee testcase
