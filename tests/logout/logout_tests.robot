*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/common/setup.robot
Resource   ../resources/common/common_keywords.robot
Resource   ../resources/login/login_keywords.robot
Test Setup     Abrir Site
Test Teardown  Fechar Navegador

*** Test Cases ***
Cenário: Logoff com sucesso
    Abrir Modal De Login
    Quando informo email e senha corretos
    Então posso acessar funcionalidades autenticadas
    Quando faço logoff
    Então devo ver a opção de entrar novamente