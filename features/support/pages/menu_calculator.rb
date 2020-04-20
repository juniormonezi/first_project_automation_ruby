# frozen_string_literal: true

class Calculator < SitePrism::Page
  set_url 'pt/calculators'
  element :menu, '.js-toggle-sm-navigation.glyph'
  element :surfaceType, 'select[id=surfaceType]'
  element :productType, '.form-control.cec-modal__input.js-cec-modal__input.js-productType'
  element :numberDemao, '.form-control.cec-modal__input.js-cec-modal__input.js-deMao.js-mask-only-numbers'
  element :heightPaints, '.form-control.js-mask-numbers[id*=alturaPintada]'
  element :paintedWidth, '.form-control.js-mask-numbers[id*=larguraPintada]'
  element :doorsHeight, '.form-control.js-mask-numbers[id*=alturaPortas]'
  element :doorsWidths, '.form-control.js-mask-numbers[id*=larguraPortas]'
  element :windowsHeight, '.form-control.js-mask-numbers[id*=alturaJanelas]'
  element :windowsWidths, '.form-control.js-mask-numbers[id*=larguraJanelas]'
  element :areaTotal, '.form-control.js-mask-numbers[data-datatype*="areaTotal"]'
  element :numberResidents, '.form-control.js-mask-only-numbers[data-datatype*="residentes"]'
  element :numberGadgets, '.form-control.js-mask-only-numbers[data-datatype*="ac"]'

  def acess_calculator
    menu.click
    click_link 'Calculadoras'
  end

  def acess_calculate_paints
    click_link 'Calcular de Tintas'
    surfaceType.click
    surfaceType.select 'Gesso'  
    productType.click
    productType.select 'Gesso'
    numberDemao.set '5'
    heightPaints.set '15'
    paintedWidth.set '10'
    click_button 'Calcular'
    sleep(3)
  end

  def acess_calculate_doors
    click_link 'Calcular de Tintas'
    surfaceType.click
    surfaceType.select 'Madeira'  
    productType.click
    productType.select 'Verniz'
    numberDemao.set '10'
    doorsHeight.set '20'
    doorsWidths.set '30'
    click_button 'Calcular'
  end

  def acess_calculate_window
    click_link 'Calcular de Tintas'
    surfaceType.click
    surfaceType.select 'Metal'  
    productType.click
    productType.select 'Esmalte Sintético'
    numberDemao.set '5'
    windowsHeight.set '40'
    windowsWidths.set '30'
    click_button 'Calcular'
  end

  def acess_calculator_air
    click_link 'Calcular Ar Condicionado'
    areaTotal.set '1000'
    check 'Possui incidência do Sol?'
    numberResidents.set '5'
    numberGadgets.set '5' 
    click_button 'Calcular'
  end
end
