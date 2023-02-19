*** Settings ***
Library     SeleniumLibrary

*** Keywords ***

Verify You Are On A Correct Page
        Wait Until Page Contains    Checkout: Complete!