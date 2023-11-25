*** Settings ***
Documentation    Robot Framework BDD Style   
Library    SeleniumLibrary

*** Variables ***
${username}    daniel
${password}    daniel202103003

*** Test Cases ***
Login QMA
    Given I am on Login Page
    And I will insert my username and password
    And I click Login Button
    Then I should see my fullname
    Then I close the Browser


*** Keywords ***
I am on Login Page
    Open Browser                https://testingqa-office.nexcloud.id/testingqa/automation/webui/login    chrome
    Wait Until Page Contains    Nex
    Page Should Contain         Nex
    Log To Console              I am on QMA Site Login Page

I will insert my username and password
    Input Text                  username    ${username}
    Input Password              password    ${password}
    Sleep                       2
    Textfield Should Contain    username    ${username}
    Textfield Should Contain    password    ${password}
    Log To Console              Insert username and password Success

I click Login Button
    Click Button      Log in
    Log To Console    Login Success

I should see my fullname
    Wait Until Element Is Visible      name
    Page Should Contain                Daniel Nurrasyid
    Sleep                              2
    Log To Console                     I see Text Daniel Nurrasyid

I close the Browser
    Close Browser