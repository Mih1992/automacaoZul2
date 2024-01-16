*** Settings ***
Resource    resource.robot

*** Test Cases ***
Cenário01: Abertura de Movimento Diário
     Gerar Data Aleatória Menor Que Atual      
     ${response} =    Fazer Requisicao POST MVDiario 
     Log    ${response.status_code}
     Log    ${response.json()}  
     ${data_response}    Get Value From Json    ${response.json()}[data]    [id]
     ${IDMVDiario}    Get From List  ${data_response}    0
     Set Global Variable    ${IDMVDiario}
     
     



Cenário02: Criação de Lote
    ${response} =    Fazer Requisicao POST Criação De Lote 
    Log    ${response.status_code}
    Log    ${response.json()}
    


 Cenário03: Consulta de Lote 
    ${response} =    Fazer Consulta GET Consulta de Lote
    Log    ${response.status_code}
    Log    ${response.json()}
    


 Cenário04: Consulta de Movimento Diario
    ${response} =    Fazer Consulta GET Consulta de Movimento Diario
    Log    ${response.status_code}
    Log    ${response.json()}


 Cenário05: Fechamento de Movimento Diario
    ${response} =    Fazer Requisicao POST Fechamento de Movimento Diario
    Log    ${response.status_code}
    Log    ${response.json()}


 Cenário06: Consulta de Movimento Diario Após Fechado 
    ${response} =    Fazer Consulta GET Consulta de Movimento Diario Após Fechado
    Log    ${response.status_code}
    Log    ${response.json()}


 Cenário06: Consulta de Movimento Diario Após Fechado 
    ${response} =    Fazer Consulta GET Consulta de Movimento Diario Após Fechado
    Log    ${response.status_code}
    Log    ${response.json()}
