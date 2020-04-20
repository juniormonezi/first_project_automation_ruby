# frozen_string_literal: true

class CadastroCliente < SitePrism::Page
  require 'faker'
  set_url 'pt/login'
  element :create, '.ASM-btn.ASM-btn-new-account.btn.btn-block.js-go-to-login'
  element :name, 'input[name="firstName"]'
  element :birthDate, 'input[name="birthDate"]'
  element :br, '#br'
  element :notBr, '#notBr'
  element :cpf, 'input[name="document"]'
  element :addressType, '.form-control.js-address-type'
  element :postalCode, 'input[name="postalCode"]'
  element :endereco, '#register.streetName'
  element :streetNumber, 'input[name="streetNumber"]'
  element :bairro, '#register.district'
  element :phone, 'input[name="phone"]'
  element :register, '.btn.btn-default.btn-block.js-send-register'
  element :create, '.ASM-btn.ASM-btn-new-account.btn.btn-block.js-go-to-login'
  element :email, '.generic-validation.required[id*="register.email"]'
  element :cnpj, '.generic-validation.js-mask-cnpj[id*="register.document"]'
  element :socialName, '.generic-validation.required[id*="register.socialName"]'
  element :isento, 'input=[name="exempted"]'
  element :inscricaoEstadual, 'input=[name="stateRegistration"]'
  element :addressType, '.form-control.js-address-type[id*="address.addressType"]'
  element :postalCode, '.generic-validation.js-send-zipcode[id*="register.postalCode"]'
  element :streetNumber, '.generic-validation.js-mask-address-number[id*="register.streetNumber"]'
  element :complemento, '.form-control.js-complemento[id*="register.line1"]'
  element :referenceLocation, '.form-control.js-reference[id*="register.referenceLocation"]'
  element :phone, '.generic-validation.js-mask-phone[id*="register.phone"]'
  
  def create_cliente
    create.click
  end

  def date_generate
    day = rand(1..28).to_s
    mounth = rand(1..12).to_s
    year = rand(1980..1990).to_s
    birth_day = ("#{day}" + "#{mounth}" + "#{birth_day}")
  end

  def physical_customer_register
    choose 'Sou pessoa física'
    name.set(Faker::Name.name)
    find_field(birthDate).send_keys(date_generate)
    br.click
    number = CPF.generate
    cpf = CPF.new(number)
    find_field('CPF').send_keys(cpf.formatted)
    # cpf.send_keys(cpf)
    addressType.click
    addressType.select 'Residencial'
    postalCode.set '04961000'
    streetNumber.set(Faker::Number.leading_zero_number(digits: 3))
    phone.set("#{"11"}#{"9"}#{Faker::Number.number(digits: 11)}")
  end
  
  def legal_customer_register
    choose 'Sou pessoa juridica'
    email.set(Faker::Internet.email)
    cnpj.set(Faker::CNPJ.numeric)
    socialName.set("#{Faker::Name.first_name}#{" "}#{'Ltda'}")
    check 'Isento'
    addressType.click
    addressType.select 'Entrega'
    postalCode.set '61930-070'
    streetNumber.set(Faker::Number.leading_zero_number(digits: 3))
    phone.set(Faker::Number.leading_zero_number(digits: 11))
  end

  def click_register
    register.click
  end
end
