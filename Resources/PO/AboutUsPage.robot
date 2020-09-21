*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${AboutUsTitle} =   ME!

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  ${AboutUsTitle}