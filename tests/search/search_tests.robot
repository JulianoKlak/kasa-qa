*** Settings ***
Resource   ../resources/common/setup.robot
Resource   ../resources/common/common_keywords.robot
Resource   ../resources/login/login_keywords.robot
Resource   ../resources/search/search_keywords.robot


Test Setup     Abrir Site
Test Teardown  Fechar Navegador

*** Test Cases ***
Cenário: Buscar partida filtrando por time
    Dado que estou autenticado
    Selecionar Um Time
    Clicar Em Buscar
    Validar Mensagem Sem Resultados

Cenário: Buscar partida filtrando por campeonato
    Dado que estou autenticado
    Selecionar Um Campeonato
    Clicar Em Buscar
    Validar Mensagem Sem Resultados

Cenário: Buscar partida filtrando por canal
    Dado que estou autenticado
    Selecionar Um Canal
    Clicar Em Buscar
    Validar Mensagem Sem Resultados

Cenário: Buscar partida com todos os filtros
    Dado que estou autenticado
    Selecionar Um Time
    Selecionar Um Campeonato
    Selecionar Um Canal
    Clicar Em Buscar
    Validar Mensagem Sem Resultados