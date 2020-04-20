# frozen_string_literal: true

Dado('que foi acessado o detalhes do orçamento') do
  budgets.menu_acess
  budgets.item_budgets
  budgets.acess_details_budgets
end

Quando('realizo a edição do orçamento selecionado') do
  budgets.edit_budgets
end

Então('será exibido a mensagem de sucesso Orçamento atualizado com sucesso') do
  expect(page).to have_content('Orçamento atualizado com sucesso')
end

Dado('que o vendedor acessou a tela Budgets') do
  budgets.menu_acess
  budgets.item_budgets
end

Quando('clica em código do Orçamento') do
  budgets.acess_details_budgets
end

Então('será possivel visualizar o Detalhes do orçamento, Editar Orçamento') do
  @texto = find('.label')
  expect(@texto.text).to eql 'Detalhes do Orçamento'
end
