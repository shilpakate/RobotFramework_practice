*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}  Chrome

*** Test Cases ***
TestScreenShot
    open browser    ${url}      ${browser}
    maximize browser window
    sleep    3

    # Screenshot
#    capture page screenshot     demo_screenshots_page.png
#    capture element screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]     demo_screenshots_element.png


    # Screenshot
    capture page screenshot  C:\\Users\\One\\Desktop\\Robot_framework\\screenshot\\ demo_screenshots_page.png
    capture element screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]      C:\\Users\\One\\Desktop\\Robot_framework\\screenshot\\demo_screenshots_element.png

    sleep    3
    close browser
