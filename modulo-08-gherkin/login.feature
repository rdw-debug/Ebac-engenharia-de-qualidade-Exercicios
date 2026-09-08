# language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Cenário: Realizar login com dados válidos
    Dado que estou na tela de login
    Quando informo usuário e senha válidos
    E clico no botão de login
    Então devo ser direcionado para a tela de checkout

  Cenário: Realizar login com usuário inválido
    Dado que estou na tela de login
    Quando informo um usuário inválido, uma senha válida e clico no botão de login
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"

  Cenário: Realizar login com senha inválida
    Dado que estou na tela de login
    Quando informo um usuário válido, uma senha inválida e clico no botão de login
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"
