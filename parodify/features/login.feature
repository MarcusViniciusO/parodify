#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com o meu login e senha
    Para que eu possa ter acessos as playlists do Parodify

    Cenario: Login de usuário
        Dado que acesse a página de login
        Quando submeto minhas credenciais com: "roberto.santos@hotmail.com" e "roberto123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login
        Dado que acesse a página de login
        Quando submeto minhas credenciais com: "<email>" e "<password>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                       | password    |
            | roberto.santos1@hotmail.com | roberto123  |
            | roberto.santos@hotmail.com  | roberto1234 |
            |                             |             |
            | roberto.santos@hotmail.com  |             |
            |                             | roberto123  |