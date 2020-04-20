#language: pt

@customer_register
Funcionalidade: Cadastro de cliente

Contexto: Realizar Login
Dado que esteja logado no sistema

@physical_customer_register
Cenário: Cadastrar Cliente fisico
Quando clico no botao criar nova conta
E preencho todos os campos obriatórios
E clico no botão Registrar
Então será apresentado tela PLP

@legal_customer_register
Cenário: Cadastrar Cliente Juridico
Quando clico no botao criar nova conta
E preencho todos os campos cliente Juridico
E clico no botão Registrar.
Então será apresentado tela PLP.