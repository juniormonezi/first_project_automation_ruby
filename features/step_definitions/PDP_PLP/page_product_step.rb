# frozen_string_literal: true

Dado('que o vendedor e o cliente ja acessou a PDP') do
  salesman.load
  salesman.login_salesman
  #customer_login.login_customer_physical
  customer_login.login_user_business
  customer_login.begin_session
  search_product.search_product
  search_product.click_button_search
  search_product.select_product
end

Quando('clica no botão Descrição') do
  product_page.view_description
end

Então('abre popup com as informação.') do
  expect(page).to have_content('Descrição do Produto')
end

Quando('preencho os campos na PDP') do
  product_page.fill_in_fields
end

Quando('clico no botão adicionar ao carrinho') do
  product_page.add_cart
end

Quando('clico no botao Finalizar Compra') do
  product_page.checkout
end

Então('vizualirará o produto no carrinho.') do
  @texto = find('.active')
  expect(@texto.text).to eql 'CARRINHO'
end

Quando('clico na opção Calculadoras') do
  product_page.click_calculator
end

Então('será possivel realizar o calculo da área ou medidas do produto') do
  product_page.calculator
end
