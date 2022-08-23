unit FUNCOESUNIDAC;

interface

uses
  Windows, Dialogs, Forms, Controls, SysUtils, Mask, stdCtrls,
  Classes, extCtrls, Buttons, Grids, Messages, ComCtrls,
  Registry, WinSpool, Printers, db, RXDBCtrl, MASKUTILS, Variants,
  comobj, Shellapi, Winsock, RxRichEd, DBCtrls, Math,
  MemDS, DBAccess, Uni, UniProvider, InterBaseUniProvider;

  procedure FiltroSql ( CampoConsulta,Tabela,DESCRICAO,opcao: String );
  procedure FiltroSqlConsulta ( CampoConsulta,Tabela,DESCRICAO,opcao: String );
  procedure CupomNovo;
  procedure OrigemDestinoItem(Origem, Destino :TUniQuery; CampoModifica,Modificacao:string;Quantidade,dias:integer);
  procedure OrigemDestino1(Origem, Destino :TUniQuery);
  procedure OrigemDestinoX(Origem, Destino :TUniQuery);
  procedure OrigemDestinoEdita(Origem, Destino :TUniQuery);
  procedure OrigemDestinoEditaChave(Origem, Destino :TUniQuery);
  procedure OrigemDestinoUnidac(Origem, Destino :TUniQuery);
  procedure OrigemDestinoUnidacID(Origem, Destino :TUniQuery);
  procedure OrigemDestinoUnidacCaixa(Origem, Destino :TUniQuery);
  procedure OrigemDestinoUnidacITEVENDAS_ECF2(Origem, Destino :TUniQuery);
  procedure OrigemDestinoUnidacChave(Origem, Destino :TUniQuery);
  procedure OrigemDestinoUnidacChaveCampo(Origem, Destino :TUniQuery; CampoNovo:string);
  procedure OrigemDestinoUnidacConsulta(Origem, Destino :TUniQuery; CampoConsulta:string);
  procedure FiltroSqlCodigo ( CampoConsulta,Tabela,Vcodigo: String );
  procedure FiltroItensCupomFuncao;
  procedure FiltroItensCupomFuncaoSoma;
  procedure FiltroItensItensVendaMes(DataInicial,DataFinal:tdatetime);
  // procedure FiltroItensCompra(CodigoInicial,CodigoFinal,documento:string;DataInicial,DataFinal:tdatetime);
  // procedure FiltroItensCompra(CodigoInicial,CodigoFinal,documento:string;DataInicial,DataFinal:tdatetime);
  procedure FiltroItensCompra(CodigoInicial,CodigoFinal,documento,Ordem:string;DataInicial,DataFinal:tdatetime);
  // procedure FiltroItensCompra2(CodigoInicial,CodigoFinal,documento,Ordem:string;DataInicial,DataFinal:tdatetime);
  procedure FiltroItensCompra2(CodigoInicial,CodigoFinal,documento1,documento2,Ordem:string;DataInicial,DataFinal:tdatetime);
  procedure FiltroItensVenda(CodigoInicial,CodigoFinal,documento,Ordem:string;DataInicial,DataFinal:tdatetime);
  procedure FiltroItensVenda2(DataInicial,DataFinal:tdatetime);
  // procedure FiltroItensCompra;
  procedure FiltroItensCupomRelatorio(CodigoVendedor:string;DataInicial,DataFinal:tdatetime);
  procedure FiltroSangriaSuprimento(SANGSUPR,HISTO_INICIAL,HISTO_FINAL:string;DataInicial,DataFinal:tdatetime);
  procedure FiltroSangriaSuprimentoSubHistorico(SANGSUPR,SubHistoricox:string;DataInicial,DataFinal:tdatetime);
  procedure FiltroItensCupomFuncao2;
  procedure FiltroItensContasReceber;
  procedure FiltroItensFormasPagamento;
  procedure FiltroItensFormasPagamentoContas;
  procedure FiltraQuery(QueryFiltro:TUniQuery;Tabela,Filtro:string);

implementation

uses PRINCIPAL, DADOSFRENTE, FUNCOES, FrentredeCaixa, dadosFinaceiro, CADASTROS,
  DADOSMOVIMENTO, CONSULTAS, CAD_MANUTENCAO;

