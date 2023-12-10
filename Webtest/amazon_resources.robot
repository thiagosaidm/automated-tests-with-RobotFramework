*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                 https://www.magazineluiza.com.br/
${MENU_CELULARES}      //*[@id="__next"]/div/main/section[1]/div[2]/header/div/div[3]/nav/ul/li[3]/div[1]
*** Keywords ***

Abrir Navegador
    Open Browser     ${URL}         chrome         options=add_experimental_option("detach", True)


    Maximize Browser Window

Fechar Navegador
     Close Browser

Acessar a home page do site Magazine Luiza
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_CELULARES}

Entrar no menu celulares
    Click Element    locator=${MENU_CELULARES}