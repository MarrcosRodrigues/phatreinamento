*** Settings ***
Documentation        Aqui estarão os Setups e os TearDowns do projeto.

Resource        ../config/package.robot

*** Variables ***
${URL}             https://learningprime.com.br/
${BROWSER}         chrome


*** Keywords ***
Abrir o meu navegador
    Open Browser                      ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser 