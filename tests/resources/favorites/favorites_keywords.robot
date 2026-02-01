*** Settings ***
Library    SeleniumLibrary
Resource   favorites_locators.robot

*** Keywords ***

Navegar Para Aba Favoritos
    Wait Until Element Is Visible    ${ABA_FAVORITOS}    10s
    Click Element    ${ABA_FAVORITOS}
    Wait Until Element Is Visible    ${TITULO_PARTIDAS_FAVORITAS}    10s
    Wait Until Element Is Visible    ${TITULO_TIMES_FAVORITOS}    10s

Abrir Modal De Favoritar Time
    Wait Until Element Is Visible    ${BTN_ABRIR_MODAL_FAVORITAR}    10s
    Wait Until Element Is Enabled    ${BTN_ABRIR_MODAL_FAVORITAR}    10s
    Click Element    ${BTN_ABRIR_MODAL_FAVORITAR}
    Wait Until Element Is Visible    ${INPUT_PESQUISAR_TIME}    10s

Adicionar Primeiro Time Da Lista
    Wait Until Element Is Visible    ${BTN_ADD_PRIMEIRO_TIME}    15s
    Wait Until Element Is Enabled    ${BTN_ADD_PRIMEIRO_TIME}    15s
    Click Element    ${BTN_ADD_PRIMEIRO_TIME}

Concluir Seleção De Times Favoritos
    Wait Until Element Is Visible    ${BTN_CONCLUIR_FAVORITOS}    15s
    Wait Until Element Is Enabled    ${BTN_CONCLUIR_FAVORITOS}    15s
    Click Element    ${BTN_CONCLUIR_FAVORITOS}
    Sleep    1s
    Wait Until Element Is Visible    ${TITULO_TIMES_FAVORITOS}    10s

Validar Que Existe Pelo Menos Um Time Favorito
    Wait Until Element Is Visible    ${LISTA_TIMES_FAVORITOS}    10s

Editar Times Favoritos
    Wait Until Element Is Visible    ${BTN_EDITAR_FAVORITOS}    10s
    Click Element    ${BTN_EDITAR_FAVORITOS}

Desmarcar Primeiro Time Favorito
    Wait Until Element Is Visible    ${BTN_DESMARCAR_PRIMEIRO}    10s
    Click Element    ${BTN_DESMARCAR_PRIMEIRO}

Salvar Alteracoes De Favoritos
    Wait Until Element Is Visible    ${BTN_SALVAR_FAVORITOS}    10s
    Click Element    ${BTN_SALVAR_FAVORITOS}

Validar Que Area De Canais Favoritos Esta Visivel
    Wait Until Element Is Visible    ${TITULO_CANAIS_FAVORITOS}    10s

Abrir Modal De Favoritar Canal
    Wait Until Element Is Visible    ${BTN_FAVORITAR_CANAL}    15s
    Click Element    ${BTN_FAVORITAR_CANAL}
    Sleep    300ms

Adicionar Primeiro Canal Da Lista
    Wait Until Element Is Visible    ${BTN_ADD_PRIMEIRO_CANAL}    15
    Click Element    ${BTN_ADD_PRIMEIRO_CANAL}
    Sleep    300ms

Concluir Seleção De Canais Favoritos
    Wait Until Element Is Visible    ${BTN_CONCLUIR_CANAL}    10s
    Click Element    ${BTN_CONCLUIR_CANAL}
    Sleep    500ms