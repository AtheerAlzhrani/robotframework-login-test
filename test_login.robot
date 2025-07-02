*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}             https://www.saucedemo.com/
${BROWSER}         chrome
${CHROMEDRIVER}    C:/Drivers/chromedriver-win64/chromedriver/chromedriver.exe
${USERNAME}        standard_user
${PASSWORD}        secret_sauce

*** Test Cases ***
LoginTest
    Open Browser  ${URL}  ${BROWSER}  executable_path=${CHROMEDRIVER}
    Maximize Browser Window
    Wait Until Element Is Visible  xpath=//*[@id="user-name"]  timeout=10s
    Input Text  xpath=//*[@id="user-name"]  ${USERNAME}
    Input Text  xpath=//*[@id="password"]   ${PASSWORD}
    Click Element  xpath=//*[@id="login-button"]
    Sleep  2s
    Close Browser
