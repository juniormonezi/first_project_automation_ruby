#language: pt

@order
Funcionalidade: Menu Historico 

Contexto: Realizar Loguin vendedor e cliente
Dado que o vendedor e o cliente ja estava logado no sistema

@historico_detalhe_pedido
Cenário: Acessar Histórico Detalhes de Pedidos
Dado que o vendedor acessou o link de Histórico de Pedidos
Quando clico no link numero do pedido.
Então será possivel Refazer Pedido.

@historical_download_pdf
Cenário: Acessar Histórico Detalhes de Pedidos
Dado que o vendedor acessou o link de Histórico de Pedidos
Quando clico no link numero do pedido.
Então será possivel Baixar PDF do pedido. 
