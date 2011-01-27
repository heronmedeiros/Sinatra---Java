# language: pt
Funcionalidade: ver páginas
    Como um usuário qualquer
    Eu quero acessar uma pagina do sistema
    Para ter acesso a seu conteudo

    Cenário: Página Principal
        Dado que eu acabei de entrar no sistema
        Então Eu devo ver o texto "Web service"
        E devo preencher o campo "valor1" com 3
        E devo preencher o campo "valor2" com 4
        Então Eu devo ver o resultado  "O resultado da operacao foi : 7"

