*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${dropdown} =  //body/div[@id='root']/div[@id='page_wrapper']/div[@id='contents_wrapper']/div[@id='header_container']/div[2]/div[2]/span[1]/select[1]
${BACKPACK_ADD_TO_CART} =       add-to-cart-sauce-labs-backpack
${BIKE_LIGHT_ADD_TO_CART} =   add-to-cart-sauce-labs-bike-light
${BOLT_T_SHIRT_ADD_TO_CART} =    add-to-cart-sauce-labs-bolt-t-shirt
${FLEECE_JACKET_ADD_TO_CART} =       add-to-cart-sauce-labs-fleece-jacket
${ONESIE_ADD_TO_CART} =    add-to-cart-sauce-labs-onesie
${T_SHIRT_ADD_TO_CART} =       add-to-cart-test\.allthethings\(\)-t-shirt-\(red\)
${HAMBURGER_MENU} =     react-burger-menu-btn
${SHOPPING_CART} =      class=shopping_cart_badge

*** Keywords ***

Verify you are on a correct page
        wait until page contains    Products

Filter "Z-A"
        wait until element is visible   ${dropdown}
        select from list by label  ${dropdown}  Name (Z to A)

Filter "A-Z"
        wait until element is visible    ${dropdown}
        select from list by label  ${dropdown}  Name (A to Z)

Filter price "low-high"
        Wait Until Element Is Visible  ${dropdown}
        select from list by label  ${dropdown}  Price (low to high)

Filter price "high-low"
        Wait Until Element Is Visible  ${dropdown}
        select from list by label  ${dropdown}  Price (high to low)

Add one product
        click button        ${BACKPACK_ADD_TO_CART}

Verify that cart has 1 item inside
         element should contain    ${SHOPPING_CART}      1

Add six products
        click button        ${BACKPACK_ADD_TO_CART}
        click button        ${BIKE_LIGHT_ADD_TO_CART}
        click button        ${BOLT_T_SHIRT_ADD_TO_CART}
        click button        ${FLEECE_JACKET_ADD_TO_CART}
        click button        ${ONESIE_ADD_TO_CART}
        click button        ${T_SHIRT_ADD_TO_CART}

Verify that cart has 6 items inside
         element should contain    ${SHOPPING_CART}      6

Click Twitter page
        click link    Twitter

Click Facebook page
        click link    Facebook

Click Linkedin page
        click link    LinkedIn

Click on hamburger menu
        click button        ${HAMBURGER_MENU}

Log out
        click link    Logout