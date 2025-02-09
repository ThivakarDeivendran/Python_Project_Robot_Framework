*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${Browser}      chrome

*** Test Cases ***
TestAutomationPractice
    Open Browser    ${url}      ${Browser}
    ${defaultSeleniumSpeed} =    Get Selenium Speed
    Log To Console      ${defaultSeleniumSpeed}
    Maximize Browser Window
    Set Selenium Speed      3
    Input Text        css=#name     Thivakar
    Input Text        css=#email    Testing@outlook.com
    Input Text        css=#phone    123456789
    Select Radio Button     gender      female
    ${currentSeleniumSpeed} =    Get Selenium Speed
    Log To Console      ${currentSeleniumSpeed}

    Log To Console          Get Selenium Implicit Wait
    Sleep       5