*** Settings ***

Resource    ../Resources/api_testing_users_resources.robot

*** Variables ***


*** Test Cases ***

Criar um novo usuário com sucesso
    Criar um novo usuário
#    Cadastrar o usuário criado na API ServeRest
#    Conferir se o usuário foi cadastrado corretamente