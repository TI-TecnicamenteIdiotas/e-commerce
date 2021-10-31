#encoding: UTF-8
#language: en
Feature: Registro de novo usuário
    Dado que "fulano" quer acessar as funcionalidades do sistema
    Ele deve se registrar para que ele tenha acesso às funcionalidades de
    usuário logado

    Contexto:
    Dado que "Fulano" quer se registrar no sistema

    Scenario: Registro
    E ele clica no botão Register
    Entao é redirecionado para uma pagina de cadastro de nome, email e senha.
    E ele preenche os campos com seu nome, email e senha

    Scenario: Registro valido
    Então ele preencheu os campos com dados validos
    E ele clica no botao registrar
    Entao a conta de "fulano" é registrada no sistema e um alerta de registro efetuado com sucesso deve ser exibido

    Scenario: Registro inválido
Então ele preencheu os campos com algum dado inválido
E ele clica no botao registrar
Entao uma mensagem de aviso de dados de registro inválidos deve ser exibida
Então ele deve preencher novamente os campos
