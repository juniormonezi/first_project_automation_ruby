# frozen_string_literal: true

Quando('preencho o Nome ou Endereço de e-mail do cliente') do
  customer_login.login_customer_physical
end

Quando('clico no botão Iniciar Sessão') do
  customer_login.begin_session
end

Então('será visualizado a PLP') do
  @texto = find('.user-al-visible')
  expect(@texto.text).to eql 'Olá, usuario fisico'
end

Quando('preencho o Nome ou Endereço de e-mail do cliente juridico') do
  customer_login.login_user_business
end

Quando('clico botão Iniciar Sessão') do
  customer_login.begin_session
end

Então('será visualizado a  PLP') do
  @texto = find('.user-al-visible')
  expect(@texto.text).to eql 'Olá, usuário juridico'
end
