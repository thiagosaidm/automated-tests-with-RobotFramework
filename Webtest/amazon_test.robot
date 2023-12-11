
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
    Entrar no menu Ofertas do dia
    Verificar se o título da página fica Ofertas e Promoções | Amazon.com.br



#Caso de Teste 02 - Pesquisa de um produto
#    [Documentation]    Esse teste verifica a busca de um produto
#    [Tags]             busca_produtos  lista_busca
#    Acessar a home page do site Amazon.com.br
#    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#    Clicar no botão de pesquisa
#    Verificar o resultado da pesquisa, se listando o produto pesquisado (conferir um)

