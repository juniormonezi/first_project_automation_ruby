# frozen_string_literal: true

class HistoricalOrders < SitePrism::Page
  set_url 'pt/my-account/orders'
  element :menu, '.js-toggle-sm-navigation.glyph'
  
  def menu_acess
    menu.click
    click_link 'Minha Conta'
  end

  
  def historical_orders
    click_link  'Histórico de Pedidos'
  end
  
  def request_number
    first('table tbody tr td').click_link
  end

  def reorder
    click_button 'Refazer Pedido'
  end
    
  def download_boleto
    click_button 'BAIXAR BOLETO'
  end

  def download_pdf
    click_button 'Baixar PDF do Pedido'
  end
end
