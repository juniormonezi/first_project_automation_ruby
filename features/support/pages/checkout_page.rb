# frozen_string_literal: true

class Checkout < SitePrism::Page
  set_url 'pt/checkout/multi/payment-method/add'
  element :paymentType, '.form-control.js-select-payment.payments__select'
  element :paymentCondition, '.form-control.js-select-payment-flag.payments__select'
  element :portion, '.form-control.js-select-payment-installments.payments__select'
  element :proximo, '.js-go-review.btn.btn-primary.btn-block.checkout-next'
  element :checkout, '#placeOrder'
  element :valuePay, '.form-control.js-payment-input'
  element :pagamentoNotDesabled, 'div[data-type="INITIAL"]'
  element :paymentCondition2, 'option[value="C-41-F-70"]'
  element :portion2, '//*/div//div[@data-type="INITIAL"]//select[@name="installment"]'
  element :portion3, '//div[data-type="INITIAL"]//div[class="box-input__item mt-5"]//select[name="installment"]'
  element :portion4, 'select[name="installment"]'
  
  def select_payment
    paymentType.click
  end

  def payment_card_construcard
    paymentType.select 'Cartão Construcard'
    paymentCondition.click
    paymentCondition.select 'CONSTRUCARD'
    portion.click
    portion.select '1x'
  end

  def payment_boleto
    paymentType.select 'Boleto'
    paymentCondition.click
    paymentCondition.select 'BOLETO PED VENDA'
    portion.click
    portion.select '1x'
  end

  def payment_multiples_payment
    paymentType.select 'Múltiplos Pagamentos'
    valuePay.set '100000'
    paymentCondition.click
    paymentCondition.select 'PDV'
    portion.click
    portion.select '1x'
    pagamentoNotDesabled.click
    pagamentoNotDesabled.select 'Múltiplos Pagamentos'
    paymentCondition.click
    paymentCondition2.click
    wait_until_portion_visible
    portion.click
  end

  def payment_credit_card
    paymentType.select 'Cartão de Crédito'
    paymentCondition.click
    paymentCondition.select 'credit card'
    portion.click
    portion.select '5x'
  end

  def click_btn_next
    proximo.click
  end

  def click_checkout
    checkout.click
  end

  def generate_ticket
    click_button 'BAIXAR BOLETO'
  end
end
