*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                   https://www.amazon.com.br/
${MENU_OFERTAS}          (//a[contains(.,'Ofertas do Dia')])[1]
${TEXTO_HEADER}          Ofertas e Promoções | Amazon.com.br
${CATEGORIA}             //h1[contains(.,'Ofertas e Promoções')]
${CAIXA_PESQUISA}        //input[@id='twotabsearchtextbox']
${BOTAO_PESQUISA}        //input[contains(@id,'nav-search-submit-button')]
${PRODUTO}               (//span[contains(.,'Console PlayStation 5')])[3] 


*** Keywords ***

Abrir Navegador
    Open Browser     ${URL}         chrome         options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar Navegador
     Capture Page Screenshot
     Close Browser

Acessar a home page do site Amazon    
    Go To    url=${URL}


Entrar no menu Ofertas do dia
    Click Element    locator=${MENU_OFERTAS}

Verificar se o título da página fica Ofertas e Promoções | Amazon.com.br
    Element Should Be Visible        ${CATEGORIA}
    Title Should Be    Ofertas e Promoções | Amazon.com.br

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}

Digitar o nome de produto "Playstation 5" no campo de pesquisa
    Input Text    locator=${CAIXA_PESQUISA}    text=Playstation 5

Clicar no botão de pesquisa
    Click Element    locator=${BOTAO_PESQUISA}

Verificar o resultado da pesquisa, se listando o produto pesquisado (conferir um)
    Element Should Be Visible    ${PRODUTO}     timeout=30s
