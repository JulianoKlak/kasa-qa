*** Settings ***
Resource   ../login/login_keywords.robot

*** Keywords ***
Dado que estou autenticado
    Garantir Que Estou Deslogado
    Abrir Modal De Login
    Quando informo email e senha corretos
    Então posso acessar funcionalidades autenticadas