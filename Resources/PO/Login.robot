*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${CORRECT_USERNAME} =   standard_user
${LOCKED_OUT_USER} =    locked_out_user
${WRONG_USERNAME} =     Adam90
${CORRECT_PASSWORD} =   secret_sauce
${WRONG_PASSWORD} =     secret_sauce2
${LOGIN_BUTTON} =       login-button
${USERNAME_FIELD} =     id=user-name
${USERNAME_PASSWORD} =  id=password

*** Keywords ***

Locked out user
    input text    ${USERNAME_FIELD}   ${LOCKED_OUT_USER}
    input text    ${USERNAME_PASSWORD}     ${CORRECT_PASSWORD}
    click button    ${LOGIN_BUTTON}
    wait until page contains    Epic sadface: Sorry, this user has been locked out.

Wrong username
    input text    ${USERNAME_FIELD}   ${WRONG_USERNAME}
    input text    ${USERNAME_PASSWORD}     ${CORRECT_PASSWORD}
    click button    ${LOGIN_BUTTON}
    wait until page contains    Epic sadface: Username and password do not match any user in this service

Wrong password
    input text    ${USERNAME_FIELD}    ${CORRECT_USERNAME}
    input text    ${USERNAME_PASSWORD}     ${WRONG_PASSWORD}
    click button    ${LOGIN_BUTTON}
    wait until page contains    Epic sadface: Username and password do not match any user in this service

Correct credentials
    input text    ${USERNAME_FIELD}   ${CORRECT_USERNAME}
    input text    ${USERNAME_PASSWORD}     ${CORRECT_PASSWORD}
    click button    ${LOGIN_BUTTON}
