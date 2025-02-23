*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/CustomKeyword.robot
Variables           ../Pages/SwagLabsPage.py


*** Test Cases ***
SwagLabsLogin Test
        [Tags]              Smoke
        Launch Browser      https://www.saucedemo.com/          chrome
        InputTextMethod     ${username}                 Thivakar
        InputTextMethod     ${password}                 Testing
        ClickElementMethod   ${LoginButton}
        ElementTextContainsMethod           ${ErrorMessage}             Epic sadface: Username and password do not match any user in this service
        CloseBrowser