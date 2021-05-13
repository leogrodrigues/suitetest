*Settings*
Documentation       Documento da API: https://fakerestapi.azurewebsites.net/index.html

Suite Setup     Conectar API

Resource        ResourceAPI.robot


*Test Cases*
Buscar a listagem de todos os livros (GET)
    Requisitar todos os livros
    Conferir o status code      200
    Conferir o reason       OK
    Conferir se retorna uma lista com "200" livros


Buscar um livros especifico (GET)
    Requisitar o livro "15"
    Conferir se retornam todos os dados corretos do livro 15


Cadastrar um novo livro (POST)
    Cadastrar um novo livro
    Conferir se retornam todos os dados corretos do livro criado


Alterar um livro (PUT)
    Conferir se retorna todos os dados alteradosdo livro 150


