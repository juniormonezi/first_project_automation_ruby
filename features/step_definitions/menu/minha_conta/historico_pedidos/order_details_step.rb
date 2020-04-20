# frozen_string_literal: true

Dado('que o vendedor acessou o link de Histórico de Pedidos') do
  historical_orders.menu_acess
  historical_orders.historical_orders
end

Quando('clico no link numero do pedido.') do
  historical_orders.request_number
end

Então("será possivel Refazer Pedido.") do
  historical_orders.reorder
  @texto = find('.active')
  expect(@texto.text).to eql 'CARRINHO'
end

Então('será possivel Baixar Boleto.') do
  historical_orders.download_boleto
end

Então("será possivel Baixar PDF do pedido.") do
  historical_orders.download_pdf
end
