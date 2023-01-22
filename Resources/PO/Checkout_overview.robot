*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${TOTAL_PRICE} =      class=summary_total_label

*** Keywords ***

Navigate to
        click button    continue

Verify you are on a correct page
        wait until page contains    Checkout: Overview

Verify that the total price is calculated properly for one product
        wait until element contains   ${TOTAL_PRICE}    32.39


Verify that the total price is calculated properly for six products
        wait until element contains    ${TOTAL_PRICE}     140.34

Finalize the order
        click button    Finish