*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***

Navigate to
        click button    Checkout

Verify you are on a correct page
        wait until page contains    Checkout: Your Information

Populate checkout information
        wait until page contains    Checkout: Your Information
        input text    id=first-name     Adam
        input text    id=last-name      Michalak
        input text    id=postal-code    190619