#language: pt


@login_cliente
Funcionalidade: Realizar Loguin Cliente físico ou juridico

Contexto: Realizar Login
Dado que esteja logado no sistema

@physical_clients_login
Cenário: Logar cliente fisico
Quando preencho o Nome ou Endereço de e-mail do cliente
E clico no botão Iniciar Sessão
Então será visualizado a PLP

@legal_clients_login
Cenário: Logar cliente juridico
Quando preencho o Nome ou Endereço de e-mail do cliente juridico
E clico botão Iniciar Sessão
Então será visualizado a  PLP