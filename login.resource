*** Settings ***

Library         SeleniumLibrary

*** Variables ***


${url}     https://opensource-demo.orangehrmlive.com/

*** Keywords ***

Abrir navegador
    Open Browser    ${url}        chrome
    Sleep            5

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



Clicar no botão logar
    Click Button    css=div.orangehrm-login-layout div.orangehrm-login-layout-blob div.orangehrm-login-container div.orangehrm-login-slot-wrapper div.orangehrm-login-slot div.orangehrm-login-form form.oxd-form div.oxd-form-actions.orangehrm-login-action:nth-child(4) > button.oxd-button.oxd-button--medium.oxd-button--main.orangehrm-login-button