*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LandingPage-Title} =  Adventure Awaits
${GetStartedButton} =  css=#getstarted
${WatchTrailerButton} =  css=#trailer
${AboutUsButton} =  ABOUT US

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Sleep  1s
    Wait Until Page Contains  ${LandingPage-Title}

Open Get Started
    Click Button  ${GetStartedButton}

Open Watch Trailer
    Click Button  ${WatchTrailerButton}

Open About Us
    Click Button  ${AboutUsButton}