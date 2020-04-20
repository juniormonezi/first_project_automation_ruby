# frozen_string_literal: true

Dado('que o vendedor acessou a tela Unidades') do
  unity.acess_unidades
end

Quando('acessa a tela de detalhes da Unidades') do
  unity.acess_details_unity
end

Então('será verificado os itens de detalhamento da Unidades') do
  @texto = find('.label')
  expect(@texto.text).to eql 'Detalhes da unidade'
end

Dado('que o vendedor acessou a tela editar Unidades') do
  unity.acess_unidades
  unity.acess_details_unity
end

Quando('realiza a ediçãao dos campos') do
  unity.edit_unity
end

Então('será apresentado a mensagem de sucesso.') do
  page.assert_text('Unidade de negócios salva com sucesso')
  expect(page.assert_text('Unidade de negócios salva com sucesso')).to eq true
end
