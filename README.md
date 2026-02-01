# 🧪 Kasa QA Automation

## 📖 Contexto

Este repositório contém uma suíte de testes automatizados para a aplicação **Kasa**, com foco na validação dos principais fluxos do usuário.

### 🎯 Objetivo da Automação

Garantir a qualidade e a estabilidade das funcionalidades mais críticas da aplicação, permitindo rápida validação em regressões e novos releases.

### ✅ O que foi automatizado

- Fluxo de **Login**
  - Sucesso e falhas de validação
- Fluxo de **Logout**
- Funcionalidades de **Favoritos**
  - Favoritar times
  - Não duplicar favoritos
  - Remover times favoritos
  - Favoritar canais
- Funcionalidade de **Busca de partidas**
  - Filtro por time
  - Filtro por campeonato
  - Filtro por canal
  - Combinação de filtros
  - Validação de mensagem de “Sem resultados”

---

## 🛠️ Tecnologias Utilizadas

- **Robot Framework** 7.0.1 (Python 3.12.4 on win32)
- **SeleniumLibrary**
- **Python 3.12.4**
- **Google Chrome** (execução em modo headless)
- Gerenciamento de dependências via `requirements.txt`

---

## ▶️ Execução passo a passo

### 1️⃣ Criar ambiente virtual

No **Windows** (PowerShell ou CMD):

```bash
python -m venv venv
venv\Scripts\activate
```

No **Linux / macOS**:

```bash
python -m venv venv
source venv/bin/activate
```

### 2️⃣ Instalar dependências

```bash
pip install -r requirements.txt
```

### 3️⃣ Executar os testes

```bash
robot tests/
```

Após a execução, os relatórios serão gerados na raiz do projeto:

- `report.html`
- `log.html`
- `output.xml`

---

## 🧠 Estratégia de Testes

A automação foi focada nos principais fluxos do usuário, priorizando funcionalidades críticas como:

- Autenticação (login/logout)
- Busca de partidas
- Gerenciamento de favoritos (times e canais)

A estratégia adotada busca garantir confiabilidade e rápida validação dos caminhos mais importantes do sistema, permitindo identificar falhas rapidamente em cenários de regressão e evolução do produto.

---

## 📂 Estrutura do Projeto (resumo)

```
tests/         # Casos de teste organizados por funcionalidade
resources/     # Keywords reutilizáveis, locators e setups
requirements.txt  # Dependências do projeto
README.md         # Documentação do projeto
```