procedure FiltroSql ( CampoConsulta,Tabela,DESCRICAO,opcao: String );
VAR CONDICAO, ORDEM :STRING;
begin
  if FiltraCampo<>'' then
    CONDICAO:='WHERE '+FiltraCampo+' and UPPER('+CampoConsulta+') LIKE :N'
  else if FiltraSemBarra<>'' then begin
    CONDICAO:='WHERE codigo LIKE barras and UPPER('+CampoConsulta+') LIKE :N';
  end
  else
    CONDICAO:='WHERE UPPER('+CampoConsulta+') LIKE :N';
  ORDEM:='order by '+CampoConsulta+','+CampoConsulta;

  Queere.Close;
  Queere.SQL.Clear;

  if GeralTodosCadastro='S' then
    Queere.SQL.Add('select * from '+Tabela)
  else
    Queere.SQL.Add('select first 100 * from '+Tabela);

  Queere.SQL.Add(CONDICAO);

  if opcao='1' then
    Queere.ParamByName('N').AsString := AnsiUpperCase(DESCRICAO)+'%'
  else if opcao='2' then
    Queere.ParamByName('N').AsString := '%'+AnsiUpperCase(DESCRICAO)+'%'
  else
    Queere.ParamByName('N').AsString := '%'+AnsiUpperCase(DESCRICAO);

  if Tabela='VEICULOS' then
    Queere.SQL.Add(' and CLIENTE='+CodigoConsulta);

  Queere.SQL.Add(ORDEM);
  Queere.Open;
end;

procedure FiltroSqlCodigo ( CampoConsulta,Tabela,Vcodigo: String );
begin
  Queere.Close;
  Queere.SQL.Clear;
  Queere.SQL.Add('Select * from '+Tabela+' where '+CampoConsulta+' like '+QuotedStr(Vcodigo));
  Queere.Open;
end;

procedure FiltroSqlConsulta ( CampoConsulta,Tabela,DESCRICAO,opcao: String );
VAR CONDICAO, ORDEM, FiltroCampo :STRING;
begin
  if FiltraCampo<>'' then
    CONDICAO:='WHERE '+FiltraCampo+' and UPPER('+CampoConsulta+') LIKE :N'
  else if FiltraSemBarra<>'' then begin
    CONDICAO:='WHERE codigo LIKE barras and UPPER('+CampoConsulta+') LIKE :N';
  end
  else
    CONDICAO:='WHERE UPPER('+CampoConsulta+') LIKE :N';
  ORDEM:='order by '+CampoConsulta+','+CampoConsulta;
  QueereConsulta.Close;
  QueereConsulta.SQL.Clear;
  if Tabela='VEICULOS' then
    QueereConsulta.SQL.Add('select * from '+Tabela)
  else begin
    if Tabela='PRODUTOS' then begin
      QueereConsulta.SQL.Add('select first 100 CODIGO,BARRAS,APELIDO,NOME,LOCALIZACAO,QTD,PRECO_CONS,ULTIMO_PRECO,UND_C,UND_V,DESCRICAO,GRUPO from '+Tabela);
      with QueereConsulta do begin
        TNumericField(QueereConsulta.FieldByName('PRECO_CONS')).DisplayFormat:='###,###,##0.00';
        tNumericField(QueereConsulta.FieldByName('QTD')).DisplayFormat:='###,###,##0.00';
      end;
    end
    else if Tabela='Clientes' then begin
       QueereConsulta.SQL.Add('select first 100 CODIGO,NOME,ENDERECO,CIDADE,NUMERO,BAIRRO,CEP,CNPJ,UF,CPF,IE,RG from '+Tabela);
    end
    else
      QueereConsulta.SQL.Add('select first 100 * from '+Tabela);
  end;
  QueereConsulta.SQL.Add(CONDICAO);
  if (ProdServi='S') and (Tabela='PRODUTOS') then
    FiltroCampo:=' and UND_C='+QuotedStr('SER')
  else if (ProdServi='P') and (Tabela='PRODUTOS') then
    FiltroCampo:=' and UND_C<>'+QuotedStr('SER');
  // if (FiltroVeiculo<>'') and (Tabela='VEICULOS') then
  if Tabela='VEICULOS' then
    FiltroCampo:=' and CLIENTE='+FiltroVeiculo;
  QueereConsulta.SQL.Add(FiltroCampo);
  if opcao='1' then
    QueereConsulta.ParamByName('N').AsString := AnsiUpperCase(DESCRICAO)+'%'
  else if opcao='2' then
    QueereConsulta.ParamByName('N').AsString := '%'+AnsiUpperCase(DESCRICAO)+'%'
  else
    QueereConsulta.ParamByName('N').AsString := '%'+AnsiUpperCase(DESCRICAO);
  QueereConsulta.SQL.Add(ORDEM);
  QueereConsulta.Open;
