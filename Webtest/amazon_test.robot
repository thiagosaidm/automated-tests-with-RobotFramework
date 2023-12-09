*** Test Cases ***

Caso de Teste - Acessar o menu "Eletrônicos"
    [Documentation]    Esse teste Verifica o menu eletrônicos do site Amazon.com.br
    ...                E verifica a categoria Computadores e Informática
    [Tags]             menus categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu eletrônicos
    - Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    - Verificar se aparece a frase "Eletrônicos e Tecnologia"
    - Verificar se aparece a categoria "Computadores e Informática"

Caso de Teste 02 - Pesquisa de um produto
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca_produtos  lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, se listando o produto pesquisado (conferir um)

