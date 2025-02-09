*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
SwitchWindows
    Open Browser        https://www.flipkart.com/           chrome
    Maximize Browser Window
    ${Title1}=    Get Title
    Log To Console      ${Title1}
    Sleep  3
    Input Text      xpath://input[@class='Pke_EE']      Mobiles
     Press Keys    xpath://input[@class='Pke_EE']   ENTER
     Sleep  2
     Click Element      xpath:(//div[@class='KzDlHZ'])[1]
     Sleep  2
     ${listWindow}   Get Window Handles
     Log To Console   ${listWindow}
     Switch Window   ${listWindow}[1]
     ${Title2}=     Get Title
     Log To Console        ${Title2}
     Sleep  2
     Close Window