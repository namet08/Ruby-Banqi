Dado("que eu acesso a pagina de login do app") do
  access_app
end

Quando('eu preencho email e senha validos') do |table|
  set_name(table.rows_hash[:cpf],table.rows_hash[:password])
  if_esle
end

Então('eu realizo login no app vendo meu {string} na home') do |string|
  #home_login
  #expect(home_login.text).to eql string
end