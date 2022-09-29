*** Settings ***
Documentation        Aqui neste arquivo estaram presentes todos os tipos de variaveis 
...                  que iremos estudar ao longo do treinamento.

Library              SeleniumLibrary
Library              DebugLibrary

Suite Setup        Abrir o meu navegador
Suite Teardown     Fechar navegador

*** Variables ***
${URL}         https://learningprime.com.br/
${BROWSER}     chrome




*** Test Cases ***
Cenario: Buscando uma roupa
    [Tags]    BUSCA
    Dado que eu esteja na tela Home do site
    Quando pesquisar o produto    Bag
    Então o produto deve ser apresentado com sucesso
    E a seguinte mensagem deve ser apresentada    Resultados da busca por 'Bag'

Cenario: Buscar Mug com sucesso
    [Tags]    MUG
    Dado que eu esteja na tela Home do site
    Quando pesquisar o produto    Mug
    E a seguinte mensagem deve ser apresentada    Resultados da busca por 'Mug'
    Então o teste é concluido com sucesso

Cenario: Validando cadastro com sucesso no learningprime
    [Tags]    CADASTRO
    Dado que eu esteja na tela de cadastro
    E informe todos os dados necessários
    Quando finalizar o cadastro
    Então devo ser direcionado para a tela home do site
    E a seguinte mensagem deve ser apresentada    Bem vindo! Seu cadastro foi feito com sucesso.

Cenario: Validar login com senha incorreta
    [Tags]    SUITE
    Dado que eu esteja na tela de login
    Quando informar uma senha incorreta
    Então a mensagem "Email ou senha inválida." deve ser apresentada

Cenario: Validar login com email incorreta
    [Tags]    SUITE
    Dado que eu esteja na tela de login
    Quando informar uma email incorreta
    Então a mensagem "Email ou senha inválida." deve ser apresentada

*** Keywords ***

Dado que eu esteja na tela de login
    Wait Until Element Is Visible    xpath=//a[@href='/login']
    Click Element                    xpath=//a[@href='/login']
    Wait Until Element Is Visible    xpath=//a[@href='/signup']

Quando informar uma senha incorreta
    Input Text                       spree_user_email    teste@teste1435.com
    Input Text                       spree_user_password    123456
    Click Element                    xpath=//input[@value='Entrar']

Quando informar uma email incorreta
    Input Text                       spree_user_email    teste@teste1435.com
    Input Text                       spree_user_password    123456
    Click Element                    xpath=//input[@value='Entrar']

Então a mensagem "${MESSAGE}" deve ser apresentada
    Element Text Should Be           xpath=//div[@class='flash error']    ${MESSAGE}

######################################################################################################
#                Cenario: Validando cadastro com sucesso no learningprime
######################################################################################################

Dado que eu esteja na tela de cadastro
    Wait Until Element Is Visible    xpath=//a[@href='/login']
    Click Element                    xpath=//a[@href='/login']
    Debug

    Wait Until Element Is Visible    xpath=//a[@href='/signup']
    Click Element                    xpath=//a[@href='/signup']

    Wait Until Page Contains         Novo Cliente    
E informe todos os dados necessários
    Input Text                       xpath=//input[@id='spree_user_email']                    robot@teste21.com
    Input Text                       xpath=//input[@id='spree_user_password']                 123456
    Input Text                       xpath=//input[@id='spree_user_password_confirmation']    123456

    
Quando finalizar o cadastro
    Click Element                    xpath=//input[@value='Criar' and @type = 'submit']

Então devo ser direcionado para a tela home do site
    Wait Until Element Is Visible    xpath=//a[@href='/account']




######################################################################################################
#                Cenario: Buscar Mug com sucesso
######################################################################################################

Então o teste é concluido com sucesso
    Page Should Contain Image    xpath=//img[@src='/spree/products/27/small/ror_mug.jpeg?1552494901']

E a seguinte mensagem deve ser apresentada
    [Arguments]                      ${MESSAGE}
    Wait Until Page Contains         ${MESSAGE}

Dado que eu esteja na tela Home do site
    Title Should Be                  Learning Prime Store
    Wait Until Element Is Visible    xpath=//*[contains(text(),'Comprar por Categories')]        5

Quando pesquisar o produto
    [Arguments]    ${PRODUTO}
    Input Text                       xpath=//input[@id='keywords']    ${PRODUTO}
    Click Element                    xpath=//input[@type='submit' and @value='Busca']

Então o produto deve ser apresentado com sucesso
    Wait Until Page Contains         Resultados da busca por 'Bag'
    Page Should Contain Image        xpath=//img[@src='/spree/products/23/small/ror_bag.jpeg?1552494900']

Abrir o meu navegador
    Open Browser                      ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser 