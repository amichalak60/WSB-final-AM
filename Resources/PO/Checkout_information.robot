*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***

Navigate To
        Click Button    Checkout

Verify you are on a correct page
        Wait Until Page Contains    Checkout: Your Information

Populate checkout information
        Wait Until Page Contains    Checkout: Your Information
        Input Text    id=first-name     Adam
        Input Text    id=last-name      Michalak
        Input Text    id=postal-code    190619