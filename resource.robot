*** Settings ***
Library            OperatingSystem
Library            String
Library            DateTime
Library            RequestsLibrary
Library            Collections
Library            JSONLibrary
Resource           test.robot

*** Variables ***


*** Keywords ***
Fazer Requisicao POST MVDiario
    ${url} =    Set Variable    http://movimentodiarioapi.estaparqa.corp
    ${endpoint}=  Set Variable  api/v1/MovimentoDiario
    ${headers} =    Create Dictionary    Accept=*
    ${data} =    Create Dictionary    dataMovimento=11/01/2024 00:00:00    garagem=3328
    Create Session    alias=MVDiario    url=${url}    headers=${headers}
    ${response} =    POST On Session  MVDiario    /${endpoint}    json=${data}    headers=${headers}
    [Return]    ${response}


Fazer Requisicao POST Criação De Lote
    ${url} =    Set Variable    http://movimentodiarioapi.estaparqa.corp
    ${endpoint}=  Set Variable  api/v1/MovimentoDiario/${IDMVDiario}/lote
    ${headers} =    Create Dictionary    Accept=*    Content-Type=application/json
    Create Session    alias=CriarLote    url=${url}   headers=${headers}
    ${body}=    Load Json From File    data/criacaoLote.json
    Update Value To Json   ${body}    idMovimento    ${IDMVDiario}
    ${response} =    POST On Session  CriarLote    /${endpoint}  json=${body}     headers=${headers}
    [Return]    ${response}

    Sleep    3s

Fazer Consulta GET Consulta de Lote
    ${url} =    Set Variable    http://movimentodiarioapi.estaparqa.corp
    ${endpoint}=  Set Variable  api/v1/MovimentoDiario/${IDMVDiario}/lote
    ${headers} =    Create Dictionary    Accept=*
    Create Session    alias=ConsultaLote    url=${url}   headers=${headers}
    ${response} =    GET On Session  ConsultaLote    /${endpoint}      headers=${headers}
    [Return]    ${response}

    Sleep    3s


Fazer Consulta GET Consulta de Movimento Diario
    ${url} =    Set Variable    http://movimentodiarioapi.estaparqa.corp
    ${endpoint}=  Set Variable  api/v1/MovimentoDiario/${IDMVDiario}
    ${headers} =    Create Dictionary    Accept=*
    Create Session    alias=ConsultaMovimento   url=${url}   headers=${headers}
    ${response} =    GET On Session  ConsultaMovimento    /${endpoint}      headers=${headers}
    [Return]    ${response}

    Sleep    3s


Fazer Requisicao POST Fechamento de Movimento Diario
    ${url} =    Set Variable    http://movimentodiarioapi.estaparqa.corp
    ${endpoint}=  Set Variable  /api/v1/MovimentoDiario/${IDMVDiario}/fechamento
    ${headers} =    Create Dictionary    Accept=*
    Create Session    alias=FechamentoMovimento    url=${url}    headers=${headers}
    ${response} =    POST On Session  FechamentoMovimento    /${endpoint}     headers=${headers}
    [Return]    ${response}

    Sleep    3s

Fazer Consulta GET Consulta de Movimento Diario Após Fechado
    ${url} =    Set Variable    http://movimentodiarioapi.estaparqa.corp
    ${endpoint}=  Set Variable  api/v1/MovimentoDiario/${IDMVDiario}
    ${headers} =    Create Dictionary    Accept=*
    Create Session    alias=ConsultaMovimento   url=${url}   headers=${headers}
    ${response} =    GET On Session  ConsultaMovimento    /${endpoint}      headers=${headers}
    [Return]    ${response}
  
    Sleep    7s
    
