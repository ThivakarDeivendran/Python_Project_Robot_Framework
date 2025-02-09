*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}       https://testautomationpractice.blogspot.com/
${browser}      chrome

*** Test Cases ***
SelectValueDropDown
    Open Browser    ${url}       ${browser}
    Maximize Browser Window
    Sleep   3
    Select From List By Value   xpath=//select[@id='country']   uk
    Sleep   5
    Select From List By Index       css=#colors     4
    Sleep   4