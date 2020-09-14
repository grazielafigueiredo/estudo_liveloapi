#language: pt

@get
Funcionalidade: 
    Validar operações da API

    @get_users
    Cenário: Validar método GET - Listar usuários
    Quando faço uma requisição GET para o serviço
    Então o serviço deve responder com status code 200
    E retorna a lista de usuários

    @get_user
    Cenário: Validar método GET - Passando ID do usuário
    Quando faço uma requisição GET passando o id do usuário
    Então o serviço deve responder com status code 200
    E retorna o usuário

    @get_not_found
    Cenário: Validar método GET - Passando ID do usuário inválido
    Quando faço uma requisição GET passando o id do usuário inválido
    Então o serviço deve responder com status code 404
