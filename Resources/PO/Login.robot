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
${USERNAME_PASSWORD_FIELD} =  id=password

*** Keywords ***

Locked Out User
    Input Text    ${USERNAME_FIELD}   ${LOCKED_OUT_USER}
    Input Text    ${USERNAME_PASSWORD_FIELD}     ${CORRECT_PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Page Contains    Epic sadface: Sorry, this user has been locked out.

Wrong Username
    Input Text    ${USERNAME_FIELD}   ${WRONG_USERNAME}
    Input Text    ${USERNAME_PASSWORD_FIELD}     ${CORRECT_PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Page Contains    Epic sadface: Username and password do not match any user in this service

Wrong Password
    Input Text    ${USERNAME_FIELD}    ${CORRECT_USERNAME}
    Input Text    ${USERNAME_PASSWORD_FIELD}     ${WRONG_PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Page Contains    Epic sadface: Username and password do not match any user in this service

Correct Credentials
    Input Text    ${USERNAME_FIELD}   ${CORRECT_USERNAME}
    Input Text    ${USERNAME_PASSWORD_FIELD}     ${CORRECT_PASSWORD}
    Click Button    ${LOGIN_BUTTON}
