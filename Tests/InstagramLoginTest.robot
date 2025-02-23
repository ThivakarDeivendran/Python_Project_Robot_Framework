*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/CustomKeyword.robot
Variables           ../Pages/InstagramPage.py

*** Test Cases ***
InstagramLogin Test
        [Tags]              Smoke
        Launch Browser      https://www.instagram.com          chrome
        InputTextMethod     ${username}                 ThivakarDeivendran
        InputTextMethod     ${password}                 Testing12!@
        ClickElementMethod      ${loginButton}
        Sleep           10
        ElementTextContainsMethod           ${errorMessage}             Sorry, your password was incorrect. Please double-check your password.
        CloseBrowser