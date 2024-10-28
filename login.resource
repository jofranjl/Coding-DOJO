*** Settings ***

Library         SeleniumLibrary

*** Variables ***


${url}     https://opensource-demo.orangehrmlive.com/

*** Keywords ***


Tempo de espera
    Set Selenium Implicit Wait        10

Abrir navegador
    Open Browser    ${url}        chrome
    Tempo de espera

Fechar navegador
    Close Browser

Aguardar página carregar corretamente    
        Element Should Be Visible    css=h5
        Element Should Contain        css=h5    Login

Informar usuário
    [Arguments]    ${login}
    Input Text    name=username    ${login}


Informar senha
    [Arguments]    ${senha}
    Input Text    name=password    ${senha}

Login invalido
   Wait Until Page Contains      Invalid credentials  timeout=5

Clicar no botão logar
   ## Click Button    type=submit
    Click Element    css=button[type="submit"]


Aguardar até a busca estar visivel
    Wait Until Element Is Visible  css=input[placeholder="Search"]  timeout=10  # Aguarda o campo estar visível
    Input Text  css=input[placeholder="Search"]  Seu texto aqui  # Digita no campo

CLicar no avatar
    Click Element     css=.oxd-userdropdown-tab
    Sleep        5
    Click Element    css=button.oxd-button--secondary:contains('Save')