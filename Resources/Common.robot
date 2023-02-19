*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER} =        Chrome

*** Keywords ***

Begin Test
        Set Selenium Speed  0.5
        Open Browser   about:blank  ${BROWSER}
        Maximize Browser Window

End Test
        Close All Browsers