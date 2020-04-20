# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}

module Pages
  def salesman
    @salesman ||= Salesman.new
  end

  def customer_register
    @customer_register ||= CadastroCliente.new
  end

  def customer_login
    @customer_login ||= UserCliente.new
  end

  def listar_prod_categoria
    @listar_prod_categoria ||= ProdCategoria.new
  end
        
  def search_product
    @search_product ||= SearchProduct.new
  end
        
  def product_page
    @product_page ||= ProductPage.new
  end

  def cart
    @pagina_do_carrinho ||= Cart.new
  end

  def checkout
    @checkout ||= Checkout.new
  end
      
  def my_account
    @menu ||= MenuClienteFisico.new
  end

  def address_list
    @address_list ||= AddressList.new
  end
        
  def save_cart
    @save_cart ||= SavedCart.new
  end

  def details_personal
    @details_personal ||= DetailsPersonal.new
  end

  def historical_orders
    @historical_orders ||= HistoricalOrders.new
  end

  def negotiations
    @negotiations ||= Negotiations.new
  end
        
  def calculator
    @calculator ||= Calculator.new
  end

    def menu_my_business
      @menu_my_business ||= ClienteJuridico.new
    end

  def budgets
    @budgets ||= Budgets.new
  end

  def credit_internal
    @credit_internal ||= CreditInternal.new
  end

  def unity
    @unity ||= Unity.new
  end
end
