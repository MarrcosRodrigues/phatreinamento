*** Settings ***
Documentation        Aqui estão todos os elementos da tela de cadastro.

*** Variables ***
&{CADASTRAR}
...        INPUT_COMFIRMSENHA=//input[@id='spree_user_password_confirmation']
...        BTN_CIAR=//input[@value='Criar' and @type = 'submit']
