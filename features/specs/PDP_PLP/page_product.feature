#language: pt
@product_page
Funcionalidade: Página do Produto

Contexto: Realizar Loguin vendedor e cliente
Dado que o vendedor e o cliente ja acessou a PDP

@btn_descricao
Cenário: Clicar no botão Descrição.
Quando clica no botão Descrição
Então abre popup com as informação.

@add_produto_cart
Cenário: Adicionar produto ao carrinho
Quando preencho os campos na PDP
E clico no botão adicionar ao carrinho
E clico no botao Finalizar Compra
Então vizualirará o produto no carrinho.
