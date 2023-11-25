*** Settings ***
Library    SeleniumLibrary
Variables    ../Variables/global_variable.py

*** Keywords ***
Input Text in Field Name
    Open Browser    ${url_demoqa}    chrome
    Input Text    ${text}    Daniel
    Close Browser