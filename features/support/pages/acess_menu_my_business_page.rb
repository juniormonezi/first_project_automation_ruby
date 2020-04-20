# frozen_string_literal: true

class ClienteJuridico < SitePrism::Page
  set_url '/pt/Casa-e-Construção/c/root_cec_category'
  element :menu, '.js-toggle-sm-navigation.glyph'

  def acessar_menu_minha_empresa
    menu.click
    click_link 'Minha Empresa'
  end

  def acess_budgets
    click_link 'Budgets'
  end

  def acess_credito_interno
    menu.click
    click_link 'Minha Empresa'
    click_link 'Crédito interno'
  end
    
  def acess_grupo_usuarios
    menu.click
    click_link 'Minha Empresa'
    click_link 'Grupos de usuários'
  end

  def acess_unidades
    menu.click
    click_link 'Minha Empresa'
    click_link 'Unidades'
  end
end
