*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TestBrowserKeywords
    open browser    https://www.google.com/     chrome
    maximize browser window
    sleep    1

    ${loc}      get location
    log to console    ${loc}
    sleep    1

    go to  https://www.facebook.com/
    ${loc}      get location
    log to console    ${loc}
    sleep    1

    go back
    ${loc}      get location
    log to console    ${loc}
    sleep   3

    close all browsers
