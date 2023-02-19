*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL_LANDING} =    https://www.saucedemo.com/
${LOGIN_BUTTON} =     login-button

*** Keywords ***

Navigate To
        Go to    ${URL_LANDING}

Verify You Are On A Correct Page
        Wait Until Page Contains Element    ${LOGIN_BUTTON}
