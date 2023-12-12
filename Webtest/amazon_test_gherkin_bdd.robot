
*** Settings ***
Documentation    Suite de Teste: Testa o site da Magazine Luiza
Resource         amazon_resources.robot
Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador


*** Test Cases ***

Caso de Teste - Acessar o menu Ofertas do dia
    [Documentation]    Esse teste Verifica a categoria Ofertas do dia
    ...                E verifica a categoria Ofertas do dia
    [Tags]             menus categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Ofertas do dia"
    Então o título da página deve ficar "Ofertas e Promoções | Amazon.com.br"
    E o texto "Ofertas recomendadas para você" deve ser exibido na página


Caso de Teste 02 - Pesquisa de um produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos  lista_busca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Playstation 5"
    Então o título da página deve ficar "Amazon.com.br : Playstation 5"
    E um produto da linha "Playstation 5" deve ser mostrado na página

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Dado que estou na home page da Amazon.com.br
    Quando adicionar o produto "Playstation 5" no carrinho
    Então o produto "Playstation 5" deve ser mostrado no carrinho

Caso de Teste 04 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Dado que estou na home page da Amazon.com.br
    E existe o produto "Playstation 5" no carrinho
    Quando remover o produto "Playstation 5" do carrinho
    Então o carrinho deve ficar vazio