*** Settings ***
Library         SeleniumLibrary
resource        ../Resources/CustomKeyword.robot

Suite Setup         Launch Browser      https://www.saucedemo.com/          chrome
Suite Teardown      CloseBrowser
Test Template       Verify Invalid TestCase


*** Test Cases ***          username            password           value
TC1                         ${EMPTY}           secret_sauce        Epic sadface: Username is required
TC2                         standard_user       ${EMPTY}           Epic sadface: Password is required
TC3                         ${EMPTY}            ${EMPTY}           Epic sadface: Username is required
TC4                         Testing             password           Epic sadface: Username and password do not match any user in this service


*** Keywords ***
Verify Invalid TestCase
        [Arguments]     ${username}     ${password}         ${value}
            InputTextMethod         id:user-name       ${username}
            InputTextMethod         id:password        ${password}
            ClickButtonMethod       id:login-button
            ElementTextContainsMethod       xpath://h3           ${value}
            Reload Page
