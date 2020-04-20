# frozen_string_literal: true

class CreditInternal < SitePrism::Page
  set_url 'pt/my-company/organization-management/manage-interncredit/'
  elements :lista, 'tr > td'
  element :menu, '.js-toggle-sm-navigation.glyph'

  def acess_credito_interno
    menu.click
    click_link 'Minha Empresa'
    click_link 'Crédito interno'
  end

  def table_credit
    puts lista.size
    puts lista[0].text
  end    
end
