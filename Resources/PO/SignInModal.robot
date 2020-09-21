*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SignInModal-Title} =  Sign in
${CancelButton} =  id=cancelmodal
${SignInButton} =  id=signinmodal
${JoinNowLink} =  id=newsignin
${EmailInputField} =  id=email
${PasswordInputField} =  id=password
${EmailErrorText} =  css=#EmailError > p
${PasswordErrorText} =  css=#PassError > p
${RequiredErrorMessage} =  Required
${InvalidErrorMessageModal} =   Invalid input
${InvalidEmail} =  wrongformatemail
${ValidEmail} =  validemail@format.com
${InvalidPassword} =  notadmin
${ValidPassword} =  admin

*** Keywords ***
Open
    LandingPage.Load
    LandingPage.Verify Page Loaded
    NavBar.Open SignIn

Verify Page Loaded
    Sleep  1s
    Wait Until Page Contains  ${SignInModal-Title}

Click Cancel Button
    Click Button  ${CancelButton}

Verify Modal Closed
    Wait Until Element Is Not Visible  ${CancelButton}

Click Sign In Button
    Click Button  ${SignInButton}

Click Join Now Link
    Click Link  ${JoinNowLink}

Input Invalid Email
    Input Text  ${EmailInputField}  ${InvalidEmail}

Input Valid Email
    Input Text  ${EmailInputField}  ${ValidEmail}

Input Invalid Password
    Input Password  ${PasswordInputField}  ${InvalidPassword}

Input Valid Password
    Input Password  ${PasswordInputField}  ${ValidPassword}

Verify Email Null
    Element Text Should Be  ${EmailErrorText}   ${RequiredErrorMessage}

Verify Email Invalid
    SignInModal.Input Invalid Email
    Sleep  1s
    Element Text Should Be  ${EmailErrorText}   ${InvalidErrorMessageModal}

Verify Password Null
    Element Text Should Be  ${PasswordErrorText}   ${RequiredErrorMessage}

Verify Password Invalid
    SignInModal.Input Invalid Password
    Sleep  1s
    Element Text Should Be  ${EmailErrorText}   ${InvalidErrorMessageModal}

Verify Nulls
    SignInModal.Click Sign In Button
    SignInModal.Verify Email Null
    SignInModal.Verify Password Null

Verify Invalids
    SignInModal.Verify Email Invalid
    SignInModal.Verify Password Invalid

Verify Valids
    SignInModal.Input Valid Email
    SignInModal.Input Valid Password
    SignInModal.Click Sign In Button