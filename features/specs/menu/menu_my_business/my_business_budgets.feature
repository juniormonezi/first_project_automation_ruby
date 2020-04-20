#language: pt

@budgets

Funcionalidade: Budgets

Contexto: Realizar Loguin vendedor e cliente juridico
Dado que o vendedor e o cliente juridico ja estava logado no sistema

@budgets_details
Cenário: Acessar Detalhes do Orçamento
Dado que o vendedor acessou a tela Budgets
Quando clica em código do Orçamento
Então será possivel visualizar o Detalhes do orçamento, Editar Orçamento

@budgets_edit
Cenário:Editar Orçamento
Dado que foi acessado o detalhes do orçamento
Quando realizo a edição do orçamento selecionado
Então será exibido a mensagem de sucesso Orçamento atualizado com sucesso