*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.kasa.live/

*** Keywords ***
Abrir Site
    Open Browser    ${URL}    chrome
    Set Window Size    1280    800
    Wait Until Element Is Visible    css:img[alt='home']    10s

Fechar Navegador
    Close All Browsers