*** Settings ***
Library         SeleniumLibrary


*** Keywords ***

Launch Browser
        [Arguments]     ${variable1}        ${variable2}
        Open Browser    ${variable1}        ${variable2}
        Maximize Browser Window

TitleMethod
       return      Get Title

InputTextMethod
       [Arguments]      ${element}      ${value}
        Input Text      ${element}      ${value}

ClickButtonMethod
       [Arguments]       ${element}
        Click Button      ${element}

ClickElementMethod
        [Arguments]      ${element}
        Click Element    ${element}

ClickLinkMethod
        [Arguments]     ${element}
        Click Link      ${element}

RadioButtonMethod
        [Arguments]     ${element}      ${value}
        Select Radio Button         ${element}      ${value}

CheckboxMethod
        [Arguments]     ${element}
        Select Checkbox             ${element}

ListByIndexMethod
        [Arguments]     ${element}   ${index}
        Select From List By Index       ${element}      ${index}

ListByLabelMethod
         [Arguments]     ${element}     ${label}
        Select From List By Label       ${element}      ${label}

ListByValueMethod
        [Arguments]     ${element}      ${value}
        Select From List By Value       ${element}      ${value}

ConsoleMethod
        [Arguments]     ${value}
        Log To Console      ${value}

SleepMethod
        [Arguments]    ${value}
        Sleep          ${value}

ElementVisibleMethod
       [Arguments]      ${value}
        Element Should Be Visible       ${value}

ElementTextContainsMethod
        [Arguments]        ${element}       ${expected}
        Element Should Contain      ${element}      ${expected}         none        false

CloseBrowser
        Close All Browsers