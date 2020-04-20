# frozen_string_literal: true

Quando('clino no item Calculadoras') do                                      
  calculator.acess_calculator
end                                                                          

Então('será exibido a tela de Calculadoras.') do                             
  @texto = find ('.active')
  expect(@texto.text).to eql 'CALCULADORAS'
end
