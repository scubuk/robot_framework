*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com.tr  chrome
    Wait Until Page Contains  Çok Satanlar
    Click Button  id=sp-cc-accept
    Input Text  id=twotabsearchtextbox  huawei p40
    Click Button  xpath=//input[@value='Git']
    Wait Until Page Contains  Aranan ürün: "huawei p40"
    Sleep  3s
    Click Image  Huawei P40 Lite 6.4" 6/128 Gb Akıllı Telefon, Pembe
    Sleep  3s
    Wait Until Page Contains  Sonuçlara dön
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Sepete Eklendi
    Click Link  id=hlb-view-cart-announce
    Wait Until Page Contains  Alışverişi Tamamla
    Close Browser


*** Keywords ***
