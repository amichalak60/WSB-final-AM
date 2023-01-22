*** Settings ***
Documentation    This is a Suite of test cases written by Adam Michalak to check that Saucedemo web shop is working properly.
Resource    ../Resources/SaucedemoApp.robot
Resource    ../Resources/Common.robot
Test Setup       Begin Test
Test Teardown    End Test

# robot -d results tests/Saucedemo.robot



*** Test Cases ***

Landing page is accessible
    SaucedemoApp.Go to Landing Page

Login with a locked out user shows the expected error message
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with a locked out user

Login with a wrong username shows the expected error message
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with a wrong username

Login with a wrong password shows the expected error message
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with a wrong password

Login with a correct username and password is successful
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials

Sorting "Products" page "Z-A" is successful
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Select "Z-A" from drop-down list

Sorting "Products" page "A-Z" is successful
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Select "A-Z" from drop-down list

Sorting "Products" page by price low to high is successful
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Select price "low-high" from drop-down list

Sorting "Products" page by price high to low is successful
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Select price "high-low" from drop-down list

Adding one product to cart is successful
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Add one product to cart

Placing an order with one product is successful
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Place an order with one product

Adding six products to cart is successful
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Add six products to cart

Removing item from cart is successful
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Add six products to cart
    SaucedemoApp.Remove one item from cart

Placing an order with six products is successful
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Place an order with six products

It is possible to access Twitter page
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Go to Twitter page

It is possible to access Facebook page
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Go to Facebook page

It is possible to access Linkedin page
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Go to Linkedin page

Logging out is successful
    SaucedemoApp.Go to Landing Page
    SaucedemoApp.Sign in with correct credentials
    SaucedemoApp.Log out