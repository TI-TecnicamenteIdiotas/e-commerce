#encoding: UTF-8
#language: en
Feature: Login
    Como um usuário do sistema Tecnicamente Idiotas
    Fulano quer completar o Login
    Para que ele tenha acesso às funcionalidades de usuário logado

    Contexto:
    Dado que "Fulano" possui uma conta no sistema

    Scenario: Login válido
    E ele acessa a página de Login
    E ele preenche os campos de login com os dados corretos
    Quando ele clica no botão login
    Então ele deve ser redirecionado para a página inicial com as funções de usuário logado habilitadas

    Scenario: Login inválido
E ele acessa a página de login
E ele preenche os campos de login com os dados incorretos
Quando ele clicar no botão de login
Então uma mensagem de aviso de usuário ou senha incorretos deve ser exibida
