
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
    Acessar a home page do site Amazon
    Verificar se o título da página fica Amazon.com.br | Tudo pra você, de A a Z.
    Entrar no menu Ofertas do dia
    Verificar se o título da página fica Ofertas e Promoções | Amazon.com.br
    Verificar se a o texto "Ofertas recomendadas para você" deve ser exibido na página



Caso de Teste 02 - Pesquisa de um produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos  lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Playstation 5" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Playstation 5"

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Playstation 5" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Playstation 5"
    Adicionar o produto "Playstation 5" no carrinho
    Verificar se o produto "Playstation 5" foi adicionado com sucesso

Caso de Teste 04 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Playstation 5" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Playstation 5"
    Adicionar o produto "Playstation 5" no carrinho
    Verificar se o produto "Playstation 5" foi adicionado com sucesso
    Remover o produto "Playstation 5" do carrinho
    Verificar se o carrinho fica vazio