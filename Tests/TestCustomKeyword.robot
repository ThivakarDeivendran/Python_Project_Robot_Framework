*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/CustomKeyword.robot

*** Variables ***
${TestBrowser}      chrome
${TestUrl}          https://demo.automationtesting.in/Register.html
${gender}           Male
${hobby}            Hockey
${skill}            Java

*** Test Cases ***
DemoAutomationTesting TestCases
        Launch Browser      ${TestUrl}      ${TestBrowser}
        ${Acutual_Title}=     TitleMethod
        ConsoleMethod        ${Acutual_Title}
        InputTextMethod     xpath=//input[@placeholder='First Name']        Thivakar
        SleepMethod         3
        InputTextMethod     xpath=//input[@placeholder='Last Name']          Testing
        SleepMethod            3
        RadioButtonMethod   radiooptions       ${gender}
        SleepMethod             3
        CheckboxMethod         xpath=//input[@value='${hobby}']
        SleepMethod             3
        ListByLabelMethod      css=#Skills          ${skill}
        SleepMethod             4
        ListByValueMethod      css=#yearbox          1916
        SleepMethod             4
        ClickButtonMethod       xpath=//button[text()='Refresh']
        SleepMethod             4
        ConsoleMethod      Testing Successfull


