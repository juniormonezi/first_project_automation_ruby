# frozen_string_literal: true

Dado('que o vendedor e o cliente ja estava logado no sistema') do
  salesman.load
  salesman.login_salesman
  #customer_login.login_customer_physical
  customer_login.login_user_business
  customer_login.begin_session
end

Quando('clico no link Lista de Endereços') do
  address_list.menu_acess      
  address_list.list_address
end                         

Então('será visualizado os Endereços') do
  @texto = find('.active')
  expect(@texto.text).to eql 'ENDEREÇOS'            
end

Dado('que o vendedor acessou o link de Lista de Endereços') do
  address_list.menu_acess
  address_list.list_address
end

Quando('clico no link Adicionar Endereço') do
  address_list.link_new_address
end

Quando('preencho os campos do novo endereço') do
  address_list.new_address
end

Então('será visualizado o novo endereço.') do
  expect(page).to have_content('Seu endereço foi criado com sucesso')
end
