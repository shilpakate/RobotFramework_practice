*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}   https://practicetestautomation.com/practice-test-login
${username_id}      id=username
${password_id}      id=password
${submit_id}        id=submit
${success_message}  xpath=//*[@id="loop-container"]/div/article/div[1]/h1

*** Test Cases ***
User Login
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    3
    Input Text    ${username_id}    student
    Input Text    ${password_id}    Password123
    Click Element     ${submit_id}
    Element Text Should Be    ${success_message}    Logged In Successfully
    Sleep    1
