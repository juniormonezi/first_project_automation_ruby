# frozen_string_literal: true

Dado('que o vendedor acessou a tela Crédito Interno') do
  credit_internal.acess_credito_interno
end

Quando('verificaa tabela de Crédito Interno') do
  credit_internal.table_credit
end

Então('será possivel validar os valores da tabela') do
  expect(credit_internal.lista.size).to eql 06
  credit_internal.lista.each do |listas|
    puts listas.text
  end
end
