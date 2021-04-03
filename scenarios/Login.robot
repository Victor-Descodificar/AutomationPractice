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
    Given the user click on the account button
    And User input personal information
    And user input address information
    When user click on register button
    Then user should logged in


Verify if user can login from the already created account
    [Tags]  smoke
    Given the user login to the page
    Then the page title should be  My account - My Store


Verify if user can logout from the system with a created account
    [Tags]  smoke
    Given the user login to the page
    Then the page title should be  My account - My Store
    When user logout from the page
    Then the page title should be  Login - My Store

Verify if user can get the password back
    [Tags]  smoke
    Given the login, user can be able to retrieve passord
