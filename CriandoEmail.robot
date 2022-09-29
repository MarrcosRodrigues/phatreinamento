*** Settings ***
Documentation        Aqui neste arquivo estaram presentes todos os tipos de variaveis 
...                  que iremos estudar ao longo do treinamento.

Library              SeleniumLibrary


*** Test Cases ***
Cenario: Criando Email
    [Tags]    Email
    Criando Email    marcos    rodrigues    22
    Criando Email    joao    alves    33

*** Keywords ***
Criando Email
    [Arguments]    ${NOME}    ${SOBRENOME}    ${IDADE}
    Log To Console    \n${NOME}_${SOBRENOME}_${IDADE}@robot.com