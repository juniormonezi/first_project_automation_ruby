#language: pt

@calculator
Funcionalidade: Calculadora

Contexto: Realizar Loguin vendedor e cliente
Dado que o vendedor e o cliente ja estava logado no sistema

@acess_calculator
Cenário: Acessar Calculadora
Quando clino no item Calculadoras
Então será exibido a tela de Calculadoras.

@acess_calculate_paints
Cenário: Acessar Calculadora de Tintas
Dado que o vendedor acessou o link de Calculadoras
Quando acessa a tela de Calculadoras de Tintas
Então será possivel realizar o calculo da quantidade de tintas.

@acess_calculate_air_conditioning
Cenário: Acessar Calculadora de Ar Condicionado
Dado que o vendedor acessou o link de Calculadoras
Quando acessa a tela de Calculadoras de Ar Condicionado
Então será possivel realizar o calculo dos BTUS.