end;

procedure CupomNovo;
Var NumeroCaixa:string;
begin
  DADOSFRENTEf.CONF_PADRAO.Open;

  //  FRENTEDECAIXA // FiltroArquivodeVendas;

  DADOSFRENTEf.VENDAS_ECF2.Append;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('CANCELADO').AsInteger:=0;


  NumeroCaixa:=ParamStr(1);
  if COPY(ParamStr(1),6,2)='' then
    NumeroCaixa:='Caixa03';
    // NumeroCaixa:='Caixa05';
    // NumeroCaixa:='Caixa99';

  DADOSFRENTEf.VENDAS_ECF2.FieldByName('ABERTO').AsString:='A';
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('TERMINAL').AsString:=COPY(NumeroCaixa,6,2);

  DADOSFRENTEf.VENDAS_ECF2.Post;

  DADOSFRENTEf.VENDAS_ECF2.Edit;
  DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString:=StrZero(
    DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsInteger,9,0);

  DADOSFRENTEf.VENDAS_ECF2.FieldByName('N_CAIXA').AsString:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('CAIXA').AsString;

  DADOSFRENTEf.VENDAS_ECF2.FieldByName('TURNO').AsString:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('TURNO').AsString;

  DADOSFRENTEf.VENDAS_ECF2.FieldByName('DATA').AsDateTime:=
    DADOSFRENTEf.CONF_PADRAO.FieldByName('DATA').AsDateTime;

  DADOSFRENTEf.VENDAS_ECF2.Post;
  if not DADOSFRENTEf.VENDAS_ECF2.Eof then
    DADOSFRENTEf.VENDAS_ECF2.Last;
  DADOSFRENTEf.VENDAS_ECF2.Edit;
end;


procedure OrigemDestinoItem(Origem, Destino :TUniQuery; CampoModifica,Modificacao:string;Quantidade,dias:integer);
var i,QuaPar,DiasParcela:integer;
begin
  Origem.Open;
  destino.Open;
  for QuaPar:=1 to Quantidade do begin
    destino.Append;
    DiasParcela:=DiasParcela+dias;
    for i:=0 to origem.FieldCount -1 do begin
      if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
        if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
          destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
          if (CampoModifica<>'') and (origem.Fields[i].FieldName=CampoModifica) then begin
            if Modificacao='PARCELA' then begin
              destino.FieldByName(CampoModifica).Value:=StrZero(destino.FieldByName(origem.Fields[i].FieldName).asInteger+QuaPar,2,0);
              destino.FieldByName(origem.Fields[i].FieldName).asInteger;
            end;
          end;
          if (Modificacao='PARCELA') and (origem.Fields[i].FieldName='CONTROLE') then
            destino.FieldByName('CONTROLE').Value:=destino.FieldByName(origem.Fields[i].FieldName).asInteger+QuaPar;

          if (Modificacao='PARCELA') and (origem.Fields[i].FieldName='VENCIMENTO') then
            destino.FieldByName('VENCIMENTO').AsDateTime:=destino.FieldByName(origem.Fields[i].FieldName).AsDateTime+DiasParcela;
        end;
      end;
    end;
  end;
  destino.Post;
end;

procedure OrigemDestinoUnidac(Origem, Destino :TUniQuery);
var i:integer;
begin
  Origem.Open;
  Origem.First;
  destino.Open;
  if not Origem.isempty then begin
    while not Origem.Eof do begin
      destino.Append;
      for i:=0 to origem.FieldCount -1 do begin
        if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
          if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
            destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
          end;
        end;
      end;
      destino.Post;
      Origem.Next;
    end;
  end;
end;

procedure OrigemDestinoUnidacID(Origem, Destino :TUniQuery);
var i:integer;
begin
  Origem.Open;
  Origem.First;
  destino.Open;
  if not Origem.isempty then begin
    while not Origem.Eof do begin
      destino.Append;
      for i:=0 to origem.FieldCount -1 do begin
        if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
          if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
            if (origem.Fields[i].FieldName='ID') then begin

            end
            else
              destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
          end;
        end;
      end;
      destino.Post;
      Origem.Next;
    end;
  end;
