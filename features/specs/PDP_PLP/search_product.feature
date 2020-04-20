#language: pt

@search_product
Funcionalidade: realizar busca por produtos

Contexto: Realizar Loguin vendedor e cliente
Dado que o vendedor e o cliente ja estava logado no sistema

Cenário: Buscar Produtos
Quando no campo de busca informa a opção de digitar o EAN ou Código do Produto ou a Descrição para filtro
E clica no botão Pesquisar
E clica no produto da pesquisa realizada
Então visualizará a PDP do produto
