# frozen_string_literal: true

class AddressList < SitePrism::Page
  set_url 'pt/my-account/add-address'
  element :address, '.form-control.js-address-type'
  element :code, '#isocode'
  element :number, 'input[name="number"]'
  element :district, '#bairro'
  element :complement, '#complemento'
  element :referenceLocation, '#referenceLocation'
  element :phone, '#phone'
  element :save, '#js-save-address-btn'
  element :cancel, '.btn.btn-block.btn-default'
  element :menu, '.js-toggle-sm-navigation.glyph'

  def menu_acess
    menu.click
    click_link 'Minha Conta'
  end

  def list_address
    click_link  'Lista de Endereços'
  end

  def link_new_address
    click_link 'Adicionar endereço'  
  end
  
  def new_address
    address.click
    address.select 'Comercial'
    code.set '1111-010'
    number.set(Faker::Number.number(digits: 3))
    phone.set("#{"11"}#{"9"}#{Faker::Number.number(digits: 11)}")
    click_button 'Salvar'
  end 
end
