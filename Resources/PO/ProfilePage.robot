*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ProfilePage-Title} =  Profile

*** Keywords ***
Verify Page Loaded
    Sleep  1s
    Wait Until Page Contains  ${ProfilePage-Title}
