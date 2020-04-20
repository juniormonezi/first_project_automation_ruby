  # frozen_string_literal: true

  Quando('clico no botão do Menu') do
    menu_cliente_fisico.acessar_menu
  end

  Então('visualizará as seguintes opções após clicar:') do
    @texto = find('a[title="Lista de Endereços"]')
    expect(@texto.text).to eql 'Lista de Endereços'
  end

  
  Quando('clico no link Carrinhos Salvos') do
    menu_cliente_fisico.acessar_menu          
    menu_cliente_fisico.acessar_carrinhos_salvos
  end                  
 
  Então('será visualizado os Carrinhos Salvos') do              
    @texto = find('.account-section-header')
    expect(@texto.text).to eql 'Carrinhos Salvos'
  end               
 
  Quando('clico no link Detalhes pessoas') do
    menu_cliente_fisico.acessar_menu
    menu_cliente_fisico.acessar_detalhes_pessoais
  end          
 
  Então('será visualizado os Detalhes pessoas') do
    @texto = find('.active')
    expect(@texto.text).to eql 'PERFIL'
  end

  Quando('clico no link Histórico de Pedidos') do     
    menu_cliente_fisico.acessar_menu    
    menu_cliente_fisico.acessar_historico_pedidos
  end

  Então('será visualizado os Histórico de Pedidos') do
    @texto = find('.account-section-header')
    expect(@texto.text).to eql 'Histórico De Pedidos'
  end

  Quando('clico no link Gestão de Consentimento') do
    menu_cliente_fisico.acessar_menu
    menu_cliente_fisico.acessar_gestao_consentimento
  end

  Então('será visualizado os Gestão de Consentimento') do      
    @texto = find('.active')
    expect(@texto.text).to eql 'GESTÃO DE CONSENTIMENTO'           
  end

  Quando("clico no link Endereço de e-mail") do
    menu_cliente_fisico.acessar_menu 
    menu_cliente_fisico.acessar_endereco_email
  end

  Então("será visualizado os Endereço de e-mail") do                      
    @texto = find('.active')
    expect(@texto.text).to eql 'PERFIL'
  end

  Quando("clico no link Crédito Interno") do
    menu_cliente_fisico.acessar_menu     
    menu_cliente_fisico.acessar_credito_interno
  end

  Então("será visualizado os Crédito Interno") do                       
    @texto = find('.container-lg.col-md-6')
    expect(@texto.text).to eql 'Crédito Interno'
  end

  Quando("clico no link Acessar Negociações") do
    menu_cliente_fisico.acessar_menu        
    menu_cliente_fisico.acessar_negociacoes
  end

  Então("será visualizado os Minhas Negociações") do                       
    @texto = find('.account-section-header')
    expect(@texto.text).to eql 'Minhas Negociações'
  end
