*** Settings ***
Name    Login QMA
Library    SeleniumLibrary

*** Variables ***
${username}    daniel
${password}    daniel202103003

*** Test Cases ***
Login QMA
    [Documentation]    Testcase untuk login di QMA menggunakan BDD Style
    Given I am on Login Page
    When I am Login my account ${username}
    Then I Should see my fullname
    Then I Close the Browser


*** Keywords ***
I am on Login Page
    Open Browser    https://testingqa-office.nexcloud.id/testingqa/automation/webui/login    chrome
    Page Should Contain    Nex
    Log To Console    I am on login Page QMA Site

I am Login my account ${username}
    Input Text        username    ${username}
    Input Password    password    ${password}
    Set Selenium Speed    2
    Click Button    Log in
    Log To Console    Login Success

I Should see my fullname
    Page Should Contain    Daniel Nurrasyid
    Set Selenium Speed    2
    Log To Console    I see Text Daniel Nurrasyid

I Close the Browser
    Close Browser