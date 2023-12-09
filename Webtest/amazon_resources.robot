*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                 http://www.amazon.com.br

*** Keywords ***

Abrir Navegador
    Open Browser     ${URL}         chrome         options=add_experimental_option("detach", True)

    
    Maximize Browser Window

Fechar Navegador
     Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}