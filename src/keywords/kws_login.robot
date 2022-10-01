*** Settings ***
Documentation        Aqui estão as keywords referentes aos testes de login

Resource        ../config/package.robot


*** Keywords ***

Dado que eu esteja na tela de login
    Wait Until Element Is Visible    ${HOME.BTN_ENTRAR}
    Click Element                    ${HOME.BTN_ENTRAR}
    Wait Until Element Is Visible    ${LOGIN.BTN_CADASTRO}

Quando informar uma senha incorreta
    Input Text                       ${LOGIN.INPUT_EMAIL}    teste@teste1435.com
    Input Text                       ${LOGIN.INPUT_SENHA}    123456
    Click Element                    ${LOGIN.BTN_ENTRAR}

Quando informar uma email incorreta
    Input Text                       ${LOGIN.INPUT_EMAIL}    teste@teste1435.com
    Input Text                       ${LOGIN.INPUT_SENHA}    123456
    Click Element                    ${LOGIN.BTN_ENTRAR}

Então a mensagem "${MESSAGE}" deve ser apresentada
    Element Text Should Be           ${LOGIN.ERROR_MESSAGE}    ${MESSAGE}
