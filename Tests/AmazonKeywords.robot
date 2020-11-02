*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/AmazonKeywords.robot


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    #Begin Web Test
    Open Browser  about:blank  chrome

    #Search for Products
    Go To   http://www.amazon.com.tr  chrome

    #Select Product from Search Results
    Wait Until Page Contains  Çok Satanlar
    Click Button  id=sp-cc-accept
    Input Text  id=twotabsearchtextbox  huawei p40
    Click Button  xpath=//input[@value='Git']
    Wait Until Page Contains  Aranan ürün: "huawei p40"

    #Add Product to Cart
    Sleep  3s
    Click Image  Huawei P40 Lite 6.4" 6/128 Gb Akıllı Telefon, Pembe
    Sleep  3s
    Wait Until Page Contains  Sonuçlara dön
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Sepete Eklendi

    #Begin Checkout
    Click Link  id=hlb-view-cart-announce
    Wait Until Page Contains  Alışverişi Tamamla

    #End Web Test
    Close Browser


*** Keywords ***
