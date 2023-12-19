*** Settings ***

Library    RequestsLibrary
Library    String

*** Keywords ***

Criar um novo usuário
    ${random_string}    Generate Random String    length=6    chars=[LETTERS]
    ${random_string}    Convert To Lower Case    ${random_string}
    Set Test Variable    ${EMAIL_TEST}  ${random_string}@emailtest.com
    Log    ${EMAIL_TEST}