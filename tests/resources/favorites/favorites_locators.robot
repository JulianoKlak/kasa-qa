*** Variables ***

# Aba Favoritos
${ABA_FAVORITOS}                 xpath=//p[normalize-space()='Favoritos']

# Títulos da página
${TITULO_PARTIDAS_FAVORITAS}     xpath=//h2[normalize-space()='Partidas favoritas']
${TITULO_TIMES_FAVORITOS}        xpath=//h2[normalize-space()='Times favoritos']

# Botões principais
${BTN_ABRIR_MODAL_FAVORITAR}     css=button[data-cy='btn-favorite-team']
${BTN_CONCLUIR_FAVORITOS}        xpath=//button[normalize-space()='Concluir']

# Busca
${INPUT_PESQUISAR_TIME}          xpath=//input[@placeholder='Pesquisar']

# Primeiro time da lista (Add)
${BTN_ADD_PRIMEIRO_TIME}         xpath=(//button[normalize-space()='Add'])[1]

# Botão de remover/desmarcar primeiro time (ícone)
${BTN_REMOVER_PRIMEIRO_TIME}     xpath=(//*[name()='svg'][@stroke='currentColor'])[1]

# Lista de times favoritos (container genérico)
${LISTA_TIMES_FAVORITOS}         xpath=//h2[normalize-space()='Times favoritos']/ancestor::div[1]

# --- Aba / Títulos ---
${TITULO_CANAIS_FAVORITOS}    css:.chakra-heading.css-1296ve2

# --- Botões Times ---
${BTN_EDITAR_FAVORITOS}       xpath://button[normalize-space()='Editar']
${BTN_SALVAR_FAVORITOS}       xpath://button[normalize-space()='Salvar']
${BTN_DESMARCAR_PRIMEIRO}     xpath://div[@class='css-1ixn91n']//div[1]//div[1]//button[1]

# --- Botões Canais ---
${BTN_FAVORITAR_CANAL}        xpath://button[normalize-space()='Favoritar']
${BTN_ADD_PRIMEIRO_CANAL}     xpath://div[@class='css-1wnsnz1']//button[@type='button'][normalize-space()='Add']
${BTN_CONCLUIR_CANAL}         xpath://button[normalize-space()='Concluir']