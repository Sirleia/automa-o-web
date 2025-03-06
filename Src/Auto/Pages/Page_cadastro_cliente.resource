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
    Wait Until Element Contains    xpath=//*[@id="swal2-html-container"]    Bem-vindo Sirleia Teste automação     
    Click Element    xpath=/html/body/div[2]/div/div[6]/button[1]     
    Sleep    3s

    ########### Cenario 3
Aguardar o elemento de texto login
    Wait Until Element Is Visible    //*[@id="top_header"]/div/div/div[2]/div/ul/li[1]/a    5s

Deve clicar no campo Login
    Click Element    //*[@id="top_header"]/div/div/div[2]/div/ul/li[1]/a

Deve validar campo "login"
    Wait Until Element Contains    xpath=//*[@id="login_area"]/div/div/div/div/h3    Login
    
 Aguardar campo e-mail visivel
    Wait Until Element Is Visible     xpath=//*[@id="user"]    10s

Digitar e-mail
    Input Text    xpath=//*[@id="user"]    teste@teste.com.br 
    Scroll Element Into View    xpath=//*[@id="password"]   
    Sleep    3s

Digitar senha
    Input text    xpath=//*[@id="password"]    123456
    Sleep    3s 
        
Clicar em lembrar de mim
    Click Element    xpath=//*[@id="materialUnchecked"]
    Sleep    3s
Clicar em Login    
    Click Element    xpath=//*[@id="btnLogin"]
    Sleep    5s


