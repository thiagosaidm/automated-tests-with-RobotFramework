
*** Settings ***
Documentation    Suite de Teste: Testa o site da Magazine Luiza
Resource         amazon_resources.robot
Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador


*** Test Cases ***

Caso de Teste - Acessar o menu "Celulares"
    [Documentation]    Esse teste Verifica o menu celulares do site Magazine Luiza
    ...                E verifica a categoria Celulares
    [Tags]             menus categorias
    Acessar a home page do site Magazine Luiza
    Entrar no menu celulares
#    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
#    Verificar se aparece a frase "Eletrônicos e Tecnologia"
#    Verificar se aparece a categoria "Computadores e Informática"
#
#Caso de Teste 02 - Pesquisa de um produto
#    [Documentation]    Esse teste verifica a busca de um produto
#    [Tags]             busca_produtos  lista_busca
#    Acessar a home page do site Amazon.com.br
#    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#    Clicar no botão de pesquisa
#    Verificar o resultado da pesquisa, se listando o produto pesquisado (conferir um)

