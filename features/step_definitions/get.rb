# frozen_string_literal: true

Quando('faço uma requisição GET para o serviço') do
  @resquest_users = ApiGet.api_get_users
end

Então('o serviço deve responder com status code {int}') do |status_code|
  expect(@resquest_users.code).to eq status_code
end

Então('retorna a lista de usuários') do
  expect(@resquest_users.message).not_to be_empty
end

Quando('faço uma requisição GET passando o id do usuário') do
  @ids = sort_ids.to_i
  @resquest_users = ApiGet.api_get_user(@ids)
end

Então('retorna o usuário') do
  expect(@resquest_users.parsed_response['id']).to eql @ids
end

Quando('faço uma requisição GET passando o id do usuário inválido') do
  @ids = sort_ids_invalidos.to_s
  @resquest_users = ApiGet.api_get_user(@ids)
end