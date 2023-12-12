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
${CART}                  //span[contains(@class,'nav-cart-icon nav-sprite')]
${ADD_CART}              //input[contains(@title,'Adicionar ao carrinho')]
${ADDED_VERIFICATION}    //span[contains(.,'Adicionado ao carrinho')]
${REMOVE_CART}           //input[contains(@title,'Excluir')]
${REMOVED_PRODUCT}       //div[contains(@class,'a-section ewc-item-remove-msg')]
${REMOVE_MSG}            //div[@class='a-section ewc-item-remove-msg']


*** Keywords ***

Abrir Navegador
    Open Browser     ${URL}         chrome         options=add_experimental_option("detach", True)
    Maximize Browser Window

Fechar Navegador
     Capture Page Screenshot
     Close Browser

Acessar a home page do site Amazon    
    Go To    url=${URL}

Verificar se o título da página fica Amazon.com.br | Tudo pra você, de A a Z.
    Title Should Be    Amazon.com.br | Tudo pra você, de A a Z.

Entrar no menu Ofertas do dia
    Click Element    locator=${MENU_OFERTAS}

Verificar se o título da página fica Ofertas e Promoções | Amazon.com.br
    Title Should Be    Ofertas e Promoções | Amazon.com.br
    
Verificar se a o texto "Ofertas recomendadas para você" deve ser exibido na página
    Element Should Be Visible    ${CATEGORIA}

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}

Digitar o nome de produto "Playstation 5" no campo de pesquisa
    Input Text    locator=${CAIXA_PESQUISA}    text=Playstation 5

Clicar no botão de pesquisa
    Click Element    locator=${BOTAO_PESQUISA}

Verificar se o título da página fica Amazon.com.br : Playstation 5
    Title Should Be    Amazon.com.br : Playstation 5

Verificar o resultado da pesquisa se está listando o produto "Playstation 5"
    Element Should Be Visible    ${PRODUTO}     timeout=30s
    
Adicionar o produto "Playstation 5" no carrinho
    Element Should Be Visible    ${PRODUTO}
    Click Element    ${PRODUTO}
    Click Element    locator=${ADD_CART}

Verificar se o produto "Playstation 5" foi adicionado com sucesso
    Title Should Be     Carrinho de compras da Amazon.com
    Element Should Be Visible           locator=${ADDED_VERIFICATION}


Remover o produto "Playstation 5" do carrinho
    Wait Until Element Is Visible    locator=${REMOVE_CART}         timeout=20s
    Click Element    locator=${REMOVE_CART}
    Wait Until Element Is Visible    locator=${REMOVE_MSG}
    Element Should Be Visible        locator=${REMOVE_MSG}         


Verificar se o carrinho fica vazio
    Element Should Be Visible     locator=${REMOVED_PRODUCT}



#GHERKIN STEPS

#TEST 01

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon
    Verificar se o título da página fica Amazon.com.br | Tudo pra você, de A a Z.
    

Quando acessar o menu "Ofertas do dia"
    Entrar no menu Ofertas do dia
    
    
Então o título da página deve ficar "Ofertas e Promoções | Amazon.com.br"
    Verificar se o título da página fica Ofertas e Promoções | Amazon.com.br

E o texto "Ofertas recomendadas para você" deve ser exibido na página
    Verificar se a o texto "Ofertas recomendadas para você" deve ser exibido na página

#TEST 02

Quando pesquisar pelo produto "Playstation 5"
    Digitar o nome de produto "Playstation 5" no campo de pesquisa
    Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Playstation 5"
    Verificar se o título da página fica Amazon.com.br : Playstation 5

E um produto da linha "Playstation 5" deve ser mostrado na página
    Verificar o resultado da pesquisa se está listando o produto "Playstation 5"