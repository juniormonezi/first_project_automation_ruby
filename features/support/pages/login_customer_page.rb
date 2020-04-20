# frozen_string_literal: true

class UserCliente < SitePrism::Page
  set_url 'pt/login'
  element :name, 'input[name="customerName"]'
  element :btnIniciar, '.ASM-btn.ASM-btn-start-session'
  element :btnClientes, '.ASM-btn.ASM-btn-customers'
  element :cliente, '.text.hidden-in-mobile-Antonio-Monezi-Junior.ui-menu-item-wrapper'
  element :clienteBusiness,'.text.hidden-in-mobile-TESTE-SOCIAL.ui-menu-item-wrapper'
  element :botao, '.ASM-btn.collapseBtn.js-ASM-collapseBtn.ui-draggable.ui-draggable-handle'

  def login_customer_physical
    name.set 'teste physical'
    cliente.click
  end

  def login_user_business
    name.set 'teste legal'
    clienteBusiness.click
  end

  def begin_session
    btnIniciar.click
  end
end
