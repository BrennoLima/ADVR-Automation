*** Settings ***
Resource  ../Resources/common.robot
Resource  ../Resources/advrApp.robot
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/AboutUsPage.robot
Resource  ../Resources/PO/AdventuresPage.robot
Resource  ../Resources/PO/Footer.robot
Resource  ../Resources/PO/NavBar.robot
Resource  ../Resources/PO/SignInModal.robot
Resource  ../Resources/PO/TripsPage.robot
Resource  ../Resources/PO/TrailerPage.robot
Resource  ../Resources/PO/CreateUserPage.robot
Resource  ../Resources/PO/ProfilePage.robot

Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test

*** Variables ***
${BROWSER} =  gc
${START_URL} =  https://master.d2c26cs6suk604.amplifyapp.com


*** Test Cases ***

Create Account Form Must Be Working
    [Documentation]  This test will check the create new account form validation
    Form Nulls Validation
    Form Min/Max Length Validation
    Form Wrong Formats Validation
    Form Good Creadentials Validation

*** Keywords ***