# frozen_string_literal: true

Dado('que esteja logado no sistema') do
  salesman.load
  salesman.login_salesman
end

Quando("clico no botao criar nova conta") do
  customer_register.create_cliente
end

Quando('preencho todos os campos obriatórios') do
  customer_register.physical_customer_register
end

Quando('clico no botão Registrar') do
  customer_register.click_register
end

Então('será apresentado tela PLP') do
  expect(page).to have_content('CASA E CONSTRUÇÃO')
end

#cadastro cliente juridico
Quando('preencho todos os campos cliente Juridico') do
  customer_register.legal_customer_register
end

Quando("clico no botão Registrar.") do                                         
  customer_register.click_register
end                                                                            

Então("será apresentado tela PLP.") do
  expect(page).to have_content('CASA E CONSTRUÇÃO')
end
