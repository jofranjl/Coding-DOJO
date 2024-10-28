*** Settings ***

Library          SeleniumLibrary

Resource         ./login.resource

Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
FARM-LXI-1234   # Teste validação de login
    [Documentation]     Teste validação de login com credencias inválidas
    [Tags]      Alto    Login
    Informar usuário    X
    Informar senha      X
    Clicar no botão logar
    Validar mensagem de erro    Invalid credentials


FARM-LXI-1235    # Teste validação login válido
    [Documentation]      Teste validação de login com credenciais válidas
    [Tags]      Alto    Login
    Informar usuário    Admin
    Informar senha    admin123
    Clicar no botão logar
    Validar usuário    FirstNameTest LastNameTest

FARM-LXI-1236    # Teste validação alteração de senha
    [Documentation]      Teste validação de alteração de senha
    [Tags]      Alto   senha
    Informar usuário    Admin
    Informar senha    admin123
    Clicar no botão logar
    Ir para alteração de senha
    