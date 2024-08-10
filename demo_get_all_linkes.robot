*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TestAllLinks2
    [Tags]    check_links
    open browser    https://www.calculator.net/   chrome
    maximize browser window
    sleep    3

    ${link_count}   get element count    xpath://*[@id="hl1"]/li/a
    log to console    ${link_count}

#    for i in range(1, ${link_count}+1) for loop python syntax
    FOR    ${i}    IN RANGE    1  ${link_count}+1
    ${link_text}    get text    xpath://*[@id="hl1"]/li[${i}]/a
    log to console      ${link_text}
    END

    sleep    3
    close browser

TestAllLinks3
    open browser    https://www.calculator.net/   chrome
    maximize browser window
    sleep    3

    ${link_count}   get element count    xpath://*[@id="hl1"]/li/a
    log to console    ${link_count}

#    for i in range(1, ${link_count}+1) for loop python syntax
    FOR    ${i}    IN RANGE    1  ${link_count}+1
    ${link_text}    get text    xpath://*[@id="hl1"]/li[${i}]/a
    log to console      ${link_text}
    END

    sleep    3
    close browser
