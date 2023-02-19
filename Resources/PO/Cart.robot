*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${CART} =       class=shopping_cart_link

*** Keywords ***

Navigate To
        Click Link          ${CART}

Verify You Are On A Correct Page
        Wait Until Page Contains        Your Cart

Remove One Item
        Click Button    remove-sauce-labs-backpack
