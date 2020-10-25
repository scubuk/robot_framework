*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
    [Documentation] Some basic info about test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    Close Browser


*** Keywords ***
