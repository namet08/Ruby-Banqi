#language:pt

    Funcionalidade: Login
    
        Cenario: Login valido
            Dado que eu acesso a pagina de login do app
            Quando eu preencho email e senha validos
            | cpf      | 55472432308 |
            | password | senha123    |
            Então eu realizo login no app vendo meu "Saldo banQi:" na home