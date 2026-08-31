# language: pt

Funcionalidade: Cadastro de cliente
    Como cliente da EBAC-SHOP
    Quero realizar meu cadastro na loja
    Para finalizar minha compra 

  Cenário: Cadastro realizado com sucesso
    Dado que estou na página de cadastro
    Quando preencho todos os campos obrigatórios
    E informo um e-mail válido
    E concluo o cadastro
    Então o cadastro deve ser realizado com sucesso


  Esquema do Cenário: Cadastro com e-mail inválido
    Dado que estou na página de cadastro
    E preencho todos os outros campos obrigatórios
    Quando informo o e-mail "<email>"
    E tento concluir o cadastro
    Então deve ser exibida uma mensagem de erro informando que o e-mail é inválido

    Exemplos:
      | email             |
      | cliente.com       |
      | cliente@          |
      | @teste.com        |


  Cenário: Cadastro com campos obrigatórios vazios
    Dado que estou na página de cadastro
    Quando deixo um ou mais campos obrigatórios vazios
    E tento concluir o cadastro
    Então deve ser exibida uma mensagem de alerta