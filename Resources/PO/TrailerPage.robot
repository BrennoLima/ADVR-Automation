*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TrailerTitle} =  There will be an amazing trailer here soon!

*** Keywords ***
Verify Page Loaded
    Sleep  1s
    Wait Until Page Contains  ${TrailerTitle}