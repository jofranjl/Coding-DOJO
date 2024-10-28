*** Settings ***
Library    SeleniumLibrary
*** Variables ***

${url}     https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Abrir navegador
    Open Browser    ${url}    firefox
    Set Browser Implicit Wait    5

Fechar navegador
    Close Browser

Informar usuário
    [Arguments]    ${login}
    Element Should Be Visible    name=username
    Input Text    name=username    ${login}

Informar senha
    [Arguments]    ${senha}
    Element Should Be Visible    name=password
    Input Text    name=password    ${senha}

Clicar no botão logar
    Click Button    css=div.orangehrm-login-layout div.orangehrm-login-layout-blob div.orangehrm-login-container div.orangehrm-login-slot-wrapper div.orangehrm-login-slot div.orangehrm-login-form form.oxd-form div.oxd-form-actions.orangehrm-login-action:nth-child(4) > button.oxd-button.oxd-button--medium.oxd-button--main.orangehrm-login-button

Validar mensagem de erro
    [Arguments]    ${mensagem}
    Element Should Be Visible    css=.oxd-text.oxd-text--p.oxd-alert-content-text
    Element Should Contain       css=.oxd-text.oxd-text--p.oxd-alert-content-text    ${mensagem}

Validar usuário
    [Arguments]    ${nome_usuario}
    Element Should Be Visible    css=.oxd-userdropdown-name   
    Element Should Contain   css=.oxd-userdropdown-name   ${nome_usuario}

Ir para alteração de senha
    Element Should Be Visible    css=.oxd-userdropdown-name   
    Click Element  css=.oxd-userdropdown-name
    Sleep    3
    Click Element    //a[contains(text(),"Change Password")]
    #Element Should Be Visible    //h6[contains(text(),"Update Password")]
    Element Should Be Visible    css=h6[class*='orangehrm-main-title']
    Element Should Contain   css=h6[class*='orangehrm-main-title']    Update Password    



