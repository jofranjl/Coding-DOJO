*** Settings ***


Resource        ./login.resource

Test Setup      login.Abrir navegador
Test Teardown   login.Fechar navegador

*** Test Cases ***
FARM-LXI-1234   # Teste validação de login
    [Tags]      Alto    Login
    Aguardar página carregar corretamente
    Informar usuário    Admin
    Informar senha      admin123
    Clicar no botão logar

FARM-LXI-1234   # Teste validação de login incorreto
    [Tags]      Alto    Login
    Aguardar página carregar corretamente
    Informar usuário    Admin
    Informar senha      admin12
    Clicar no botão logar
    Sleep    5
    Login invalido    


FARM-LXI-12345-Pagina de busca
    Aguardar página carregar corretamente
    Informar usuário    Admin
    Informar senha      admin123
    Clicar no botão logar
    Aguardar até a busca estar visivel


FARM-LXI-12345-Mudar senha
    Aguardar página carregar corretamente
    Informar usuário    Admin
    Informar senha      admin123
    Clicar no botão logar
    Aguardar até a busca estar visivel
    CLicar no avatar


