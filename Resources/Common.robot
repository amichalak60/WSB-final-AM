*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER} =        Chrome

*** Keywords ***

Begin Test
        set selenium speed  0.5
        open browser   about:blank  ${BROWSER}
        maximize browser window

End Test
        close all browsers