# frozen_string_literal: true

class ProductPage < SitePrism::Page
  set_url 'p/000000693387'
  element :productQuantity, '#pdpAddtoCartInput'
  element :btnMore, '.btn.btn-default.js-qty-selector-plus'
  element :btnMenos, '.btn.btn-default.js-qty-selector-minus'
  element :description, '.btn.btn-default.btn-block.btn-gray'
  element :cep, '#zipcode'
  element :btnCalculate,'.btn.btn-small.btn-default.js-calculate-zipcode'
  element :StockSearch, '.btn.btn-sm.btn-default.js-send-stock-list'
  element :stockQuantity, '.input-spinner.form-control.js-qtde-1000-input.js-qty-selector-input'
  element :addCart, '#addToCartButton'
  element :btnClose, '.btn.btn-default'
  element :btnCheckout, '.btn.btn-primary.btn-block.add-to-cart-button'
  element :btnCalculator, '.glyph-icon.flaticon-calculator'
  element :typeMeasure, '.form-control.js-select-medida'
  element :width, '.form-control.js-cec-modal__input js-mask-numbers[data-datatype*="largura"]'
  element :height, '.form-control.js-cec-modal__input js-mask-numbers[data-datatype*="altura"]'
  element :close, '.flaticon-close.fs-10'

  def fill_in_fields
    productQuantity.set '1'
    cep.set '11111111111'
    btnCalculate.click
  end 

  def add_cart
    addCart.click
  end

  def checkout
    btnCheckout.click
  end

  def click_calculator
    btnCalculator.click
  end

  def calculator
    typeMeasure.click
    typeMeasure.select 'MEDIDAS'
    width.set '10'
    height.set '20'
    click_button 'Calcular'
    close.click
  end

  def view_description
    click_button 'Descrição'
  end
end
