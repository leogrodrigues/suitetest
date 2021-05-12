*** Settings ***

Library     Browser



*** Variables ***

${URL}          http://automationpractice.com
${BROWSER}      chromium



*** Keywords ***

Abrir navegador
    Open Browser    about:blank   ${BROWSER}   

Fechar navegador
    Close Browser


Dado que estou na pagina home do site
    Go To               ${URL}
    Wait For Elements State     css=a[class=login]


Qunando eu pesquisar pelo produto "${PRODUTO}"
    Fill Text       id=search_query_top     ${PRODUTO}   
    Click           css=button[name=submit_search]
    

Então o produto "${PRODUTO}" deve ser listado na pagina de resultado da busca
    Wait For Elements State    h1 span[class=heading-counter]


Então a pagina deve exibir a mensagem "${MSG_ERRO}"
    Wait For Elements State    p[class='alert alert-warning']

