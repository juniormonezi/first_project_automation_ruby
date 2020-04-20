# frozen_string_literal: true

class Unity < SitePrism::Page
  element :menu, '.js-toggle-sm-navigation.glyph'
  element :fantasyName, 'input[name="fantasyName"]'
  element :btnEditar, '.edit.btn.btn-block.btn-default'

  def acess_unidades
    menu.click
    click_link 'Minha Empresa'
    click_link 'Unidades'
  end

  def acess_details_unity
    click_link 'TESTE SOCIAL'
  end

  def edit_unity
    btnEditar.click
    fantasyName.set(Faker::Name.name)
    click_button 'Salvar alterações'
  end
end
