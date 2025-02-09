*** Settings ***
Library     SeleniumLibrary


**** Variables ***
${title}  nopCommerce demo store
${email}  id=Email
${password}  name=Password

*** Test Cases ***
TextboxInput
    Open Browser    https://demo.nopcommerce.com/   chrome
    Maximize Browser Window
    Title Should Be     ${title}
    Click Link      xpath=//a[@class='ico-login']
    Element Should Be Visible       ${email}
    Input Text      ${email}        Thivakar
    Clear Element Text     ${email}
    Element Should Be Enabled       ${password}
    Input Text      ${password}     Testing
    Clear Element Text      ${password}
    Click Link      xpath=//a[contains(text(),'Forgot')]
    Sleep       4
    Close Browser
