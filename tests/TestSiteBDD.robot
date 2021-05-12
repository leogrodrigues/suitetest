*** Settings ***
Resource    ../resource/Resource.robot

Suite Setup         Abrir navegador

Suite Teardown      Fechar navegador



*** Test Cases ***

Cenario 01: Pesquisar produtos existentes
    Dado que estou na pagina home do site
    Qunando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na pagina de resultado da busca 
   

Cenario 02: Pesquisar produtos não existentes
    Dado que estou na pagina home do site
    Qunando eu pesquisar pelo produto "ItemNaoExistente"
    Então a pagina deve exibir a mensagem "No results were found for your search "ItemNaoExistente"




