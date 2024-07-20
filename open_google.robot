*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.google.com
${browser}  chrome
${pg_title}  get title

*** Test Cases ***
TestNavigateUrl
    Open Browser  ${URL}  ${browser}
    Maximize Browser Window
    Sleep  5


    Log To Console     ${pg_title}
#    input text    xpath://*[@id="APjFqb"]       robotframework
#    click element    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]

    element should be enabled    xpath://*[@id="APjFqb"]
    element should be visible    xpath://*[@id="APjFqb"]

    clear element text    xpath://*[@id="APjFqb"]

    sleep    3

    close browser

    #[Teardown]  Close Browser
