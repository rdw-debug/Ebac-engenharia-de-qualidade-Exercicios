# language: pt

Funcionalidade: Login

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Cenário: Login com sucesso
Dado que o usuário está na página de login
Quando informo o usuário e senha válidos
Então devo ser redirecionado para a tela de checkout

Cenário: Login com falha
Dado que o usuário está na página de login
Quando informo o usuário e senha inválidos
Então devo ver a mensagem "Usuário ou senha inválidos"
