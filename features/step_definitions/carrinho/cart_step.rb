# frozen_string_literal: true

Dado('que foi finalizado o pedido na PDP.') do
  salesman.load
  salesman.login_salesman
  customer_login.login_user_business
  customer_login.begin_session
  search_product.search_product
  search_product.click_button_search
  search_product.select_product
  product_page.fill_in_fields
  product_page.add_cart
  product_page.checkout
end

Quando('preencho todos os campos do carrinho') do
  cart.cart_fields
end

Quando('finalizo a compra.') do
  cart.checkout
end

Então('será apresentado a página do checkout') do
  @texto = find('.checkout-summary-headline')
  expect(@texto.text).to eql 'Resumo do Pedido'
end
