*Settings*
Documentation Vamos aprender a fazer LOOPS usando Robot

*Variables*
@{MINHA_LISTA}      maca  abacaxi  banana  morango  laranja


*Test Cases*
Teste de Repeat Keyword
    [Documentation]     Chama uma mesma keyword varias vezes 
    Usando Repeat Keyword


Teste de FOR do tipo IN RAGE
    [Documentation]     Faz um loop dentro de um intervalo que vc quer
    Usando In Rage


Teste de FOR do tipo IN
    [Documentation]     Faz um loop percorrendo a lista que vc passar e percorre o indice da lista
    Usando For In

Teste de FOR do tipo IN ENUMERATE
    [Documentation]     Faz um loop percorrendo a lista que vc passar e percorre o indice da lista
    Usando For In Enumerate

Teste de SAIR do FOR
    [Documentation]     Vc controla qnd o FOR deve ser encerrado antes de terminar todos os loops
    Usando For Exit


*Keywords*
Usando Repeat Keyword
    Log To Console      ${\n}
    Repeat Keyword      4x      Log To Console      Minha repetição!!!      

Usando In Rage
    Log To Console      ${\n}
    FOR     ${CONTADOR}     IN RANGE        0       5
        Log To Console      Minha posição agora é: ${CONTADOR}
    END

Usando For In
    Log To Console      ${\n}
    FOR     ${FRUTA}    IN      @{MINHA_LISTA}
        Log To Console      Minha fruta é: ${FRUTA}
    END

Usando For In Enumerate
    Log To Console      ${\n}
    FOR     ${INDICE}   ${FRUTA}    IN ENUMERATE      @{MINHA_LISTA}
        Log To Console      Minha fruta é: ${INDICE} --> ${FRUTA}
    END

Usando For Exit
    Log To Console      ${\n}
    FOR     ${INDICE}   ${FRUTA}    IN ENUMERATE      @{MINHA_LISTA}
        Log To Console      Minha fruta é: ${INDICE} --> ${FRUTA}
        Exit For Loop If    '${FRUTA}'=='banana'    
    END



