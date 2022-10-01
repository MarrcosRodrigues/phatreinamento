*** Settings ***
Documentation        O package.robot será o novo gerenciador de depedencias do projeto.
...                  Sendo assim, precisamos apenas instanciar esse package.


Library              SeleniumLibrary
Library              DebugLibrary

Resource          ../keywords/kws_login.robot
Resource          ../keywords/kws_cadastro.robot
Resource          ../keywords/kws_busca.robot

Resource          ../pages/cadastro_page.robot
Resource          ../pages/home_page.robot
Resource          ../pages/login_page.robot

Resource          hooks.robot