#encoding: UTF-8
#language: en
Feature: Filtrar produtos
    Como um usuário do sistema Tecnicamente Idiotas
    Fulano quer completar filtrar a página inicial de acordo com o que procura

    Contexto:
    Dado que "Fulano" está logado no sistema
    E ele está na página inicial

    Scenario: Filtrar consoles
    E ele aciona o botão consoles
    Então uma lista de marcas e modelos de console é apresentada
    E ele seleciona uma opção que deseja
    Então ele é redirecionado para a página inicial com o filtro aplicado

    Scenario: Filtrar Jogos
    E ele aciona o botão Games
    Então uma lista de marcas e modelos de console é apresentada
    E ele seleciona uma opção que deseja
    Então ele é redirecionado para a página inicial com o filtro aplicado

    Scenario: Filtrar Acessórios
E ele aciona o botão Accessories
Então uma lista de marcas e modelos de console é apresentada
E ele seleciona uma opção que deseja
Então ele é redirecionado para a página inicial com o filtro aplicado