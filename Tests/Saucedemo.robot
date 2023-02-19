*** Settings ***
Documentation    This is a Suite of test cases written by Adam Michalak to check that Saucedemo web shop is working properly.
Resource    ../Resources/SaucedemoApp.robot
Resource    ../Resources/Common.robot
Test Setup       Begin Test
Test Teardown    End Test

# robot -d results tests/Saucedemo.robot



*** Test Cases ***

Landing page is accessible
    SaucedemoApp.Go To Landing Page

Login with a locked out user shows the expected error message
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With A Locked Out User

Login with a wrong username shows the expected error message
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With A Wrong Username

Login with a wrong password shows the expected error message
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With A Wrong Password

Login with a correct username and password is successful
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials

Sorting "Products" page "Z-A" is successful
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Select "Z-A" From Drop-down List

Sorting "Products" page "A-Z" is successful
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Select "A-Z" From Drop-down List

Sorting "Products" page by price low to high is successful
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Select Price "low-high" From Drop-down List

Sorting "Products" page by price high to low is successful
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Select Price "high-low" From Drop-down List

Adding one product to cart is successful
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Add One Product To Cart

Placing an order with one product is successful
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Place An Order With One Product

Adding six products to cart is successful
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Add Six Products To Cart

Removing item from cart is successful
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Add Six Products To Cart
    SaucedemoApp.Remove One Item From Cart

Placing an order with six products is successful
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Place An Order With Six Products

It is possible to access Twitter page
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Go To Twitter page

It is possible to access Facebook page
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Go To Facebook page

It is possible to access Linkedin page
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Go To Linkedin page

Logging out is successful
    SaucedemoApp.Go To Landing Page
    SaucedemoApp.Sign In With Correct Credentials
    SaucedemoApp.Log Out