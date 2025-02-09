*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${u}        https://artoftesting.com/samplesiteforselenium
${b}        chrome

*** Test Cases ***
Handling Alert Box
    Open Browser        ${u}        ${b}
    Maximize Browser Window
    Click Element       css:#ConfirmBox button
    Sleep  3
    Alert Should Be Present     Press a button!
#    Handle Alert    ACCEPT
    Element Text Should Be      css:#demo       You pressed OK!
    Sleep       4
    Close Browser
