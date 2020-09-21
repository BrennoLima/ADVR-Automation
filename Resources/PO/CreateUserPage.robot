*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CreateUserTitle} =  Create your account and travel to our database!
${FirstNameInput} =  id=firstname
${FirstNameErrorMessage} =  css=#firstnameerror > p
${FirstNameShort} =  B
${FirstNameLong} =  Brennobrennobrenno
${FirstNameInvalid} =  123NumberName
${FirstNameValid} =  Brenno
${LastNameInput} =  id=lastname
${LastNameErrorMessage} =  css=div[id='lastnameerror']>p
${LastNameShort} =  L
${LastNameLong} =  Limalimalimalimalima
${LastNameInvalid} =  123Last123
${LastNameValid} =  Lima
${EmailInput} =  id=email
${EmailErrorMessage} =  css=#emailerror > p
${EmailInvalid} =  notemailformat
${EmailValid} =  brenno@gmail.com
${PasswordInput} =  id=password
${PasswordErrorMessage} =  css=#passworderror > p
${PasswordShort} =  P
${PasswordLong} =  ThisIsAVeryLongPassword
${PasswordValid} =  validOne
${RequiredErrorMessage} =  Required
${ShortErrorMessage} =  Min 2 characters
${LongErrorMessage} =  Max 15 characters
${InvalidErrorMessage} =  Invalid
${CreateButton} =  Create!

*** Keywords ***
Open
    LandingPage.Load
    LandingPage.Verify Page Loaded
    LandingPage.Open Get Started

Verify Page Loaded
    Sleep  1s
    Wait Until Page Contains  ${CreateUserTitle}

Verify Nulls
    Click Button  ${CreateButton}
    Sleep  1s
    CreateUserPage.Verify Null First Name
    CreateUserPage.Verify Null Last Name
    CreateUserPage.Verify Null Email
    CreateUserPage.Verify Null Password

Verify Min Lengths
    CreateUserPage.Input Short First Name
    CreateUserPage.Input Short Last Name
    CreateUserPage.Input Short Password
    CreateUserPage.Verify Short First Name
    CreateUserPage.Verify Short Last Name
    CreateUserPage.Verify Short Password

Verify Max Legnths
    CreateUserPage.Input Long First Name
    CreateUserPage.Input Long Last Name
    CreateUserPage.Input Long Password
    CreateUserPage.Verify Long First Name
    CreateUserPage.Verify Long Last Name
    CreateUserPage.Verify Long Password

Verify Wrong Formats
    CreateUserPage.Input Number First Name
    CreateUserPage.Input Number Last Name
    CreateUserPage.Input Invalid Email
    CreateUserPage.Verify Invalid First Name
    CreateUserPage.Verify Invalid Last Name
    CreateUserPage.Verify Invalid Email

Verify Correct Inputs
    CreateUserPage.Input Valid First Name
    CreateUserPage.Input Valid Last Name
    CreateUserPage.Input Valid Email
    CreateUserPage.Input Valid Password
    Click Button  ${CreateButton}

Input Short First Name
    Input Text  ${FirstNameInput}  ${FirstNameShort}

Input Long First Name
    Input Text  ${FirstNameInput}  ${FirstNameLong}

Input Number First Name
    Input Text  ${FirstNameInput}  ${FirstNameInvalid}

Input Valid First Name
    Input Text  ${FirstNameInput}  ${FirstNameValid}

Verify Null First Name
    Element Text Should Be  ${FirstNameErrorMessage}  ${RequiredErrorMessage}

Verify Short First Name
    Element Text Should Be  ${FirstNameErrorMessage}  ${ShortErrorMessage}

Verify Long First Name
    Element Text Should Be  ${FirstNameErrorMessage}  ${LongErrorMessage}

Verify Invalid First Name
    Element Text Should Be  ${FirstNameErrorMessage}  ${InvalidErrorMessage}

Input Short Last Name
    Input Text  ${LastNameInput}  ${LastNameShort}

Input Long Last Name
    Input Text  ${LastNameInput}  ${LastNameLong}

Input Number Last Name
    Input Text  ${LastNameInput}  ${LastNameInvalid}

Input Valid Last Name
    Input Text  ${LastNameInput}  ${LastNameValid}

Verify Null Last Name
    Element Text Should Be  ${LastNameErrorMessage}  ${RequiredErrorMessage}

Verify Short Last Name
    Element Text Should Be  ${LastNameErrorMessage}  ${ShortErrorMessage}

Verify Long Last Name
    Element Text Should Be  ${LastNameErrorMessage}  ${LongErrorMessage}

Verify Invalid Last Name
    Element Text Should Be  ${LastNameErrorMessage}  ${InvalidErrorMessage}

Input Invalid Email
    Input Text  ${EmailInput}  ${EmailInvalid}

Input Valid Email
    Input Text  ${EmailInput}  ${EmailValid}

Verify Null Email
    Element Text Should Be  ${EmailErrorMessage}  ${RequiredErrorMessage}

Verify Invalid Email
    Element Text Should Be  ${EmailErrorMessage}  ${InvalidErrorMessage}

Input Short Password
    Input Password  ${PasswordInput}  ${PasswordShort}

Input Long Password
    Input Password  ${PasswordInput}  ${PasswordLong}

Input Valid Password
    Input Password  ${PasswordInput}  ${PasswordValid}

Verify Null Password
    Element Text Should Be  ${PasswordErrorMessage}  ${RequiredErrorMessage}

Verify Short Password
    Element Text Should Be  ${PasswordErrorMessage}  ${ShortErrorMessage}

Verify Long Password
    Element Text Should Be  ${PasswordErrorMessage}  ${LongErrorMessage}

