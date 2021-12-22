*** Settings ***
Documentation     Reusable keywords and variables.
Library           SeleniumLibrary

*** Variables ***
${DEMO_URL}      https://robotframework.org/demoapp
${BROWSER_TYPE}  Firefox

*** Keywords ***
Open Login Page
    Open browser    ${DEMO_URL}     ${BROWSER_TYPE}
    Login Page Should Be Open

Login Page Should Be Open
    Location Should Be    ${DEMO_URL}
    Title Should Be    Robot Framework

Input Credentials
    [Arguments]    ${username}    ${password}
    Input Text    //label[.//text() = 'Username']/input    ${username}
    Input Text    //label[.//text() = 'Password']/input    ${password}

Submit Credentials
    Click Element    //input[@type='submit'] 

Welcome Page Should Be Open
    Location Should Be   ${DEMO URL}
    ${bodytexts}    Get Text    xpath=//body
    Should Be Equal  ${bodytexts}   I salute you, Robot overloard!
    Title Should Be  Robots rule