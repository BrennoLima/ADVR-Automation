*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${NavBar-Adventures-Link} =  id=adventures
${NavBar-Trips-Link} =  id=trips
${NavBar-Home-Link} =  id=home
${NavBar-Brand-Link} =  id=brand
${NavBar-SignIn-Button} =  id=signin


*** Keywords ***
Open Adventures
    Click Link  ${NavBar-Adventures-Link}

Open Trips
    Click Link  ${NavBar-Trips-Link}

Open Home
    Click Link  ${NavBar-Home-Link}

Open Brand
    Click Link  ${NavBar-Brand-Link}

Open SignIn
    Click Button  ${NavBar-SignIn-Button}
