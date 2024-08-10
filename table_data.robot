*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestHandleHtmlTable
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    sleep    3

    scroll element into view    xpath://*[@id="HTML8"]/h2

    # rows
    ${rows_count}    get element count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    log to console      ${rows_count}

    # columns
    ${columns_count}    get element count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th
    log to console      ${columns_count}

#    FOR     ${r_count}    IN RANGE      2   ${rows_count}+1
#        FOR     ${c_count}    IN RANGE      1   ${columns_count}+1
#            ${cell_data}    get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[${r_count}]/td[${c_count}]
#            log to console  ${cell_data}
#        END
#    END

#    FOR     ${r_count}    IN RANGE      1   ${rows_count}+1
#        ${row_data}    get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[${r_count}]
#        log to console  ${row_data}
#    END

#    # Get table data by cell
#    FOR    ${row}    IN RANGE  2   ${rows_count}+1
#        FOR    ${column}    IN RANGE  1   ${columns_count}+1
#            ${cell_data}    get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[${row}]/td[${column}]
#            log to console      ${cell_data}
#        END
#    END

#    # Direct table data
#    ${table_data}    get text    name:BookTable
#    log to console      ${table_data}
#
#    ${cell_data}    get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[4]
#    log to console      ${cell_data}

#    # Table handle
    table should contain  name:BookTable    Master In Selenium  # (xpath, expected_string_value)
    table column should contain    name:BookTable   4   1000    # (xpath, column_count, expected_string_value)
    table header should contain     name:BookTable  Subject     # (xpath, expected_string_value)
    table row should contain    name:BookTable   4   Learn JS    # (xpath, row_count, expected_string_value)
    table cell should contain    name:BookTable   6   3   JAVA    # (xpath, row_count, column_count, expected_string_value)

    sleep    3
    close browser
