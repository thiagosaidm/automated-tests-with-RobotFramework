*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                   https://www.amazon.com.br/
${MENU_OFERTAS}          (//a[contains(.,'Ofertas do Dia')])[1]
${TEXTO_HEADER}          Ofertas e Promoções | Amazon.com.br
${CATEGORIA}             //h1[contains(.,'Ofertas e Promoções')]

*** Keywords ***

Abrir Navegador
    Open Browser     ${URL}         chrome         options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar Navegador
     Close Browser

Acessar a home page do site Amazon    
    Go To    url=${URL}


Entrar no menu Ofertas do dia
    Click Element    locator=${MENU_OFERTAS}

Verificar se o título da página fica Ofertas e Promoções | Amazon.com.br
    Wait Until Page Contains    Ofertas e Promoções
    Title Should Be    Ofertas e Promoções | Amazon.com.br




