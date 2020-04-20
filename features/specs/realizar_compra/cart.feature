#language: pt

@cart
Funcionalidade: Página do Carrinho

Contexto: Finalizar pedido na PDP
Dado que foi finalizado o pedido na PDP.

@checkout_cart
Cenário: Finalizar pedido no carrinho
Quando preencho todos os campos do carrinho
E finalizo a compra.
Então será apresentado a página do checkout
