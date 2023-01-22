*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${CART} =       class=shopping_cart_link

*** Keywords ***

Navigate to
        click link          ${CART}

Verify you are on a correct page
        wait until page contains        Your Cart

Remove one item
        click button    remove-sauce-labs-backpack
