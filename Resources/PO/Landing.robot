*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL_LANDING} =    https://www.saucedemo.com/
${LOGIN_BUTTON} =     login-button

*** Keywords ***

Navigate To
        go to    ${URL_LANDING}

Verify you are on a correct page
        wait until page contains element    ${LOGIN_BUTTON}
