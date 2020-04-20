# frozen_string_literal: true

Dado('que foi finalizado o pedido no cart.') do
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
  cart.cart_fields
  cart.checkout
end

Quando('seleciono a forma de pagamento') do
  checkout.select_payment
end

Quando('preencho todos os dados do pagamento') do
  checkout.payment_card_construcard
end

Quando('clico no botão proximo') do
  checkout.click_btn_next
end

Quando('clico no botão finalizar compra') do
  checkout.click_checkout
  #pagina_checkout.btn_gerar_boleto
end

Então('será apresentado a Revisão do pedido') do
  @texto = find('.checkout-success__body__headline')
  expect(@texto.text).to eql('OBRIGADO PELO SEU PEDIDO!')
end
