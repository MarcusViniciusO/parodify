#language: pt

Funcionalidade: Reproduzir Paródia

    Sendo um usuário previamente cadastrado
    Quero reproduzir musicas no player do Parodify
    Para que eu possa ouvir as paródias

    Contexto: Login
        * Login com "jose@hotmail.com" e "pwd123"

    Cenário: ouvir paródia
        Dado que eu gosto muito de "Rock"
        Quando toco a seguinte canção:
            | parodia | Sprints de Luta Sprints de Gloria |
            | banda   | Charlie Brown Bug                 |
        Então essa paródia fica em modo de reprodução