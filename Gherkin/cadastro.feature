
# language: pt

Funcionalidade: Cadastro de cliente
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Cenário: Concluir cadastro com todos os dados obrigatórios preenchidos
    Dado que estou na tela de cadastro
    Quando preencho todos os campos obrigatórios marcados com asterisco, informo um e-mail em formato válido e clico em "Concluir Cadastro"
    Então o cadastro deve ser concluído com sucesso

  Esquema do Cenário: Validar formato do e-mail no cadastro
    Dado que estou na tela de cadastro com todos os demais campos obrigatórios preenchidos
    Quando informo o e-mail "<email>" e clico em "Concluir Cadastro"
    Então o sistema deve apresentar o resultado "<resultado>"

    Exemplos:
      | email             | resultado                           |
      | cliente@teste.com | cadastro concluído com sucesso      |
      | clienteteste.com  | mensagem de erro de e-mail inválido |
      | cliente@teste     | mensagem de erro de e-mail inválido |

  Cenário: Concluir cadastro com campos obrigatórios vazios
    Dado que estou na tela de cadastro
    Quando deixo um ou mais campos obrigatórios vazios e clico em "Concluir Cadastro"
    Então deve ser exibida uma mensagem de alerta
