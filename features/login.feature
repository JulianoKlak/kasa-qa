Funcionalidade: Login do usuário
  Como usuário cadastrado
  Quero acessar minha conta
  Para poder acessar funcionalidades restritas

Cenário: Login com sucesso
  Dado que estou na página de login
  Quando informo email e senha corretos
  Então devo ser autenticado e ver a tela inicial

Cenário: Login com senha errada
  Dado que estou na página de login
  Quando informo email válido e senha incorreta
  Então devo ver uma mensagem de erro de autenticação

Cenário: Login com campos em branco
  Dado que estou na página de login
  Quando não preencho os campos e tento fazer login
  Então devo ver alertas de campos obrigatórios