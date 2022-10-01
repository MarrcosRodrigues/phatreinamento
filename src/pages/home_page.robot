*** Settings ***
Documentation        Aqui estão todos os elementos da tela home.

*** Variables ***
&{HOME}
...        BTN_ENTRAR=//a[@href='/login']
...        INPUT_BUSCA=//input[@id='keywords']
...        BTN_BUSCAR=//input[@type='submit' and @value='Busca']
...        IMG_BAG=//img[@src='/spree/products/23/small/ror_bag.jpeg?1552494900']
...        IMG_MUG=//img[@src='/spree/products/27/small/ror_mug.jpeg?1552494901']
...        BTN_MINHACONTA=//a[@href='/account']