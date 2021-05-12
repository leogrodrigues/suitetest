*** Settings ***
Resource    ../resource/Resource.robot

Suite Setup         Abrir navegador

Suite Teardown      Fechar navegador

***Variables***
#Dicionario
&{Formulario}       firstname=May  lastname=Fernandes  passwd=123456  address='Rua Framework, Bairro Robot'  city=Rio

#Simples
${Pessoas}      leo

#Lista
@{Frutas}       maca  pera  uva  banana



*** Test Cases ***

Preencher os dados obrigatorios

    Go To               ${URL}
    Wait For Elements State     css=a[class=login]

    Click           css=a[class=login]
    Fill Text       id=email_create     leo@gmail.com
    Click           id=SubmitCreate

    Wait For Elements State       //*[@id="account-creation_form"]//h3[contains(text(), "Your personal information")]

    Click       id=id_gender1

    
    Fill Text      id=customer_firstname     ${Formulario.firstname}
    Fill Text      id=customer_lastname      ${Formulario.lastname}
    Fill Text      id=passwd                 ${Formulario.passwd}
    