*** Settings ***


Resource        ./login.resource

Test Setup      login.Abrir navegador
Test Teardown   login.Fechar navegador

*** Test Cases ***
FARM-LXI-1234   # Teste validação de login
    [Tags]      Alto    Login
    Aguardar página carregar corretamente
    Informar usuário    X
    Informar senha      X
    Clicar no botão logar
