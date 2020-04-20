#language: pt

@my_business

Funcionalidade: Minha Empresa Menu Cliente Jurídico

Contexto: Realizar Loguin vendedor e cliente
Dado que o vendedor e o cliente juridico ja estava logado no sistema

Cenário: Acessar menu Minha Empresa
Quando acesso o menu Minha Empresa
Então será exibido os itens Budgets, Crédito Interno, Grupo de usuários e unidades.

