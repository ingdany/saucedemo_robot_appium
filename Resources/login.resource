*** Settings ***
Library    AppiumLibrary

*** Variables ***
${USERNAME_INPUT}    //android.widget.EditText[@content-desc="test-Username"]
${PASSWORD_INPUT}    //android.widget.EditText[@content-desc="test-Password"]
${LOGIN_BUTTON}    //android.widget.TextView[@text="LOGIN"]


*** Keywords ***

Login to Sauce Demo
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Input Text    ${USERNAME_INPUT}    ${USERNAME}
    Input Text    ${PASSWORD_INPUT}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}