*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${AdventuresPage-Title} =  Start your journey here
${Adventure0-Link} =  /adventures/0
${Adventure0-Title} =  Everest Expedition
${Adventure1-Link} =  /adventures/1
${Adventure1-Title} =  Volcano
${Adventure2-Link} =  /adventures/2
${Adventure2-Title} =  Sky Diving
${Adventure3-Link} =  /adventures/3
${Adventure3-Title} =  Amazon Tour
${Adventure4-Link} =  /adventures/4
${Adventure4-Title} =  Grand Canyon

*** Keywords ***
Verify Page Loaded
    Sleep  1s
    Wait Until Page Contains  ${AdventuresPage-Title}

Load
    LandingPage.Load
    LandingPage.Verify Page Loaded
    NavBar.Open Adventures

Verify Adventure 0
    Click Link  ${Adventure0-Link}
    Sleep  1s
    Wait Until Page Contains  ${Adventure0-Title}
    Go Back

Verify Adventure 1
    Click Link  ${Adventure1-Link}
    Sleep  1s
    Wait Until Page Contains  ${Adventure1-Title}
    Go Back

Verify Adventure 2
    Click Link  ${Adventure2-Link}
    Sleep  1s
    Wait Until Page Contains  ${Adventure2-Title}
    Go Back

Verify Adventure 3
    Click Link  ${Adventure3-Link}
    Sleep  1s
    Wait Until Page Contains  ${Adventure3-Title}
    Go Back

Verify Adventure 4
    Click Link  ${Adventure4-Link}
    Sleep  1s
    Wait Until Page Contains  ${Adventure4-Title}
    Go Back

