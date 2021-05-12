*** Settings ***
Resource    ../resource/Resource.robot

Suite Setup     Abrir navegador

Suite Teardown      Fechar navegador



*** Test Cases ***

Caso de teste 01: Pesquisar produtos existentes
    Acessar a pagina home do site
    Conferir se a pagina foi exibida
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botao Pesquisar
    Conferir se o produto "Blouse" foi listado

Caso de teste 02: Pesquisar produtos não existentes
    Acessar a pagina home do site
    Conferir se a pagina foi exibida
    Digitar o nome do produto "ItemNaoExistente" no campo de pesquisa
    Clicar no botao Pesquisar
    Conferir se o produto "No results were found for your search "ItemNaoExistente""





