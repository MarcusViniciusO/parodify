#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | marcus@outlook.com.br |
            | password       | senha123              |
            | senha_confirma | senha123              |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <password>       |
            | senha_confirma | <senha_confirma> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email              | password | senha_confirma | mensagem_saida                       |
            |                    | senha123 | senha123       | Oops! Informe seu email.             |
            | marcus@hotmail.com |          |                | Oops! Informe sua senha.             |
            | marcus@hotmail.com | senha123 | senha1234      | Oops! Senhas não são iguais.         |
            |                    |          |                | Oops! Informe seu email e sua senha. |

    @temp
    Cenario: Validação do campo email

        Quando acessar a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"
