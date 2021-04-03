*** Settings ***
Documentation    Suite description

*** Keywords ***
Go To Login Page And Retrieve Password
    click element    ${PAGE_INDEX.LOGIN_BUTTON}
    click element    ${LOGIN_PAGE.FORGOT_PASSWORD}
    input text       ${FORGOT_PASSWORD_PAGE.EMAIL_ADDRESS}  email@email.com
    wait until element is visible  ${FORGOT_PASSWORD_PAGE.RETRIEVE_PASSWORD_BUTTON}
    click element    ${FORGOT_PASSWORD_PAGE.RETRIEVE_PASSWORD_BUTTON}
    element should be visible  ${FORGOT_PASSWORD_PAGE.SUCCESS_MESSAGE}

Login To The Page
    click element    ${PAGE_INDEX.LOGIN_BUTTON}
    input text       ${LOGIN_PAGE.EMAIL_ADDRESS}  email@email.com
    input text       ${LOGIN_PAGE.PASSWORD}       123456
    click element    ${LOGIN_PAGE.SIGN_IN_BUTTON}

Logout From The Page
   wait until element is visible  ${LOGIN_PAGE.SING_OUT_BUTTON}
   click element                  ${LOGIN_PAGE.SING_OUT_BUTTON}

Page Title Should Be
    [Arguments]  ${page_title}
    title should be  ${page_title}

Click on create an account button
    click element  ${PAGE_INDEX.LOGIN_BUTTON}
    input text     ${PAGE_INDEX.EMAIL_CREATE}  yatite5531@ddwfzp.com
    click button   ${PAGE_INDEX.CREATE_ACCOUNT_BUTTON}
    wait until element is not visible  ${PAGE_INDEX.CREATE_ACCOUNT_BUTTON}
    title should be  Login - My Store

Input personal information
    click element  ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.TITLE_MS}
    input text     ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.FIRST_NAME}   Diana
    input text     ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.LAST_NAME}    Themyscira
    input text     ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.EMAIL}        princessdiana2@avengers.com
    input text     ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.PASSWORD}     justice
    select from list by value  ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.BIRTHDAY_YEAR}    25
    select from list by value  ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.BIRTHDAY_MONTH}   9
    select from list by value  ${CREATE_ACCOUNT_PAGE.PERSONAL_INFORMATION.BIRTHDAY_DAY}     1941

Input address information
    input text     ${CREATE_ACCOUNT_PAGE.ADDRESS.FIRST_NAME}   Diana
    input text     ${CREATE_ACCOUNT_PAGE.ADDRESS.LAST_NAME}    Themyscira
    input text     ${CREATE_ACCOUNT_PAGE.ADDRESS.COMPANY}      Avengers
    input text     ${CREATE_ACCOUNT_PAGE.ADDRESS.ADDRESS}      Wall Street
    input text     ${CREATE_ACCOUNT_PAGE.ADDRESS.CITY}         New York
    select from list by label  ${CREATE_ACCOUNT_PAGE.ADDRESS.STATE}         New York
    input text    ${CREATE_ACCOUNT_PAGE.ADDRESS.POSTAL_CODE}                00000
    select from list by label    ${CREATE_ACCOUNT_PAGE.ADDRESS.COUNTRY}     United States
    input text    ${CREATE_ACCOUNT_PAGE.ADDRESS.HOME_PHONE}                 09090099
    input text    ${CREATE_ACCOUNT_PAGE.ADDRESS.MOBILE_PHONE}               44455566677
    input text    ${CREATE_ACCOUNT_PAGE.ADDRESS.FUTURE_REFERENCE_ADDRESS}   My Address


Click on register button
    click element  ${CREATE_ACCOUNT_PAGE.REGISTER_BUTTON}

Assert user is loged in
    wait until element is visible  ${USER_PAGE.USER_NAME}