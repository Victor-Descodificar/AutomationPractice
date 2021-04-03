*** Settings ***
Documentation    This file is related to validate the main flow of the website.

Resource   Global.robot
Variables  locators.yaml


Suite Setup       Open Website
#Suite Teardown    Close Website

*** Test Cases ***
Verify if user can buy an item in the store
    [Tags]  sanity
    Search for a product in the store

*** Keywords ***
Login To The Page
    click element    ${PAGE_INDEX.LOGIN_BUTTON}
    input text       ${LOGIN_PAGE.EMAIL_ADDRESS}  email@email.com
    input text       ${LOGIN_PAGE.PASSWORD}       123456
    click element    ${LOGIN_PAGE.SIGN_IN_BUTTON}


Search for a product in the store
    Login To The Page
    Log to console  To implement

Click on buy product found in search
    Log to console  To implement

Procced to checkout and confirm order
    Log to console  To implement

Check if the buy was successful
    Log to console  To implement
