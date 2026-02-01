*** Settings ***
Library    SeleniumLibrary
Resource   search_locators.robot

*** Keywords ***
Selecionar Um Time
    Click Element    ${INPUT_TIME}
    Wait Until Page Contains Element    xpath=//div[contains(@class,'css-1lo6ld2')]    15s
    Click Element    xpath=(//div[contains(@class,'css-1lo6ld2')]//div)[1]

Selecionar Um Campeonato
    Click Element    ${INPUT_CAMPEONATO}
    Wait Until Element Is Visible    ${LISTA_OPCOES}
    Click Element    ${PRIMEIRO_ITEM_LISTA}

Selecionar Um Canal
    Click Element    ${INPUT_STREAMING}
    Wait Until Element Is Visible    ${LISTA_OPCOES}
    Click Element    ${PRIMEIRO_ITEM_LISTA}

Clicar Em Buscar
    Click Element    ${BOTAO_BUSCAR_AREA}

Validar Mensagem Sem Resultados
    Wait Until Element Is Visible    ${MSG_SEM_RESULTADOS}
    Element Should Contain    ${MSG_SEM_RESULTADOS}    Sem resultados