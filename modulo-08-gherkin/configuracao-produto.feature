# language: pt
Funcionalidade: Configuração de Produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  e escolher a quantidade 
  para depois inserir no carrinho de compras

  Cenário: Configurar produto e inserir no carrinho
    Dado que estou na página do produto "Shorts de praia"
    Quando seleciono o tamanho "M"
    E seleciono a cor "Azul"
    E seleciono a quantidade "2"
    E clico no botão "Adicionar ao carrinho"
    Então o produto deve ser adicionado ao carrinho com as configurações selecionadas

  Cenário: Configurar produto sem selecionar tamanho e cor e quantidade
    Dado que estou na página do produto "Shorts de praia"
    Quando não seleciono o tamanho
    E não seleciono a cor
    E não seleciono a quantidade
    E clico no botão "Adicionar ao carrinho"
    Então Não deve ser possível adicionar o produto ao carrinho 

  Cenário: Configurar produto com quantidade inválida
    Dado que estou na página do produto "Shorts de praia"
    E seleciono o tamanho "M"
    E seleciono a cor "Azul" 
    Quando seleciono a quantidade "11"
    E clico no botão "Adicionar ao carrinho"
    Então Não deve ser possivel adicionar o produto ao carrinho

 Cenário: Limpar configurações do produto
    Dado que estou na página do produto "Shorts de praia"
    Quando seleciono o tamanho "M"
    E seleciono a cor "Azul"
    E seleciono a quantidade "2"
    E clico no botão "Limpar configurações"
    Então as configurações do produto devem retornar ao estado original
