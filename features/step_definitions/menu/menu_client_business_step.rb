# frozen_string_literal: true

Dado('que o vendedor e o cliente juridico ja estava logado no sistema') do
  salesman.load
  salesman.login_salesman
  #customer_login.login_customer_physical
  customer_login.login_user_business
  customer_login.begin_session
end

Quando('acesso o menu Minha Empresa') do
    menu_my_business.acessar_menu_minha_empresa
end
  
Então('será exibido os itens Budgets, Crédito Interno, Grupo de usuários e unidades.') do
  menu_my_business.acess_budgets
  menu_my_business.acess_credito_interno
  menu_my_business.acess_grupo_usuarios
  menu_my_business.acess_unidades
end
