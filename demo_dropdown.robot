*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.globalsqa.com/demo-site/select-dropdown-menu/
${browser}      chrome

*** Test Cases ***
TestDropDown
    open browser    ${url}      ${browser}
    maximize browser window
    sleep    3

    # select dropdown

    # By using label
    select from list by label    xpath://*[@id="post-2646"]/div[2]/div/div/div/p/select     Australia
    sleep    2

    # By using index
    select from list by index    xpath://*[@id="post-2646"]/div[2]/div/div/div/p/select     20
    sleep    2

    # By using value
    select from list by value    xpath://*[@id="post-2646"]/div[2]/div/div/div/p/select     BGD
    sleep    2

    sleep    3
    close browser

