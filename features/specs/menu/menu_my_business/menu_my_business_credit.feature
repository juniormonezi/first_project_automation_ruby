#language: pt

@credito

Funcionalidade: Credito Interno

Contexto: Realizar Loguin vendedor e cliente juridico
Dado que o vendedor e o cliente juridico ja estava logado no sistema

@table_credit
Cenário: Verificar Crédito Interno
Dado que o vendedor acessou a tela Crédito Interno
Quando verificaa tabela de Crédito Interno
Então será possivel validar os valores da tabela