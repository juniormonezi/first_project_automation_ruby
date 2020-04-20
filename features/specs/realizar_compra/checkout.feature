#language: pt

@checkout
Funcionalidade: Pagina do Checkout

Contexto: Finalizar pedido no carrinho
Dado que foi finalizado o pedido no cart.

Cenario: Realizar pagamento do pedido
Quando seleciono a forma de pagamento
E preencho todos os dados do pagamento
E clico no botão proximo
E clico no botão finalizar compra
Então será apresentado a Revisão do pedido