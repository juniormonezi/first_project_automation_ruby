# frozen_string_literal: true

class Budgets < SitePrism::Page
  set_url 'pt/my-company/organization-management/manage-budgets'
  elements :lista, 'tr > td'
  element :cod, 'input=[name="code"]'
  element :name, 'input[id="text.company.budget.name"]'
  element :creditLimit, 'input=[name="budget"]'
  element :menu, '.js-toggle-sm-navigation.glyph'

  def menu_acess
    menu.click
    click_link 'Minha Empresa'
  end

  def item_budgets
    click_link  'Budgets'
  end
    
  def acess_details_budgets
    click_link 'teste social2'
  end

  def edit_budgets
    click_link 'Editar'
    name.set 'Automacao'
    click_button 'Salvar'
  end
end
