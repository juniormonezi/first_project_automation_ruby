# frozen_string_literal: true

Dado('que o vendedor estava com o link da loja VA na URL') do
  salesman.load
end

Quando('digita os dados do funcionário cadastrado') do
  salesman.login_salesman
end

Então('será direcionado para o login ou cadastro do cliente que efetuará a compra') do
  @texto= find('.ASM-btn.ASM-btn-customers')
  expect(@texto.text).to eql 'CLIENTES'
  salesman.logout_salesman
  @texto2= find('.ASM-btn.ASM-btn-login')
  expect(@texto2.text).to eql 'CONECTAR'
end
