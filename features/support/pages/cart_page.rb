# frozen_string_literal: true

class Cart < SitePrism::Page
  set_url 'pt/cart'  
  element :CarrinhoSalvos, '.save__cart--link cart__head--link'
  element :novoCarrinho, '.save__cart--link.cart__head--link.js-save-cart-link'
  element :nome, '#saveCartName'
  element :descricao, '#saveCartDescription'
  element :salvarCart, '#saveCartButton'
  element :cancelarCart, '#cancelSaveCartButton'
  element :salvarOrcamento, '.save__cart--link.cart__head--link.js-save-budgetcart-link'
  element :descricaoOrcamento, '#saveCartDescription'
  element :btnSalvarOrcamento, '#saveBudgetCartButton'
  element :btnCancelarOrcamento, '#cancelSaveCartButton'
  element :filialTransferencia, '#stockPointOfService'
  element :filialSaida, '#deliveryPointOfService'
  element :quantidade, '#quantity_0'
  element :metodoEntrega, '#deliveryMode'
  element :data, '.form-control.js-mask-date.js-datePicker.js-date-pos.hasDatepicker'
  element :cep, '#zipcode'
  element :btnCalcular, '.btn.btn-small.btn-default.js-calculate-zipcode'
  element :observacao, '#observation'
  element :btnSalvarObservacao, '.btn.btn-primary.btn-small.mt-10.js-obs-save'
  element :definirEnderecoEntega, '.js-cart-shipping-address'
  element :addNovoEndereco, '.btn.btn-default btn-block.btn-sm'
  element :useEndereco, '.btn.btn-sm.btn-primary.btn-block.js-submit-cart-address'
  element :close, '#cboxClose'
  element :cupom, '#js-voucher-code-text'
  element :btnAplicar, '#js-voucher-apply-btn'
  element :btnSubtotal, '.open-totals'
  element :btnContinuarComprando, '.btn.btn-secondary.btn-block.btn--continue-shopping.js-continue-shopping-button'
  element :btnFinalizar, '.btn.btn-primary.btn-block.btn--continue-checkout.js-continue-checkout-button'
  
  def cart_fields
    #data.set '10/10/2022'
    cep.set '15980000'
    btnCalcular.click
    observacao.set 'Teste Automação'
    btnSalvarObservacao.click
    find('#cboxClose').click
    definirEnderecoEntega.click
    first('#addressbook').click
    close.click
  end
  
  def checkout
    click_button 'Finalizar compra'
  end

  def keep_buying
    click_button 'Continuar comprando'
  end
end
        