end;

procedure OrigemDestinoUnidacCaixa(Origem, Destino :TUniQuery);
var i:integer;
begin
  Origem.Open;
  Origem.First;
  destino.Open;
  if not Origem.isempty then begin
    while not Origem.Eof do begin
      destino.Append;
      for i:=0 to origem.FieldCount -1 do begin
        if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
          if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
            destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
          end;
        end;
      end;
      destino.FieldByName('CAIXA').Value:=1;
      destino.Post;
      Origem.Next;
    end;
  end;
end;

procedure OrigemDestinoUnidacITEVENDAS_ECF2(Origem, Destino :TUniQuery);
var i:integer;
begin
  Origem.Open;
  Origem.First;
  destino.Open;
  if not Origem.isempty then begin
    while not Origem.Eof do begin
      destino.Append;
      for i:=0 to origem.FieldCount -1 do begin
        if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
          if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
            destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
          end;
        end;
      end;
      destino.FieldByName('CLIENTE').Value:=0;
      destino.Post;
      Origem.Next;
    end;
  end;
end;

procedure OrigemDestinoUnidacChave(Origem, Destino :TUniQuery);
var i:integer;
begin
  Origem.Open;
  destino.Open;
  if not Origem.isempty then begin
    while not Origem.Eof do begin
      destino.Append;
      for i:=0 to origem.FieldCount -1 do begin
        if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
          // if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
          // and (origem.Fields[i].FieldName<>'CODIGO')
          if (destino.Fields.FindField(origem.Fields[i].FieldName)<>nil)
          and (origem.Fields[i].FieldName<>'CODIGOX')
          and (origem.Fields[i].FieldName<>'ID')
          then begin
            destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
          end;
        end;
      end;
      destino.Post;
      Origem.Next;
    end;
  end;
end;

procedure OrigemDestinoUnidacChaveCampo(Origem, Destino :TUniQuery; CampoNovo:string);
var i:integer;
begin
  Origem.Open;
  destino.Open;
  if not Origem.isempty then begin
    while not Origem.Eof do begin
      destino.Append;
      for i:=0 to origem.FieldCount -1 do begin
        if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
          // if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
          // and (origem.Fields[i].FieldName<>'CODIGO')
          if (destino.Fields.FindField(origem.Fields[i].FieldName)<>nil)
          and (origem.Fields[i].FieldName<>'CODIGOX')
          and (origem.Fields[i].FieldName<>'ID')
          then begin
            if origem.Fields[i].FieldName=CampoNovo then
              destino.FieldByName(origem.Fields[i].FieldName).Value:=DADOSFRENTEf.VENDAS_ECF2.FieldByName(CampoNovo).Value
            else if (origem.Fields[i].FieldName='DESCONTORAT') or  (origem.Fields[i].FieldName='ACRESCIMORAT') then
              destino.FieldByName(origem.Fields[i].FieldName).Value:=0
            else
              destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
          end;
        end;
      end;
      destino.Post;
      Origem.Next;
    end;
  end;
end;


procedure OrigemDestinoUnidacConsulta(Origem, Destino :TUniQuery; CampoConsulta:string);
var i:integer;
begin
  Origem.Open;
  destino.Open;
  while not Origem.Eof do begin
    if destino.Locate(CampoConsulta,origem.FieldByName(CampoConsulta).AsString,[]) then begin
      destino.Edit;
      for i:=0 to origem.FieldCount -1 do begin
        if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
          if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
            destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
          end;
        end;
      end;
      destino.Post;
    end;
    Origem.Next;
  end;
end;

procedure OrigemDestino1(Origem, Destino :TUniQuery);
var i:integer;
begin
  destino.Append;
  for i:=0 to origem.FieldCount -1 do begin
    if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
      if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
        destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
      end;
    end;
  end;
  destino.Post;
  Origem.Next;
end;

procedure OrigemDestinoX(Origem, Destino :TUniQuery);
var i:integer;
begin
  destino.Append;
  for i:=0 to origem.FieldCount -1 do begin
    if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
      if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
        destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
      end;
    end;
  end;
  destino.Post;
  // Origem.Next;
end;

procedure OrigemDestinoEdita(Origem, Destino :TUniQuery);
var i:integer;
begin
  // destino.Append;
  for i:=0 to origem.FieldCount -1 do begin
    if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
      if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
        destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
      end;
    end;
  end;
  // destino.Post;
  // Origem.Next;
