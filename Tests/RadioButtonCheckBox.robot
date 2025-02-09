*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php
${browser}      chrome
${appTitle}     Selenium Practice - Student Registration Form
*** Test Cases ***
RadioButtonCheckBoxDropDown
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Speed      2
    Title Should Be     ${appTitle}
    # Radio Button
#    Select Radio Button     gender      Male
    Click Element       xpath=//label[text()='Other']/preceding-sibling::input
    Radio Button Should Not Be Selected         xpath=//label[text()='Male']/preceding-sibling::input