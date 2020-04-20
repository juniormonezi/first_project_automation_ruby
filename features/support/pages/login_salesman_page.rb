# frozen_string_literal: true

class Salesman < SitePrism::Page
  set_url '/'
  element :name, 'input[name="username"]'
  element :password, 'input[name="password"]'
  element :conectar, '.ASM-btn.ASM-btn-login'
  element :logout, '.ASM-btn.ASM-btn-logout'

  def login_salesman
    name.set 'salesman'
    password.set '123'
    conectar.click
  end
  
  def logout_salesman
    logout.click
  end
end