end;

procedure OrigemDestinoEditaChave(Origem, Destino :TUniQuery);
var i:integer;
begin
  // destino.Append;
  for i:=0 to origem.FieldCount -1 do begin
    if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
      // if (destino.Fields.FindField(origem.Fields[i].FieldName)<>nil) then begin
      if (destino.Fields.FindField(origem.Fields[i].FieldName)<>nil)
      and (origem.Fields[i].FieldName<>'CODIGO')
      and (origem.Fields[i].FieldName<>'CODIGOX')
      and (origem.Fields[i].FieldName<>'ID')
      then begin
        destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
      end;
    end;
  end;
  // destino.Post;
  // Origem.Next;
end;

{
procedure OrigemDestinoEditaChave(Origem, Destino :TUniQuery);
var i:integer;
begin
  // destino.Append;
  for i:=0 to origem.FieldCount -1 do begin
    if (origem.Fields[i].DataType<>ftAutoInc) or (destino.Fields[i].DataType<>ftAutoInc) then begin
      // if destino.Fields.FindField(origem.Fields[i].FieldName)<>nil then begin
      if (destino.Fields.FindField(origem.Fields[i].FieldName)<>nil)
      OR (origem.Fields[i].FieldName<>'CODIGO')
      OR (origem.Fields[i].FieldName<>'CODIGOX')
      OR (origem.Fields[i].FieldName<>'ID')
      then begin
        destino.FieldByName(origem.Fields[i].FieldName).Value:=origem.Fields[i].Value;
      end;
    end;
  end;
  // destino.Post;
  // Origem.Next;
end;
}

procedure FiltroItensCupomRelatorio(CodigoVendedor:string;DataInicial,DataFinal:tdatetime);
begin
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Close;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('SELECT * FROM ITEVENDAS_ECF2 WHERE ' +
    'DATA>= :_dataini and DATA<= :_dataFin and VENDEDOR='+Quotedstr(CodigoVendedor));
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataini').asdatetime := DataInicial;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataFin').asdatetime := DataFinal;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Open;
end;

procedure FiltroSangriaSuprimento(SANGSUPR,HISTO_INICIAL,HISTO_FINAL:string;DataInicial,DataFinal:tdatetime);
begin
  DADOSFRENTEf.CAIXA_REL.Close;
  DADOSFRENTEf.CAIXA_REL.SQL.Clear;
  DADOSFRENTEf.CAIXA_REL.SQL.Add('SELECT * FROM CAIXA WHERE '+
  ' DATA>= :_dataini and DATA<= :_dataFin'+
  ' and HISTORICO>='+QuotedStr(HISTO_INICIAL)+' and HISTORICO<='+QuotedStr(HISTO_FINAL)+
  ' and SANGSUPR='+QuotedStr(SANGSUPR));

  DADOSFRENTEf.CAIXA_REL.ParamByName('_dataini').asdatetime := DataInicial;
  DADOSFRENTEf.CAIXA_REL.ParamByName('_dataFin').asdatetime := DataFinal;
  DADOSFRENTEf.CAIXA_REL.Open;
end;

procedure FiltroSangriaSuprimentoSubHistorico(SANGSUPR,SubHistoricox:string;DataInicial,DataFinal:tdatetime);
begin
  DADOSFRENTEf.CAIXA_REL.Close;
  DADOSFRENTEf.CAIXA_REL.SQL.Clear;
  DADOSFRENTEf.CAIXA_REL.SQL.Add('SELECT * FROM CAIXA WHERE '+
  ' DATA>= :_dataini and DATA<= :_dataFin'+
  ' and SUBHISTORICO='+QuotedStr(SubHistoricox)+
  ' and SANGSUPR='+QuotedStr(SANGSUPR));

  DADOSFRENTEf.CAIXA_REL.ParamByName('_dataini').asdatetime := DataInicial;
  DADOSFRENTEf.CAIXA_REL.ParamByName('_dataFin').asdatetime := DataFinal;
  DADOSFRENTEf.CAIXA_REL.Open;
end;

procedure FiltroItensCupomFuncao;
begin
  if DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString<>'' then begin
    DADOSFRENTEf.ITEVENDAS_ECF2.Close;
    DADOSFRENTEf.ITEVENDAS_ECF2.SQL.Clear;
    DADOSFRENTEf.ITEVENDAS_ECF2.SQL.Add('Select * from ITEVENDAS_ECF2 where ' +
      'cupom='+DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString);
    DADOSFRENTEf.ITEVENDAS_ECF2.Open;
  end;
