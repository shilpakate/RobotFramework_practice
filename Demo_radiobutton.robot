*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://test.rubywatir.com/radios.php
${browser}    firefox

*** Test Cases ***
TestRadioBtn
    open browser    ${url}  ${browser}
    maximize browser window
    sleep    3

    # select radio button
#    select radio button    likeit    No
#    click element   xpath://*[@id="content"]/div/div/div[2]/p/input[2]

    # select checkbox button
    click element    xpath://*[@id="recent4"]/ul/li[2]/a
    sleep    2

    unselect checkbox  xpath://*[@id="content"]/div/div/div[2]/form/input[1]
    unselect checkbox  xpath://*[@id="content"]/div/div/div[2]/form/input[4]
    unselect checkbox  xpath://*[@id="content"]/div/div/div[2]/form/input[7]
    unselect checkbox  xpath://*[@id="content"]/div/div/div[2]/form/input[8]

    sleep    2
    select checkbox    xpath://*[@id="content"]/div/div/div[2]/form/input[2]
    select checkbox    xpath://*[@id="content"]/div/div/div[2]/form/input[3]
    select checkbox    xpath://*[@id="content"]/div/div/div[2]/form/input[5]
    select checkbox    xpath://*[@id="content"]/div/div/div[2]/form/input[6]


    sleep    2
    minimize browser window
    sleep    2
    close browser
