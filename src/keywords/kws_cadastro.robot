*** Settings ***
Documentation        Aqui estão as keywords dos testes de cadastro.

Resource        ../config/package.robot

*** Keywords ***

######################################################################################################
#                Cenario: Validando cadastro com sucesso no learningprime
######################################################################################################

Dado que eu esteja na tela de cadastro
    Wait Until Element Is Visible    ${HOME.BTN_ENTRAR}
    Click Element                    ${HOME.BTN_ENTRAR}

    Wait Until Element Is Visible    ${LOGIN.BTN_CADASTRO}
    Click Element                    ${LOGIN.BTN_CADASTRO}

    Wait Until Page Contains         Novo Cliente    
E informe todos os dados necessários
    Input Text                       ${LOGIN.INPUT_EMAIL}                 robot@teste1445.com
    Input Text                       ${LOGIN.INPUT_SENHA}                 123456
    Input Text                       ${CADASTRAR.INPUT_COMFIRMSENHA}      123456

    
Quando finalizar o cadastro
    Click Element                    ${CADASTRAR.BTN_CIAR}

Então devo ser direcionado para a tela home do site
    Wait Until Element Is Visible    ${HOME.BTN_MINHACONTA}