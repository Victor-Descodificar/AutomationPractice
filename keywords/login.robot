*** Settings ***
Documentation    Suite description

*** Keywords ***
Go To Login Page And Retrieve Password
    click element    ${PAGE_INDEX.LOGIN_BUTTON}
    click element    ${LOGIN_PAGE.FORGOT_PASSWORD}
    input text       ${FORGOT_PASSWORD_PAGE.EMAIL_ADDRESS}  ${VALUES["email"]}
    wait until element is visible  ${FORGOT_PASSWORD_PAGE.RETRIEVE_PASSWORD_BUTTON}
    click element    ${FORGOT_PASSWORD_PAGE.RETRIEVE_PASSWORD_BUTTON}
    element should be visible  ${FORGOT_PASSWORD_PAGE.SUCCESS_MESSAGE}

Login To The Page
    click element    ${PAGE_INDEX.LOGIN_BUTTON}
    input text       ${LOGIN_PAGE.EMAIL_ADDRESS}  ${VALUES["email"]}
    input text       ${LOGIN_PAGE.PASSWORD}       ${VALUES["password"]}
    click element    ${LOGIN_PAGE.SIGN_IN_BUTTON}

Logout From The Page
   wait until element is visible  ${LOGIN_PAGE.SING_OUT_BUTTON}
   click element                  ${LOGIN_PAGE.SING_OUT_BUTTON}

Page Title Should Be
    [Arguments]  ${page_title}
    title should be  ${page_title}

Click on create an account button
    click element  ${PAGE_INDEX.LOGIN_BUTTON}
    input text     ${PAGE_INDEX.EMAIL_CREATE}  ${VALUES["email"]}
    click button   ${PAGE_INDEX.CREATE_ACCOUNT_BUTTON}
    wait until element is not visible  ${PAGE_INDEX.CREATE_ACCOUNT_BUTTON}
    title should be  Login - My Store

Input personal information
    click element  ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.TITLE_MS}
    input text     ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.FIRST_NAME}   ${VALUES["first_name"]}
    input text     ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.LAST_NAME}    ${VALUES["last_name"]}
    input text     ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.EMAIL}        ${VALUES["email"]}
    input text     ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.PASSWORD}     ${VALUES["password"]}
    select from list by value  ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.BIRTHDAY_YEAR}    ${VALUES["birthday_day"]}
    select from list by value  ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.BIRTHDAY_MONTH}   ${VALUES["birthday_month"]}
    select from list by value  ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.BIRTHDAY_DAY}     ${VALUES["birthday_year"]}

Input address information
    input text     ${CREATE_ACCOUNT_PAGE.ADDRESS.FIRST_NAME}   ${VALUES["first_name"]}
    input text     ${CREATE_ACCOUNT_PAGE.ADDRESS.LAST_NAME}    ${VALUES["last_name"]}
    input text     ${CREATE_ACCOUNT_PAGE.ADDRESS.COMPANY}      ${VALUES["company"]}
    input text     ${CREATE_ACCOUNT_PAGE.ADDRESS.ADDRESS}      ${VALUES["address"]}
    input text     ${CREATE_ACCOUNT_PAGE.ADDRESS.CITY}         ${VALUES["city"]}
    select from list by label  ${CREATE_ACCOUNT_PAGE.ADDRESS.STATE}         ${VALUES["state"]}
    input text    ${CREATE_ACCOUNT_PAGE.ADDRESS.POSTAL_CODE}                ${VALUES["postal_code"]}
    select from list by label    ${CREATE_ACCOUNT_PAGE.ADDRESS.COUNTRY}     ${VALUES["country"]}
    input text    ${CREATE_ACCOUNT_PAGE.ADDRESS.HOME_PHONE}                 ${VALUES["home_phone"]}
    input text    ${CREATE_ACCOUNT_PAGE.ADDRESS.MOBILE_PHONE}               ${VALUES["mobile_phone"]}
    input text    ${CREATE_ACCOUNT_PAGE.ADDRESS.FUTURE_REFERENCE_ADDRESS}   ${VALUES["reference_address"]}


Click on register button
    click element  ${CREATE_ACCOUNT_PAGE.REGISTER_BUTTON}

Assert user is loged in
    wait until element is visible  ${USER_PAGE.USER_NAME}