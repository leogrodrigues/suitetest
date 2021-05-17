***Settings***
Documentation       Testes usando novo formato FOR


*Test Cases*

Teste de FOR aninhado
    Cria cadastro de produtos


Teste de FOR usando varias variaveis
    Cria dicionario de traducao

Teste FOR com numeracao da lista
    For com numeracao



*Keywords*

Cria cadastro de produtos
    FOR     ${produto}      IN      baby look       camiseta        blusa
        Imprime tamahos para o produto    ${produto}
    END

Imprime tamahos para o produto
    [Arguments]     ${produto}
    FOR     ${tamanho}      IN      P   M   G
        Log     Produto: ${produto} - Tam: ${tamanho}
    END

Cria dicionario de traducao
    FOR     ${Index}        ${english}      ${finish}       ${portugues}    IN
    ...     1               cat             kissa           gato
    ...     2               dog             koira           cachorro
    ...     3               horse           henoven         cavalo
        Log     Animal ${index}:\nEm ingles: ${english}\nEm finandes: ${finish}\nEm portugues: ${portugues}
    END

For com numeracao
    FOR     ${index}        ${item}     IN ENUMERATE        P   M   G   GG  XG  XXG
        Log     Item da lista: ${item} - Posição do item na lista: ${index}
    END



       