end;

procedure FiltroItensCupomFuncaoSoma;
begin
  if DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString<>'' then begin
    DADOSFRENTEf.ITEVENDAS_ECF2SOMA.Close;
    DADOSFRENTEf.ITEVENDAS_ECF2SOMA.SQL.Clear;
    DADOSFRENTEf.ITEVENDAS_ECF2SOMA.SQL.Add('Select SUM(TOTAL) as TotalGeralSql from ITEVENDAS_ECF2 where ' +
      'cupom='+DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString);
    DADOSFRENTEf.ITEVENDAS_ECF2SOMA.Open;
    // DADOSFRENTEf.ITEVENDAS_ECF2SOMA.FieldByName('TotalGeralSql').AsFloat;
  end;
end;

procedure FiltroItensItensVendaMes(DataInicial,DataFinal:tdatetime);
begin
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Close;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('SELECT * FROM ITEVENDAS_ECF2 WHERE '+
    'DATA>= :_dataini and DATA<= :_dataFin ');

  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataini').asdatetime := DataInicial;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataFin').asdatetime := DataFinal;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Open;
end;


procedure FiltroItensCompra(CodigoInicial,CodigoFinal,documento,Ordem:string;DataInicial,DataFinal:tdatetime);
begin
  if documento<>'' then begin
    DADOSMOVIMENTOF.ITECOMPRAS_REL.Close;
    DADOSMOVIMENTOF.ITECOMPRAS_REL.SQL.Clear;
    DADOSMOVIMENTOF.ITECOMPRAS_REL.SQL.Add('Select * from ITECOMPRAS where ' +
    ' EMISSAO>= :_dataini and EMISSAO<= :_dataFin'+
    ' and CODIGO>='+QuotedStr(CodigoInicial)+' and CODIGO<='+QuotedStr(CodigoFinal)+
    ' and NOTA='+documento+' Order by '+Ordem);
  end;
  if documento='' then begin
    DADOSMOVIMENTOF.ITECOMPRAS_REL.Close;
    DADOSMOVIMENTOF.ITECOMPRAS_REL.SQL.Clear;
    DADOSMOVIMENTOF.ITECOMPRAS_REL.SQL.Add('Select * from ITECOMPRAS where ' +
    ' EMISSAO>= :_dataini and EMISSAO<= :_dataFin'+
    ' and CODIGO>='+QuotedStr(CodigoInicial)+' and CODIGO<='+QuotedStr(CodigoFinal)+
    ' Order by '+Ordem);
  end;
  DADOSMOVIMENTOF.ITECOMPRAS_REL.ParamByName('_dataini').asdatetime := DataInicial;
  DADOSMOVIMENTOF.ITECOMPRAS_REL.ParamByName('_dataFin').asdatetime := DataFinal;
  DADOSMOVIMENTOF.ITECOMPRAS_REL.Open;
end;

procedure FiltroItensCompra2(CodigoInicial,CodigoFinal,documento1,documento2,Ordem:string;DataInicial,DataFinal:tdatetime);
begin
  if (documento1<>'') and (documento2<>'') then begin
    DADOSMOVIMENTOF.ITECOMPRAS_REL.Close;
    DADOSMOVIMENTOF.ITECOMPRAS_REL.SQL.Clear;
    DADOSMOVIMENTOF.ITECOMPRAS_REL.SQL.Add('Select * from ITECOMPRAS where ' +
    ' EMISSAO>= :_dataini and EMISSAO<= :_dataFin'+
    ' and CODIGO>='+QuotedStr(CodigoInicial)+' and CODIGO<='+QuotedStr(CodigoFinal)+
    ' and NOTA>='+documento1+' and  NOTA<='+documento2+' Order by '+Ordem);
  end;
  if (documento1='') and (documento2='') then begin
    DADOSMOVIMENTOF.ITECOMPRAS_REL.Close;
    DADOSMOVIMENTOF.ITECOMPRAS_REL.SQL.Clear;
    DADOSMOVIMENTOF.ITECOMPRAS_REL.SQL.Add('Select * from ITECOMPRAS where ' +
    ' EMISSAO>= :_dataini and EMISSAO<= :_dataFin'+
    ' and CODIGO>='+QuotedStr(CodigoInicial)+' and CODIGO<='+QuotedStr(CodigoFinal)+
    ' Order by '+Ordem);
  end;
  DADOSMOVIMENTOF.ITECOMPRAS_REL.ParamByName('_dataini').asdatetime := DataInicial;
  DADOSMOVIMENTOF.ITECOMPRAS_REL.ParamByName('_dataFin').asdatetime := DataFinal;
  DADOSMOVIMENTOF.ITECOMPRAS_REL.Open;
