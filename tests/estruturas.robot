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


Teste de FOR do tipo IN ENUMERATE


Teste de SAIR do FOR


*Keywords*
Usando Repeat Keyword
    Log To Console      ${\n}
    Repeat Keyword      4x      Log To Console      Minha repetição!!!      

Usando In Rage
    Log To Console      ${\n}
    FOR     ${CONTADOR}     IN RANGE        0       5
        Log To Console      Minha posição agora é: ${CONTADOR}
    END




