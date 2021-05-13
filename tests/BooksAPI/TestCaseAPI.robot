*Settings*
Documentation       Documento da API: https://fakerestapi.azurewebsites.net/index.html

Suite Setup     Conectar API

Resource        ResourceAPI.robot


*Test Cases*
Buscar a listagem de todos os livros
    Requisitar todos os livros
    Conferir o status code      200
    Conferir o reason       OK
    Conferir se retorna uma lista com "200" livros

Buscar um livros especifico
    Requisitar o livro "15"
    Conferir se retornam todos os dados corretos do livro 15

