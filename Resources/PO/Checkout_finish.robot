*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***

Verify you are on a correct page
        wait until page contains    Checkout: Complete!