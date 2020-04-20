#language: pt

@address_list
Funcionalidade: Menu Lista Endereços 

Contexto: Realizar Loguin vendedor e cliente
Dado que o vendedor e o cliente ja estava logado no sistema

@address
Cenário: Acessar Lista de Endereços
Quando clico no link Lista de Endereços
Então será visualizado os Endereços

@add_new_address
Cenário: Adicionar novo Endereço Cliente Físico
Dado que o vendedor acessou o link de Lista de Endereços
Quando clico no link Adicionar Endereço
E preencho os campos do novo endereço
Então será visualizado o novo endereço.