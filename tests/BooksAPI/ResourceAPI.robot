*Settings*
Documentation       Documento da API: https://fakerestapi.azurewebsites.net/index.html

Library     RequestsLibrary
Library     Collections


*Variables*

${URL_API}      https://fakerestapi.azurewebsites.net/api/v1/

&{Book_15}      id=15
...             title=Book 15
...             pageCount=1500

&{Book_Novo}    id=1
...             title=Teste
...             description=Teste
...             pageCount=100
...             excerpt=Teste
...             publishDate=2021-05-13T21:06:42.713Z
  


*Keywords*
Conectar API
    Create Session      fakeAPI    ${URL_API}

Requisitar todos os livros
    ${RESPOSTA}     Get On Session     fakeAPI     Books     
    Log     ${RESPOSTA.text}

    Set Test Variable      ${RESPOSTA}    #coloca a variavel como global

Conferir o status code
    [Arguments]     ${StatusCode_Desejado}
    Should Be Equal As Strings       ${RESPOSTA.status_code}      ${StatusCode_Desejado}  

Conferir o reason
    [Arguments]     ${Reason_Desejado}
    Should Be Equal As Strings       ${RESPOSTA.reason}      ${Reason_Desejado} 

Conferir se retorna uma lista com "${Qnt_Livros}" livros
    Length Should Be    ${RESPOSTA.json()}      ${Qnt_Livros} 

Requisitar o livro "${Id_Livro}"
    ${RESPOSTA}     Get On Session     fakeAPI     Books/${Id_Livro}  
    Log     ${RESPOSTA.text}
    Set Test Variable      ${RESPOSTA}

Conferir se retornam todos os dados corretos do livro 15
    Dictionary Should Contain Item      ${RESPOSTA.json()}    id              ${Book_15.id}
    Dictionary Should Contain Item      ${RESPOSTA.json()}    title           ${Book_15.title}
    Dictionary Should Contain Item      ${RESPOSTA.json()}    pageCount       ${Book_15.pageCount}

    Should Not Be Empty     ${RESPOSTA.json()["description"]}
    Should Not Be Empty     ${RESPOSTA.json()["excerpt"]}
    Should Not Be Empty     ${RESPOSTA.json()["publishDate"]}

Cadastrar um novo livro
    ${Headers}      Create Dictionary       content-type=application/json
    ${RESPOSTA}     Post On Session     fakeAPI     Books
    ...                                 data={"id": 1, "title": "Teste", "description": "Teste", "pageCount": 100, "excerpt": "Teste", "publishDate": "2021-05-13T21:06:42.713Z"}
    ...                                 headers=${Headers}
    Log     ${RESPOSTA.text}
    Set Test Variable      ${RESPOSTA}

Conferir se retornam todos os dados corretos do livro criado
    Dictionary Should Contain Item      ${RESPOSTA.json()}    id                ${Book_Novo.id}
    Dictionary Should Contain Item      ${RESPOSTA.json()}    title             ${Book_Novo.title}
    Dictionary Should Contain Item      ${RESPOSTA.json()}    pageCount         ${Book_Novo.pageCount}
    Dictionary Should Contain Item      ${RESPOSTA.json()}    description       ${Book_Novo.description}
    Dictionary Should Contain Item      ${RESPOSTA.json()}    excerpt           ${Book_Novo.excerpt}
    Dictionary Should Contain Item      ${RESPOSTA.json()}    publishDate       ${Book_Novo.publishDate}

Conferir se retorna todos os dados alteradosdo livro 150
    ${RESPOSTA}     Get On Session     fakeAPI     Books/150
    Log     ${RESPOSTA.text}
    Set Test Variable      ${RESPOSTA}

    