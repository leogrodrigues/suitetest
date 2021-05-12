***Settings***
Documentation       Testes usando if

Library     SeleniumLibrary

***Variables***
@{FRUTAS}       maca  banana  uva  abacaxi
@{SUCOS}        acai  melao  mamao  pera


***Test Cases***

Caso teste um
    rodando uma Keyword dada uma condução = true
    rodando uma Keyword dada uma condução = false
    armazenando um valor em uma variavel dada uma condição



***Keywords***
rodando uma Keyword dada uma condução = true
    Run Keyword if      '${FRUTAS[1]}' == 'banana'        Log     O item numero 1 é a banana
    Run Keyword if      '${SUCO[1]}' == 'acai'        Log     O item numero 1 é a açai


rodando uma Keyword dada uma condução = false
    Run Keyword Unless      '${FRUTAS[1]}' == 'maca'        Log     O item numero 1 não é maca
    Run Keyword Unless      '${SUCO[1]}' == 'malao'        Log     O item numero 1 não é melão


armazenando um valor em uma variavel dada uma condição
    ${VAR}      Set Variable    if      '${FRUTAS[2]}'  ==  'uva'       uva  
    Log         Minha variavel VAR é uma ${VAR}!!!

    ${VAR1}      Set Variable    if      '${SUCO[2]}'  ==  'melao'       melão  
    Log         Minha variavel VAR é uma ${VAR1}!!!