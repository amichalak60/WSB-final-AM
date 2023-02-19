*** Settings ***
Resource    ../Resources/PO/Landing.robot
Resource    ../Resources/PO/Login.robot
Resource    ../Resources/PO/Products.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/Checkout_information.robot
Resource    ../Resources/PO/Checkout_overview.robot
Resource    ../Resources/PO/Checkout_finish.robot

*** Keywords ***

Go To Landing Page
        Landing.Navigate To
        Landing.Verify You Are On A Correct Page

Sign In With A Locked Out User
        Login.Locked Out User

Sign In With A Wrong Username
        Login.Wrong Username

Sign In With A Wrong Password
        Login.Wrong Password

Sign In With Correct Credentials
        Login.Correct Credentials
        Products.Verify You Are On A Correct Page

Select "Z-A" From Drop-down List
        Products.Verify You Are On A Correct Page
        Products.Filter "Z-A"

Select "A-Z" From Drop-down List
        Products.Verify You Are On A Correct Page
        Products.Filter "A-Z"

Select Price "low-high" From Drop-down List
        Products.Verify You Are On A Correct Page
        Products.Filter Price "low-high"

Select Price "high-low" From Drop-down List
        Products.Verify You Are On A Correct Page
        Products.Filter price "high-low"

Add One Product To Cart
        Products.Verify You Are On A Correct Page
        Products.Add One Product
        Products.Verify That Cart Has 1 Item Inside

Place An Order With One Product
        Products.Verify You Are On A Correct Page
        Products.Add One Product
        Products.Verify That Cart Has 1 Item Inside
        Cart.Navigate To
        Cart.Verify You Are On A Correct Page
        Checkout_information.Navigate To
        Checkout_information.Verify You Are On A Correct Page
        Checkout_information.Populate Checkout Information
        Checkout_overview.Navigate To
        Checkout_overview.Verify You Are On A Correct Page
        Checkout_overview.Verify That The Total Price Is Calculated Properly For One Product
        Checkout_overview.Finalize The Order
        Checkout_finish.Verify You Are On A Correct Page

Add Six Products to Cart
        Products.Verify You Are On A Correct Page
        Products.Add Six Products
        Products.Verify That Cart Has 6 Items Inside

Remove One Item From Cart
        Products.Verify You Are On A Correct Page
        Cart.Navigate To
        Cart.Verify You Are On A Correct Page
        Cart.Remove One Item

Place An Order With Six Products
        Products.Verify You Are On A Correct Page
        Products.Add Six Products
        Products.Verify That Cart Has 6 Items Inside
        Cart.Navigate To
        Cart.Verify You Are On A Correct Page
        Checkout_information.Navigate To
        Checkout_information.Verify You Are On A Correct Page
        Checkout_information.Populate Checkout Information
        Checkout_overview.Navigate To
        Checkout_overview.Verify You Are On A Correct Page
        Checkout_overview.Verify That The Total Price Is Calculated Properly For Six Products
        Checkout_overview.Finalize The Order
        Checkout_finish.Verify You Are On A Correct Page

Go To Twitter Page
        Products.Verify You Are On A Correct Page
        Products.Click Twitter Page

Go To Facebook Page
        Products.Verify You Are On A Correct Page
        Products.Click Facebook Page

Go To Linkedin Page
        Products.Verify You Are On A Correct Page
        Products.Click Linkedin Page

Log out
        Products.Verify You Are On A Correct Page
        Products.Click On Hamburger Menu
        Products.Log Out
        Landing.Verify You Are On A Correct Page