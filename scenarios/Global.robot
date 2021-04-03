*** Settings ***
Documentation    Suite description

Library    yaml
Library    OperatingSystem
Variables  ${CURDIR}/../resources/locators.yaml
Library    SeleniumLibrary

*** Variables ***
${VALUES}

*** Keywords ***
Open Website
    Open Browser  ${PAGE_INDEX.URL}  chrome
    maximize browser window

Close Website
    close all browsers

Get Json Values
    ${json}=  Get file    ${CURDIR}/../resources/creds.json
    ${VALUES}=  Evaluate  json.loads('''${json}''')  json
    Set Global Variable   ${VALUES}
