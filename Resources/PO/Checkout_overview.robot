*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${TOTAL_PRICE} =      class=summary_total_label

*** Keywords ***

Navigate To
        Click Button    continue

Verify You Are On A Correct Page
        Wait Until Page Contains    Checkout: Overview

Verify That The Total Price Is Calculated Properly For One Product
        Wait Until Element Contains   ${TOTAL_PRICE}    32.39


Verify That The Total Price Is Calculated Properly For Six Products
        Wait Until Element Contains    ${TOTAL_PRICE}     140.34

Finalize The Order
        Click Button    Finish