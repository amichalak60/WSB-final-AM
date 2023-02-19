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

Verify You Are On A Correct Page
        Wait Until Page Contains    Products

Filter "Z-A"
        Wait Until Element Is Visible   ${dropdown}
        Select From List by Label  ${dropdown}  Name (Z to A)

Filter "A-Z"
        Wait Until Element Is Visible    ${dropdown}
        Select From List By Label  ${dropdown}  Name (A to Z)

Filter Price "low-high"
        Wait Until Element Is Visible  ${dropdown}
        Select From List By Label  ${dropdown}  Price (low to high)

Filter Price "high-low"
        Wait Until Element Is Visible  ${dropdown}
        Select From List By Label  ${dropdown}  Price (high to low)

Add One Product
        Click Button        ${BACKPACK_ADD_TO_CART}

Verify That Cart Has 1 Item Inside
        Element Should Contain    ${SHOPPING_CART}      1

Add Six Products
        Click Button        ${BACKPACK_ADD_TO_CART}
        Click Button        ${BIKE_LIGHT_ADD_TO_CART}
        Click Button        ${BOLT_T_SHIRT_ADD_TO_CART}
        Click Button        ${FLEECE_JACKET_ADD_TO_CART}
        Click Button        ${ONESIE_ADD_TO_CART}
        Click Button        ${T_SHIRT_ADD_TO_CART}

Verify That Cart Has 6 Items Inside
        Element Should Contain    ${SHOPPING_CART}      6

Click Twitter Page
        Click Link    Twitter

Click Facebook Page
        Click Link    Facebook

Click Linkedin Page
        Click Link    LinkedIn

Click On Hamburger Menu
        Click Button        ${HAMBURGER_MENU}

Log Out
        Click Link    Logout