end;

procedure FiltroItensVenda(CodigoInicial,CodigoFinal,documento,Ordem:string;DataInicial,DataFinal:tdatetime);
begin
  if documento<>'' then begin
    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Close;
    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('Select * from ITEVENDAS_ECF2 where ' +
    ' DATA>= :_dataini and DATA<= :_dataFin'+
    ' and CODIGO>='+QuotedStr(CodigoInicial)+' and CODIGO<='+QuotedStr(CodigoFinal)+
    ' and CUPOM='+documento+' Order by '+Ordem);
  end;
  if documento='' then begin
    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Close;
    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('Select * from ITEVENDAS_ECF2 where ' +
    ' DATA>= :_dataini and DATA<= :_dataFin'+
    ' and CODIGO>='+QuotedStr(CodigoInicial)+' and CODIGO<='+QuotedStr(CodigoFinal)+
    ' Order by '+Ordem);
  end;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataini').asdatetime := DataInicial;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataFin').asdatetime := DataFinal;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Open;
end;


procedure FiltroItensVenda2(DataInicial,DataFinal:tdatetime);
begin
  // if documento='' then begin
    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Close;
    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
    DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('Select * from ITEVENDAS_ECF2 where ' +
    ' DATA>= :_dataini and DATA<= :_dataFin'+
    ' Order by CODIGOX');
  // end;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataini').asdatetime := DataInicial;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.ParamByName('_dataFin').asdatetime := DataFinal;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Open;
end;



procedure FiltroItensCupomFuncao2;
begin
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Close;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Clear;
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.SQL.Add('Select * from ITEVENDAS_ECF2 where ' +
    'cupom='+DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString);
  DADOSFRENTEf.ITEVENDAS_ECF2_Rel.Open;
end;

procedure FiltroItensFormasPagamento;
begin
  DADOSFRENTEf.DiversasFormas.CachedUpdates:=true;
  DADOSFRENTEf.DiversasFormas.Close;
  DADOSFRENTEf.DiversasFormas.SQL.Clear;
  DADOSFRENTEf.DiversasFormas.SQL.Add('Select * from DiversasFormas where CUPOM='+DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString);
  DADOSFRENTEf.DiversasFormas.Open;
  DADOSFRENTEf.DiversasFormas.Refresh;
end;

procedure FiltroItensFormasPagamentoContas;
begin
  DADOSFRENTEf.DiversasFormas.Close;
  // DADOSFRENTEf.DiversasFormas.open;
  DADOSFRENTEf.DiversasFormas.SQL.Clear;
  DADOSFRENTEf.DiversasFormas.SQL.Add('Select * from DiversasFormas where CUPOM='+Quotedstr('999999999'));
  DADOSFRENTEf.DiversasFormas.Open;
  DADOSFRENTEf.DiversasFormas.Refresh;
end;

procedure FiltroItensContasReceber;
begin
  DataFinanceiro.RECEBER.Close;
  DataFinanceiro.RECEBER.SQL.Clear;
  // DataFinanceiro.RECEBER.SQL.Add('Select * from RECEBER where NUMERO='+DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString);
  DataFinanceiro.RECEBER.SQL.Add('Select * from RECEBER where NUMERO='+DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString+
  'and EMISSAO= :_data');
  DataFinanceiro.RECEBER.ParamByName('_data').asdatetime := DADOSFRENTEf.VENDAS_ECF2.FieldByName('DATA').asdatetime;
  DataFinanceiro.RECEBER.Open;
  DataFinanceiro.RECEBER.Refresh;
end;

procedure FiltraQuery(QueryFiltro:TUniQuery;Tabela,Filtro:string);
begin
  QueryFiltro.Close;
  QueryFiltro.SQL.Clear;
  QueryFiltro.SQL.Add('SELECT * FROM '+Tabela+' WHERE CODIGO='+Filtro);
  QueryFiltro.open;
  QueryFiltro.refresh;
end;

end.
