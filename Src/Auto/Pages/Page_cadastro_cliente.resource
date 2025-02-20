*** Settings ***


*** Variables ***
${texto_cadastr_sucesso}    Cadastro realizado!
${NOME DO USUARIO}    Bem-vindo Sirleia Teste automação

*** keywords ***
Deve conter o title title do site Site
    Title Should be    QAZANDO Shop E-Commerce
    Sleep    3s

#####################  Cenário 02   ####################
Aguardar o elemento de texto clicavel esteja visível
    Wait Until Element Is Visible    xpath=//*[@id="top_header"]/div/div/div[2]/div/ul/li[2]/a    10s

Deve poder clicar no texto clicavel {cadastro}
    Click Element    xpath=//*[@id="top_header"]/div/div/div[2]/div/ul/li[2]/a
    Sleep    3s

Validando se a tela é a correta Titulo da tela cadastro_de_usuario
    Wait Until Element Contains    xpath=//*[@id="login_area"]/div/div/div/div/h3    Cadastro de usuário 

Aguardar o elemento do campo Nome ficar visível
    Wait Until Element Is Visible    xpath=//*[@id="user"]    10s

Deve poder digitar no campo Nome
    Input Text    xpath=//*[@id="user"]    Sirleia Teste automação
    Sleep    3s

Deve poder digitar no campo E-mail
    Input Text    xpath=//*[@id="email"]    sirleiadaiane@yahoo.com.br
    Sleep    3s

Deve poder digitar no campo Senha
    Input Text     xpath=//*[@id="password"]    sirleiateste123456

    Scroll Element Into View    xpath=//*[@id="btnRegister"]
    Sleep    3s

Deve poder clicar no botão {cadastrar}
    Click Element    xpath=//*[@id="btnRegister"]
    Sleep    3s    

Deve validar o sucesso do cadastro
    ${COMPARAR}    Get Text    xpath=//*[@id="swal2-title"]
    Log    ${COMPARAR}     
    Should Be Equal As Strings    ${texto_cadastr_sucesso}    ${COMPARAR}
#### TEm uma div class como se fosse dentro do h2. como fazer?
   #${COMPARAR BEM VINDO}    Get Text    xpath=//*[@id="swal2-title"]
   #Log    ${COMPARAR BEM VINDO}
   #Should Be Equal As Strings    ${COMPARAR BEM VINDO}    ${NOME DO USUARIO}        
   ## falta descrever o botão ok e e validar a pagina que ficou