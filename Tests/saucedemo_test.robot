*** Settings ***
Documentation     This is a test suite for the Mobile SauceDemo website
Library    AppiumLibrary
Library    OperatingSystem
Resource    ../Resources/login.resource


*** Variables ***
${ANDROID_AUTOMATION_NAME}    uiautomator2
${ANDROID_APP}    Android.SauceLabs.Mobile.Sample.app.2.7.1.apk
${ANDROID_PLATFORM_NAME}    Android
${ANDROID_PLATFORM_VERSION}    14
${APPIUM_SERVER}    http://127.0.0.1:4723
${APP_PACKAGE}    com.swaglabsmobileapp
${APP_ACTIVITY}    com.swaglabsmobileapp.SplashActivity
${USERNAME}    standard_user
${PASSWORD}    secret_sauce


**** Test Cases ****
Login Test
    [Documentation]    This is a test case for the login functionality
    Open Mobile App    ${APPIUM_SERVER}    ${ANDROID_AUTOMATION_NAME}    
    ...    ${ANDROID_PLATFORM_NAME}    ${ANDROID_PLATFORM_VERSION}    
    ...    ${ANDROID_APP}    ${APP_PACKAGE}    ${APP_ACTIVITY}
    Login to Sauce Demo    ${USERNAME}    ${PASSWORD}

*** Keywords ***
    
Open Mobile App
    [Arguments]    ${APPIUM_SERVER}    ${ANDROID_AUTOMATION_NAME}    
    ...    ${ANDROID_PLATFORM_NAME}    ${ANDROID_PLATFORM_VERSION}    
    ...    ${ANDROID_APP}    ${APP_PACKAGE}    ${APP_ACTIVITY}
    ${parent_dir}    Join Path    ${CURDIR}    ..
    Log    ${parent_dir}/${ANDROID_APP}
    Open Application    ${APPIUM_SERVER}    automationName=${ANDROID_AUTOMATION_NAME}    
    ...    platformName=${ANDROID_PLATFORM_NAME}    platformVersion=${ANDROID_PLATFORM_VERSION}    
    ...    app=${parent_dir}/app/${ANDROID_APP}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}