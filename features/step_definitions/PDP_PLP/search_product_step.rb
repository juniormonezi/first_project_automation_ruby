# frozen_string_literal: true

Quando('no campo de busca informa a opção de digitar o EAN ou Código do Produto ou a Descrição para filtro') do
  search_product.search_product
end

Quando('clica no botão Pesquisar') do
  search_product.click_button_search
end

Quando('clica no produto da pesquisa realizada') do
  search_product.select_product
end

Então('visualizará a PDP do produto') do
  @text = find('.btn.btn-primary.btn-block.js-add-to-cart.js-enable-btn')
  expect(@text.text).to eql 'Adicionar Ao Carrinho'
end
