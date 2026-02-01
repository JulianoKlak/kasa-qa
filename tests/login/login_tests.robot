*** Settings ***
Resource   ../resources/common/setup.robot
Resource   ../resources/login/login_keywords.robot
Resource   ../resources/common/common_keywords.robot

Test Setup     Abrir Site
Test Teardown  Fechar Navegador

*** Test Cases ***
Cenário: Login com sucesso
    Abrir Modal De Login
    Quando informo email e senha corretos
    Então posso acessar funcionalidades autenticadas
    Quando faço logoff
    Então devo ver a opção de entrar novamente

Cenário: Login com senha errada
    Garantir Que Estou Deslogado
    Abrir Modal De Login
    Quando informo email válido e senha incorreta
    Então devo ver uma mensagem de erro de autenticação

Cenário: Login com campos em branco
    Garantir Que Estou Deslogado
    Abrir Modal De Login
    Quando não preencho os campos e tento fazer login
    Então devo ver mensagem de email obrigatório

Cenário: Login sem informar email
    Garantir Que Estou Deslogado
    Abrir Modal De Login
    Quando informo apenas a senha
    Então devo ver mensagem de email obrigatório

Cenário: Login sem informar senha
    Garantir Que Estou Deslogado
    Abrir Modal De Login
    Quando informo apenas o email
    Então devo ver mensagem de senha obrigatória

Cenário: Login com email inválido
    Garantir Que Estou Deslogado
    Abrir Modal De Login
    Quando informo email inválido e senha válida
    Então devo ver uma mensagem de erro de autenticação