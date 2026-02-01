*** Settings ***
Resource   ../resources/common/setup.robot
Resource   ../resources/common/common_keywords.robot
Resource   ../resources/favorites/favorites_keywords.robot
Resource   ../resources/login/login_keywords.robot

Test Setup     Abrir Site
Test Teardown  Fechar Navegador

*** Test Cases ***
Cenário: Favoritar um time com sucesso
    Dado que estou autenticado
    Navegar Para Aba Favoritos
    Abrir Modal De Favoritar Time
    Adicionar Primeiro Time Da Lista
    Concluir Seleção De Times Favoritos
    Validar Que Existe Pelo Menos Um Time Favorito

Cenário: Não deve duplicar time já favoritado
    Dado que estou autenticado
    Navegar Para Aba Favoritos
    Abrir Modal De Favoritar Time
    Adicionar Primeiro Time Da Lista
    Concluir Seleção De Times Favoritos

    Abrir Modal De Favoritar Time
    Adicionar Primeiro Time Da Lista
    Concluir Seleção De Times Favoritos

    Validar Que Existe Pelo Menos Um Time Favorito

Cenário: Desmarcar um time dos favoritos
    Dado que estou autenticado
    Navegar Para Aba Favoritos

    Abrir Modal De Favoritar Time
    Adicionar Primeiro Time Da Lista
    Concluir Seleção De Times Favoritos

    Editar Times Favoritos
    Desmarcar Primeiro Time Favorito
    Salvar Alteracoes De Favoritos

    Navegar Para Aba Favoritos


Cenário: Favoritar um canal de TV
    Dado que estou autenticado
    Navegar Para Aba Favoritos

    Validar Que Area De Canais Favoritos Esta Visivel
    Abrir Modal De Favoritar Canal
    Adicionar Primeiro Canal Da Lista
    Concluir Seleção De Canais Favoritos
