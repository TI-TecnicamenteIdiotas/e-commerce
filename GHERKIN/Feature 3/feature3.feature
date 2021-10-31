#encoding: UTF-8
#language: en
Feature: Buscar produtos
    Como um possível cliente do Tecnicamente Idiotas
    Fulano quer buscar um produto no sistema

    Contexto:
    Dado que "Fulano" quer buscar um produto no sistema
    E ele está na página inicial

    Scenario: Usuário não logado
    E ele tenta acessar a página de algum produto
    Então um aviso de que é necessário estar logado no sistema para acessar os produtos deve ser exibida
    E ele é redirecionado para a página de login

    Scenario: Usuário logado
    E ele tenta acessar a página de algum produto
    Então ele é redirecionado para a página do produto selecionado
