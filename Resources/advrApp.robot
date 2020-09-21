*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
All Navbar Links Must Work
    LandingPage.Load
    LandingPage.Verify Page Loaded
    NavBar.Open Adventures
    AdventuresPage.Verify Page Loaded
    NavBar.Open Brand
    LandingPage.Verify Page Loaded
    NavBar.Open Trips
    TripsPage.Verify Page Loaded
    NavBar.Open Home
    LandingPage.Verify Page Loaded

All Hero Component Links Must Work
    LandingPage.Load
    LandingPage.Verify Page Loaded
    LandingPage.Open Get Started
    CreateUserPage.Verify Page Loaded
    NavBar.Open Home
    LandingPage.Open Watch Trailer
    TrailerPage.Verify Page Loaded

All Footer Links Must Work
    LandingPage.Load
    LandingPage.Verify Page Loaded
    LandingPage.Open About Us
    AboutUsPage.Verify Page Loaded


All Adventures Must Open Details
    AdventuresPage.Load
    AdventuresPage.Verify Adventure 0
    AdventuresPage.Verify Adventure 1
    AdventuresPage.Verify Adventure 2
    AdventuresPage.Verify Adventure 3
    AdventuresPage.Verify Adventure 4

All Trips Must Open Details
    TripsPage.Load
    TripsPage.Verify Trip 0
    TripsPage.Verify Trip 1
    TripsPage.Verify Trip 2
    TripsPage.Verify Trip 3
    TripsPage.Verify Trip 4

Sign In Modal Buttons Must Be Working
    SignInModal.Open
    SignInModal.Verify Page Loaded
    SignInModal.Click Cancel Button
    SignInModal.Verify Modal Closed
    NavBar.Open SignIn
    SignInModal.Verify Page Loaded
    SignInModal.Click Join Now Link
    CreateUserPage.Verify Page Loaded

Sign In Modal Validation
    SignInModal.Open
    SignInModal.Verify Page Loaded
    SignInModal.Verify Nulls
    SignInModal.Verify Invalids
    SignInModal.Verify Valids
    ProfilePage.Verify Page Loaded

Form Nulls Validation
    CreateUserPage.Open
    CreateUserPage.Verify Page Loaded
    CreateUserPage.Verify Nulls

Form Min/Max Length Validation
    CreateUserPage.Verify Min Lengths
    CreateUserPage.Verify Max Legnths

Form Wrong Formats Validation
    CreateUserPage.Verify Wrong Formats

Form Good Creadentials Validation
    CreateUserPage.Verify Correct Inputs
    ProfilePage.Verify Page Loaded



