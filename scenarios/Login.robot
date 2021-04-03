*** Settings ***
Documentation    This file is related to validate the login and logout from a user to the website.

Library    yaml
Variables  ${CURDIR}/../resources/locators.yaml
Resource   ../keywords/login.robot
Resource   Global.robot

Suite Setup  Run Keywords
...  Open Website
...  AND  Get Json Values
Suite Teardown    Close Website

*** Test Cases ***
Verify if user can create an account
    [Tags]  smoke
    Click on create an account button
    Input personal information
    Input address information
    Click on register button
    Assert user is loged in

Verify if user can login from the already created account
    [Tags]  smoke
    Login To The Page
    Page Title Should Be  My account - My Store


Verify if user can logout from the system with a created account
    [Tags]  smoke
    Login To The Page
    Page Title Should Be  My account - My Store
    Logout From The Page
    Page Title Should Be  Login - My Store

Verify if user can get the password back
    [Tags]  smoke
    Go To Login Page And Retrieve Password
