*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}              https://www.kasa.live/
${EMAIL_VALIDO}     prof.julianoklak@gmail.com
${SENHA_VALIDA}     printf0157808
${EMAIL_INVALIDO}   fake@mail.com
${SENHA_INVALIDA}   senhaerrada

*** Keywords ***
Garantir Que Estou Deslogado
    Run Keyword And Ignore Error    Tentar Fazer Logoff Se Estiver Logado
    Wait Until Element Is Visible   css:button.chakra-button.css-ovdjqs    10s

Tentar Fazer Logoff Se Estiver Logado
    Wait Until Element Is Visible    css:button[title='Geromel']    5s
    Click Element                   css:button[title='Geromel']
    Wait Until Element Is Visible   css:button.chakra-button.css-8vvqyi    5s
    Click Element                   css:button.chakra-button.css-8vvqyi

Quando informo email e senha corretos
    Preencher Formulário Login    ${EMAIL_VALIDO}    ${SENHA_VALIDA}
    Submit Login

Quando informo email válido e senha incorreta
    Preencher Formulário Login    ${EMAIL_VALIDO}    ${SENHA_INVALIDA}
    Submit Login

Quando não preencho os campos e tento fazer login
    Preencher Formulário Login    ${EMPTY}    ${EMPTY}
    Submit Login

Então posso acessar funcionalidades autenticadas
    Favoritos

Então devo ver uma mensagem de erro de autenticação
    Wait Until Element Is Visible    xpath://div[contains(normalize-space(), 'Não foi possivel fazer o login')]    10s

Abrir Modal De Login
    Wait Until Element Is Visible    css:button.chakra-button.css-ovdjqs    10s
    Click Element    css:button.chakra-button.css-ovdjqs
    Wait Until Element Is Visible    css:input#email

Preencher Formulário Login
    [Arguments]    ${email}    ${senha}
    Wait Until Element Is Visible    css:input#email    10s
    Input Text    css:input#email       ${email}
    Input Text    css:input#password    ${senha}

Submit Login
    Wait Until Element Is Visible    css:button[type='submit']    10s
    Click Element    css:button[type='submit']

Quando faço logoff
    Abrir Menu Perfil
    Clicar Em Sair

Então devo ver a opção de entrar novamente
    Devo Estar Deslogado

Favoritos
    Wait Until Element Is Visible    css:a[title='Favoritos'] p    10s


Abrir Menu Perfil
    Wait Until Element Is Visible    css:button[title='Geromel']    10s
    Click Element    css:button[title='Geromel']

Clicar Em Sair
    Wait Until Element Is Visible    css:button.chakra-button.css-8vvqyi    10s
    Click Element    css:button.chakra-button.css-8vvqyi

Devo Estar Deslogado
    Wait Until Element Is Visible    css:button.chakra-button.css-ovdjqs    10s

Quando informo apenas a senha
    Preencher Formulário Login    ${EMPTY}    ${SENHA_VALIDA}
    Submit Login

Quando informo apenas o email
    Preencher Formulário Login    ${EMAIL_VALIDO}    ${EMPTY}
    Submit Login

Quando informo email inválido e senha válida
    Preencher Formulário Login    ${EMAIL_INVALIDO}    ${SENHA_VALIDA}
    Submit Login

Então devo ver mensagem de email obrigatório
    Wait Until Element Is Visible    css:p.chakra-text.css-1a4fscf    10s
    Element Should Contain           css:p.chakra-text.css-1a4fscf    Digite seu e-mail para continuar.

Então devo ver mensagem de senha obrigatória
    Wait Until Element Is Visible    css:p.chakra-text.css-18uulcg    10s
    Element Should Contain           css:p.chakra-text.css-18uulcg    Digite sua senha para continuar.

Então devo ver mensagem de email inválido
    Wait Until Element Is Visible    css:p.chakra-text.css-1a4fscf    10s
    Element Should Contain           css:p.chakra-text.css-1a4fscf    Digite um e-mail válido.