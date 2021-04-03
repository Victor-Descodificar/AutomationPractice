*** Settings ***
Documentation    Suite description

Library     SeleniumLibrary
Variables   locators.yaml

*** Keywords ***
Open Website
    Open Browser  ${PAGE_INDEX.URL}  chrome
    maximize browser window

Close Website
    close all browsers
