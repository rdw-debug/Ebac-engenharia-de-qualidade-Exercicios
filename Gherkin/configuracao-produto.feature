# language: pt

Funcionalidade: Configuração de produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho, gosto e quantidade desejada
  Para depois inserir no carrinho

  Cenário: Adicionar produto com todas as opções obrigatórias preenchidas
    Dado que estou na página de um produto
    Quando seleciono uma cor, um tamanho, informo uma quantidade válida e clico para adicionar o produto ao carrinho
    Então o produto deve ser adicionado ao carrinho

  Cenário: Adicionar produto sem preencher uma opção obrigatória
    Dado que estou na página de um produto
    Quando deixo de selecionar pelo menos uma opção entre cor, tamanho ou quantidade e clico para adicionar o produto ao carrinho
    Então o produto não deve ser adicionado ao carrinho

  Cenário: Limitar a quantidade de produtos por venda
    Dado que estou configurando um produto
    Quando informo uma quantidade maior que 10
    Então o sistema não deve permitir prosseguir com essa quantidade

  Cenário: Limpar a configuração do produto
    Dado que selecionei cor, tamanho e quantidade
    Quando clico no botão "Limpar"
    Então as opções de cor, tamanho e quantidade devem voltar ao estado original