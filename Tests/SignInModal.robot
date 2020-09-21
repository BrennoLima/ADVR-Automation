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

Sign In Modal Must Be Working
    [Documentation]  This test will check every button, link and the form validation for the sign in modal
    Sign In Modal Buttons Must Be Working
    Sign In Modal Validation

*** Keywords ***