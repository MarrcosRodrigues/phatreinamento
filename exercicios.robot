*** Settings ***
Documentation        Neste arquivo esterão presentes todos os exercicios de IF e FOR.

*** Variables ***
${SIMPLES}
@{LISTA}
&{DICIONARIO}

${NOME}    Marcos



*** Test Cases ***
Contando de 0 a 9
    [Tags]    CONTAR
    Contar de 0 a 9

Contando a lista de FRUTAS
    [Tags]    FRUTA
    Percorrer itens de uma lista

Exercicio do FOR
    [Tags]    EXEC
    Exercicio do FOR

Imprimindo os paises
    [Tags]    PAISES
    Imprimir lista de paises

Imprimindo o nome por decisão
    [Tags]    DECISAO
    Tomar decisões

Exercicio do IF
    [Tags]    EXEC1
    Exericio do IF



*** Keywords ***
Contar de 0 a 9
    FOR    ${COUNT}    IN RANGE   0    10
        Log To Console    ${COUNT}
    END

Percorrer itens de uma lista
    @{FRUTAS}    Create List    Morango    Banana    Abacaxi    Uva    Melancia
    FOR    ${FRUTA}    IN    ${FRUTAS}
        Log To Console    ${FRUTA}
    END

Exercicio do FOR
    FOR    ${COUNT}    IN RANGE    0    11
        Log To Console    Estou no número: ${COUNT}
    END

Imprimir lista de paises
    @{PAISES}    Create List    USA    HOLANDA    MEXICO    ARGENTINA    JAPÃO
    FOR    ${PAIS}    IN    @{PAISES}
        Log To Console    Eu vou conhecer ${PAIS}
    END

Tomar decisões
    IF    '${NOME}'=='Maria'
        Log To Console    Vou fazer isso só quando for a Maria
    ELSE IF    '${NOME}'=='João'
        Log To Console    Vou fazer isso só quando for o João
    ELSE
        Log To Console    So quando eu quiser
    END

Exericio do IF
    FOR    ${COUNT}    IN RANGE    0    11
        IF    ${COUNT}==5
            Log To Console    Estou no número: ${COUNT}
        ELSE IF    ${COUNT}==8
            Log To Console    Estou no número: ${COUNT}
        ELSE    
            Log To Console    Eu não sou o 5 e também não sou o número 8, sou o número: ${COUNT}
        END
    END
