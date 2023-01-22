*** Settings ***
Resource    ../Resources/PO/Landing.robot
Resource    ../Resources/PO/Login.robot
Resource    ../Resources/PO/Products.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/Checkout_information.robot
Resource    ../Resources/PO/Checkout_overview.robot
Resource    ../Resources/PO/Checkout_finish.robot


*** Variables ***

*** Keywords ***

Go to Landing Page
        Landing.Navigate To
        Landing.Verify you are on a correct page

Sign in with a locked out user
        Login.Locked out user

Sign in with a wrong username
        Login.Wrong username

Sign in with a wrong password
        Login.Wrong password

Sign in with correct credentials
        Login.Correct credentials
        Products.Verify you are on a correct page

Select "Z-A" from drop-down list
        Products.Verify you are on a correct page
        Products.Filter "Z-A"

Select "A-Z" from drop-down list
        Products.Verify you are on a correct page
        Products.Filter "A-Z"

Select price "low-high" from drop-down list
        Products.Verify you are on a correct page
        Products.Filter price "low-high"

Select price "high-low" from drop-down list
        Products.Verify you are on a correct page
        Products.Filter price "high-low"

Add one product to cart
        Products.Verify you are on a correct page
        Products.Add one product
        Products.Verify that cart has 1 item inside

Place an order with one product
        Products.Verify you are on a correct page
        Products.Add one product
        Products.Verify that cart has 1 item inside
        Cart.Navigate to
        Cart.Verify you are on a correct page
        Checkout_information.Navigate to
        Checkout_information.Verify you are on a correct page
        Checkout_information.Populate checkout information
        Checkout_overview.Navigate to
        Checkout_overview.Verify you are on a correct page
        Checkout_overview.Verify that the total price is calculated properly for one product
        Checkout_overview.Finalize the order
        Checkout_finish.Verify you are on a correct page

Add six products to cart
        Products.Verify you are on a correct page
        Products.Add six products
        Products.Verify that cart has 6 items inside

Remove one item from cart
        Products.Verify you are on a correct page
        Cart.Navigate to
        Cart.Verify you are on a correct page
        Cart.Remove one item

Place an order with six products
        Products.Verify you are on a correct page
        Products.Add six products
        Products.Verify that cart has 6 items inside
        Cart.Navigate to
        Cart.Verify you are on a correct page
        Checkout_information.Navigate to
        Checkout_information.Verify you are on a correct page
        Checkout_information.Populate checkout information
        Checkout_overview.Navigate to
        Checkout_overview.Verify you are on a correct page
        Checkout_overview.Verify that the total price is calculated properly for six products
        Checkout_overview.Finalize the order
        Checkout_finish.Verify you are on a correct page

Go to Twitter page
        Products.Verify you are on a correct page
        Products.Click Twitter page

Go to Facebook page
        Products.Verify you are on a correct page
        Products.Click Facebook page

Go to Linkedin page
        Products.Verify you are on a correct page
        Products.Click Linkedin page
Log out
        Products.Verify you are on a correct page
        Products.Click on hamburger menu
        Products.Log out
        Landing.Verify you are on a correct page