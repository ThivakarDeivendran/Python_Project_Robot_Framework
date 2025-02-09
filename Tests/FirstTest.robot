*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${bro}  chrome

*** Test Cases ***
Example Test
    Open Browser    ${url}   ${bro}
    Maximize Browser Window
    Click Link    xpath=//a[@class='ico-login']
    Sleep    4
    Close Browser



