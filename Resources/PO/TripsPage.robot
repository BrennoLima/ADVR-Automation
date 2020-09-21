*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TripsPage-Title} =  Looking for something more serene?
${Trips0-Link} =  /trips/0
${Trips0-Title} =  Lake Louise
${Trips1-Link} =  /trips/1
${Trips1-Title} =  Taj Mahal
${Trips2-Link} =  /trips/2
${Trips2-Title} =  Great Barrier Reef
${Trips3-Link} =  /trips/3
${Trips3-Title} =  Machu Picchu
${Trips4-Link} =  /trips/4
${Trips4-Title} =  Ginza Pyramids

*** Keywords ***
Verify Page Loaded
    Sleep  1s
    Wait Until Page Contains  ${TripsPage-Title}

Load
    LandingPage.Load
    LandingPage.Verify Page Loaded
    NavBar.Open Trips

Verify Trip 0
    Click Link  ${Trips0-Link}
    Sleep  1s
    Wait Until Page Contains  ${Trips0-Title}
    Go Back

Verify Trip 1
    Click Link  ${Trips1-Link}
    Sleep  1s
    Wait Until Page Contains  ${Trips1-Title}
    Go Back

Verify Trip 2
    Click Link  ${Trips2-Link}
    Sleep  1s
    Wait Until Page Contains  ${Trips2-Title}
    Go Back

Verify Trip 3
    Click Link  ${Trips3-Link}
    Sleep  1s
    Wait Until Page Contains  ${Trips3-Title}
    Go Back

Verify Trip 4
    Click Link  ${Trips4-Link}
    Sleep  1s
    Wait Until Page Contains  ${Trips4-Title}
    Go Back


