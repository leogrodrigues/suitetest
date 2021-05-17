*Settings*
#Suite Teardown    Controlando o Teardown da Suite
#Test Teardown     Controlando o Teardown do teste


*Test Cases*
Exemplo1 : Teste lidando com suite e test Teardown
    Essa keyword fará o teste passar, não executando as keywords abaixo!
    Essa keyword vai passar sozinha!
    Essa keyword fará o teste falhar, não executando as keywords abaixo!


Exemplo 2: Teste lidando com suite e test Teardown
    Essa keyword vai passar sozinha!
    Essa keyword vai passar sozinha!
    Esse aqui tambem vai passar com uma condição e vai parar de executar as keywords abaixo!
    Essa keyword vai passar sozinha!


Exemplo 3: Teste lidando com suite e test Teardown
    Essa keyword vai passar sozinha!
    Essa keyword fará o teste falhar, não executando as keywords abaixo!
    Essa keyword vai passar sozinha!
    Essa keyword vai falhar sozinha!

Exemplo 3: Teste lidando com suite e test Teardown
    Essa keyword vai falhar sozinha!


*Keywords*


Essa keyword fará o teste passar, não executando as keywords abaixo!
    Pass Execution      message=Estou forçando meu teste a passar com sucesso!


Essa keyword fará o teste falhar, não executando as keywords abaixo!
    Fail        msg=Estou forçando meu teste a falhar!


Esse aqui tambem vai passar com uma condição e vai parar de executar as keywords abaixo!
    ${STATUS}       Run Keyword And Return Status       Should Be True      "May" == "May"
    Pass Execution If       ${STATUS}       message=May é igual a May, então passou!

Essa keyword vai passar sozinha!
    Should Be True      "May" == "May"


Essa keyword vai falhar sozinha!
    Should Be True      "May" == "Joao"

