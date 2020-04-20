#language: pt

@unity

Funcionalidade: Unidades

Contexto: Realizar Loguin vendedor e cliente juridico
Dado que o vendedor e o cliente juridico ja estava logado no sistema

@details_unity
Cenário: Detalhes da Unidades
Dado que o vendedor acessou a tela Unidades
Quando acessa a tela de detalhes da Unidades
Então será verificado os itens de detalhamento da Unidades

@edit_unity
Cenário: Editar Unidades
Dado que o vendedor acessou a tela editar Unidades
Quando realiza a ediçãao dos campos
Então será apresentado a mensagem de sucesso.