#language: pt

@login_salesman
Funcionalidade: Realizar Login
  Cenário: Logar como Vendedor na Loja
  Dado que o vendedor estava com o link da loja VA na URL
  Quando digita os dados do funcionário cadastrado
  Então será direcionado para o login ou cadastro do cliente que efetuará a compra
