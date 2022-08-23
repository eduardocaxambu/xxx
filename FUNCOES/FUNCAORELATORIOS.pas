unit FUNCAORELATORIOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RxCalc, DBCtrls, ComCtrls, Buttons,
  ExtCtrls, StdCtrls, Mask, RXToolEdit, RXDBCtrl, Uni, UniProvider,
  MaskUtils, DateUtils, InterBaseUniProvider;

  procedure RelVeiculos;
  procedure ImpCompras;
  procedure RelFORNE(Tabela:TUniQuery);
  Procedure ImpriOS();
  Procedure ImprOrcamento;
  // Procedure ImprPedido;
  // Procedure ImprPedido(ClienteFornecedorx,PedidoEntradaSaida:TUniQuery;ItemEntradaSaida:TUniTable);
  Procedure ImprPedido(ClienteFornecedorx:TUniTable;PedidoEntradaSaida,ItemEntradaSaida:TUniQuery);
  procedure RelVeiculos2;
  procedure ImpCompras2(Placa:string);
  procedure Recibo2(valor,DebAnterior:double;CodigoCliente,Emi01,Emi02,Emi03,Referente,LancamentoCaixa,Lancamento:string);
  procedure ReciboCaixa(valor:double;Rec01,Rec02,Emi01,Emi02,Emi03,Referente,SanSupDev,LancamentoCaixa:string);
  procedure RelatoriodeCaixa(DataInicial,DataFinal,CaixaInicial,Caixafinal,PeridoInicial,ReceitasDespesas:string;
                             CaixaVista,SangriaSuprimento,Analitico:boolean);

  // procedure RelSimples2(ejoc: String);
  procedure RelSimples2(listaImpressao:TListBox;QuantidadeLinhasLista:integer);

// var
  // Ref : array[0..200] of string;
  // ReferenteDuplicata, FiltPortador ,vMenRec: string;
  // Credito :double;

implementation


uses FUNCOES, DADOS_CADASTROS, MENSPROC, Relatorios, PREVIEW,
  PRINCIPAL, dadosOBJETOS, DADOS_CONSULTAS, DADOSFRENTE, FrentredeCaixa,
  dadosFinaceiro, FUNCOESUNIDAC, FUNCOESGERAIS, EXTENSO, VISUALIZACAO,
  CAD_MANUTENCAO, DADOSMOVIMENTO;

procedure RelVeiculos;
  var Pag ,nLin: Integer;
    Tipo: String;
  procedure Cabecalho;
  begin
    Imp_InicializaPagina;
    // Imp_Linha(01, 00, DADOS_CADASTROSf.emitente.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.emitente.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DADOS_CADASTROSf.emitente.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 24, 'Folha', 6, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 00, '                  RELATORIO DE VEICULOS DE CLIENTES POR ORDEM DE CODIGO                 ', 87, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 87), 87, 'E');
    Imp_Linha(01, 00, 'COD. *----------------CLIENTE----------------* *--------------DESCRICAO---------------*', 87, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 87), 87, 'E');
    nLin:=nLin + 7;
  end;
begin
  DADOS_CADASTROSf.emitente.Open;
  with TVISUALIZACAOF.Create(nil) do begin
    // ShowModal;
    DADOS_CADASTROSf.VEICULOSrel.Open;
    DADOS_CADASTROSf.VEICULOSrel.First;
    if CheckBox1.Checked=true then
      Tipo:='RAW'   // Dica: Imprime com matricial Epson mais rápido
    else
      Tipo:='TEXT'; // Dica: Funciona para impressora USB
    if Imp_Inicio( Label1.Caption, 'Impressão de dados - EJOC SISTEMAS !!!', Tipo, CheckBox1.Checked) then
    begin
      nLin:=0;
      Pag :=1;
      while not DADOS_CADASTROSf.VEICULOSrel.Eof do begin
        if nLin=0 then begin
          Cabecalho;
        end;
        Imp_Linha(01, 00, DADOS_CADASTROSf.VEICULOSrel.FieldByName('CLIENTE').AsString, 5, 'E');
        // Imp_Linha(00, 01, DADOS_CADASTROSf.VEICULOSrel.FieldByName('clinome').AsString, 40, 'E');
        DADOS_CADASTROSf.ClientesRel.Open;
        // DADOS_CADASTROSf.ClientesRel.IndexFieldNames:='CODIGO';
        DADOS_CADASTROSf.ClientesRel.Locate('CODIGO',DADOS_CADASTROSf.VEICULOSrel.FieldByName('CLIENTE').AsString,[]);
        // Imp_Linha(00, 01, DADOS_CADASTROSf.VEICULOSrel.FieldByName('descri').AsString, 40, 'E');
        Imp_Linha(00, 01, DADOS_CADASTROSf.ClientesRel.FieldByName('NOME').AsString, 40, 'E');
        DADOS_CADASTROSf.ClientesRel.Close;
        Imp_Linha(00, 02, DADOS_CADASTROSf.VEICULOSrel.FieldByName('NOME').AsString, 40, 'E');
        Inc( nLin );
        if nLin >= 60 then begin
          // Imp_Linha(02, 00, DADOS_CADASTROSf.emitente.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.emitente.FieldByName('NOME').AsString+'- Av. OSWALDO CRUZ, 1049, CENTRO, CEP 37.190-000, TRES PONTAS, MG - FONE/FAX: (035)265-2699 -' , 6, 'E');
          Imp_Ejeta;
          nLin:=0;
          Pag :=Pag+1;
        end;
        DADOS_CADASTROSf.VEICULOSrel.Next;
      end;
      Imp_Ejeta;
      Imp_Fim;
      // ShowModal;
    end;
    MENSPROCF.Close;
  end;
end;

procedure ImpCompras;
var
  Pag,nLin:Integer;
  Tipo, Hora, Dia :String;
  Total, TotalGeral, QuantidadeTotal, TotalPercentual, TotGeralX :Double;

  procedure Cabecalho;
  begin
    Definevarpubl();
    Imp_InicializaPagina;
    Imp_Linha(01, 00, ACondensa5+DADOS_CADASTROSf.emitente.FieldByName('NOME').AsString  , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 51, 'Folha', 06, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 00, PADC('RELATORIO DE MAIOR PICO',79), 60, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 79), 79, 'E');
    Imp_Linha(01, 00, '*-HORA-*   *-QUANTIDADE-*  *-PERCENTUAL-*  *-QUANT. GERAL-*  *PERCENTUAL GERAL*', 49, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 79), 79, 'E');
    nLin:=nLin + 6;
  end;

  procedure Relatorio;
  begin
    nLin:=0;
    Pag:=1;
    {
    GERAL_VE_SER.Open;
    GERAL_VE_SER.IndexFieldNames:='VEI_PLACA;VEI_LANCAM';
    GERAL_VE_SER.SetRange([Edit11.Text],[Edit11.Text]);
    GERAL_VE_SER.Last;
    PADCLIEN.Open;
    PADCLIEN.IndexFieldNames:='CLI_CODIGO';
    PADVENDA.Open;
    PADPRODU.Open;
    if not GERAL_VE_SER.IsEmpty then begin
      while True do begin
        PADCLIEN.Locate('CLI_CODIGO',GERAL_VE_SER.FieldByName('VEI_CODCLI').AsString,[]);
        Imp_Linha(01, 00, 'Lanc.: '+GERAL_VE_SER.FieldByName('VEI_LANCAM').AsString+'-'+GERAL_VE_SER.FieldByName('VEI_CODCLI').AsString+'-'+PADCLIEN.FieldByName('CLI_NOME').AsString,60, 'E');
        // Imp_Linha(01, 00, 'Veículo.: '+GERAL_VE_SER.FieldByName('VEI_VEICULO').AsString+' - Placa.: '+FormatMaskText('###-####;0; ',GERAL_VE_SER.FieldByName('VEI_PLACA').AsString)+' - KM Incial.: '+FormatFloat('###,##0.00', GERAL_VE_SER.FieldByName('VEI_KM').AsFloat)+' - KM Final.: '+FormatFloat('###,##0.00', GERAL_VE_SER.FieldByName('VEI_KM_F').AsFloat),12, 'D');
        PADVENDA.SetRange([GERAL_VE_SER.FieldByName('VEI_LANCAM').AsString],[GERAL_VE_SER.FieldByName('VEI_LANCAM').AsString]);
        Imp_Linha(01, 00, 'Data.: '+PADVENDA.fieldbyname('VE_DATEMI').AsString+' - Veículo.: '+GERAL_VE_SER.FieldByName('VEI_VEICULO').AsString+' - Placa.: '+FormatMaskText('###-####;0; ',GERAL_VE_SER.FieldByName('VEI_PLACA').AsString)+' - KM Incial.: '+FormatFloat('###,##0.00', GERAL_VE_SER.FieldByName('VEI_KM').AsFloat)+' - KM Final.: '+FormatFloat('###,##0.00', GERAL_VE_SER.FieldByName('VEI_KM_F').AsFloat),12, 'D');
        TotGeralX:=0;
        while not PADVENDA.Eof do begin
          PADPRODU.Locate('PRO_CODIGO',PADVENDA.FieldByName('VE_CodPro').AsString,[]);
          if fileexists('BARPED.TXT') then
            Imp_Linha(01, 00, ACondensa5+TiraZerosAEsquera(PADPRODU.FieldByName('PRO_CODBAR').AsString), 17, 'E')
          else
            Imp_Linha(01, 00, PADVENDA.FieldByName('VE_CodPro').AsString, 6, 'E');
          if fileexists('BARPED.TXT') then
            Imp_Linha(00, 00, DCondensa5+ACondensa2, 00, 'E');
          if PADVENDA.fieldbyname('VE_MudDes').AsString<>'' then
            Imp_Linha(00, 01, PADVENDA.FieldByName('VE_MudDes').AsString, 40, 'E')
          else begin
            if PADVENDA.fieldbyname('VE_PESMET').AsFloat<>0 then begin
              if fileexists('BARPED.TXT') then
                Imp_Linha(00, 01, Copy(PADPRODU.FieldByName('PRO_DESCRI').AsString,1,26)+'-', 27, 'E')
              else
                Imp_Linha(00, 01, Copy(PADPRODU.FieldByName('PRO_DESCRI').AsString,1,29)+'-', 30, 'E');
              Imp_Linha(00, 00, FormatFloat('###,###0.000',PADVENDA.fieldbyname('VE_QUANTI').AsFloat / (PADVENDA.fieldbyname('VE_PESMET').AsFloat/PADVENDA.fieldbyname('VE_QUANPM').AsFloat)), 10, 'D');
            end
            else begin
              if fileexists('BARPED.TXT') then
                Imp_Linha(00, 01, copy(PADPRODU.FieldByName('PRO_DESCRI').AsString,1,37), 37, 'E')
              else
                Imp_Linha(00, 01, PADPRODU.FieldByName('PRO_DESCRI').AsString, 40, 'E');
            end;
          end;
          Imp_Linha(00, 00, FormatFloat('###,##0.000',PADVENDA.FieldByName('VE_Quanti').Asfloat),13, 'D');
          Imp_Linha(00, 01, PADPRODU.FieldByName('PRO_UNIDAD').AsString, 5, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.000',PADVENDA.FieldByName('VE_VALOR').AsFloat-PADVENDA.FieldByName('VE_VALDES').AsFloat+PADVENDA.FieldByName('VE_VALACR').AsFloat-PADVENDA.FieldByName('VE_DESRAT').AsFloat+PADVENDA.FieldByName('VE_ACRRAT').AsFloat), 13, 'D');
          Imp_Linha(00, 00, FormatFloat('###,##0.00',PADVENDA.FieldByName('VE_QUANTI').AsFloat*(PADVENDA.FieldByName('VE_VALOR').AsFloat-PADVENDA.FieldByName('VE_VALDES').AsFloat+PADVENDA.FieldByName('VE_VALACR').AsFloat-PADVENDA.FieldByName('VE_DESRAT').AsFloat+PADVENDA.FieldByName('VE_ACRRAT').AsFloat)), 16, 'D');
          TotGeralX:=TotGeralX+(PADVENDA.FieldByName('VE_QUANTI').AsFloat*(PADVENDA.FieldByName('VE_VALOR').AsFloat-PADVENDA.FieldByName('VE_VALDES').AsFloat+PADVENDA.FieldByName('VE_VALACR').AsFloat-PADVENDA.FieldByName('VE_DESRAT').AsFloat+PADVENDA.FieldByName('VE_ACRRAT').AsFloat));
          PADVENDA.Next;
        end;
        Imp_Linha(02, 79, 'Total.: '+FormatFloat('###,##0.00',TotGeralX), 16, 'D');
        Imp_Linha(01, 00, '', 16, 'D');
        GERAL_VE_SER.MoveBy(-1);
        if GERAL_VE_SER.Bof then
          break;
      end;
    end;
    }
    // if not CONFIGF.DBCheckBox1.Checked then
    //   Imp_Ejeta;
  end;
begin
  MENSPROCF.Panel1.Caption:='AGUARDE UM MOMENTO - GERANDO O RELATÓRIO !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  with TVISUALIZACAOF.Create(nil) do begin
    if CheckBox1.Checked=true then
      Tipo:='RAW'   // Dica: Imprime com matricial Epson mais rápido
    else
      Tipo:='TEXT'; // Dica: Funciona para impressora USB
    if Imp_Inicio( Label1.Caption, 'Impressão de dados Employee - THE CLUB', Tipo, CheckBox1.Checked=true) then begin
      Relatorio;
      Imp_Fim
    end;
  end;
  MENSPROCF.Close;
end;

procedure RelFORNE(Tabela:TUniQuery);
  var Pag ,nLin: Integer;
    Tipo: String;
  procedure Cabecalho;
  begin
    Imp_InicializaPagina;
    DADOS_CADASTROSf.emitente.Open;
    Imp_Linha(01, 00, ACondensa3+DADOS_CADASTROSf.emitente.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.emitente.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 01, '                                                                 Folha', 50, 'E');
    Imp_Linha(00, 01, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 00, '                              RELATORIO DE FORNECEDORES POR ORDEM ALFABETICA', 80, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 94), 94, 'E');
    Imp_Linha(01, 00, 'COD.* *-N O M E   D O   F O R N E C E D O R--* *-----------E N D E R E C O------------*', 80, 'E');
    Imp_Linha(01, 00, '*-----C I D A D E------* *------BAIRRO------* UF *--CEP---* *----C. G. C.----* INSCR.ESTADUAL*', 80, 'E');
    Imp_Linha(01, 00, '*--TELEFONE--* *--FONE/FAX--* *-----------------E-MAIL---------------* *-----CONTATO------*', 80, 'E');
    Imp_Linha(01, 00, '*--------------Home Page---------------*', 80, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 94), 94, 'E');
    nLin:=nLin + 9;
  end;
begin
  Tabela.Close;
  Tabela.Open;
  Tabela.First;
  tamanhofonte:=12;
  {
  if CONFIGF.DBRadioGroup2.ItemIndex=0 then
    Tipo:='RAW'   // Dica: Imprime com matricial Epson mais rápido
  else
    Tipo:='TEXT'; // Dica: Funciona para impressora USB
    }
  // if Imp_Inicio( CONFIGF.Label1.Caption, 'Impressão de dados Employee - THE CLUB', Tipo, CONFIGF.DBCheckBox1.Checked) then begin
  Tipo:='RAW';   // Dica: Imprime com matricial Epson mais rápido
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    nLin:=0;
    Pag :=1;
    while not Tabela.Eof do begin
      if nLin=0 then
        Cabecalho;
      Imp_Linha(01, 00, Tabela.FieldByName('CODIGO').AsString, 5, 'D');
      Imp_Linha(00, 01, Tabela.FieldByName('NOME').AsString, 39, 'E');
      Imp_Linha(00, 00, Tabela.FieldByName('ENDERECO').AsString, 39, 'E');
      if Tabela.FieldByName('NUMERO').AsString<>'' then
        Imp_Linha(00, 00, Tabela.FieldByName('NUMERO').AsString, 5, 'E');
      // Imp_Linha(00, 00, Tabela.FieldByName('ENDERECO').AsString, 39, 'E');
      Imp_Linha(01, 00, Tabela.FieldByName('CIDADE').AsString, 23, 'E');
      Imp_Linha(00, 01, Tabela.FieldByName('BAIRRO').AsString, 19, 'E');
      Imp_Linha(00, 01, Tabela.FieldByName('UF').AsString, 1, 'E');
      Imp_Linha(00, 01, Tabela.FieldByName('CEP').AsString, 8, 'E');
      Imp_Linha(00, 01, FormatMaskText('##.###.###.####/##;0; ',Tabela.FieldByName('CNPJ').AsString), 19, 'E');
      Imp_Linha(00, 01, FormatMaskText('###.######.####;0; ',Tabela.FieldByName('IE').AsString), 15, 'E');
      Imp_Linha(01, 00, FormatMaskText('##-####-####;0; ',Tabela.FieldByName('TELEFONE').AsString), 13, 'E');
      Imp_Linha(00, 01, FormatMaskText('##-####-####;0; ',Tabela.FieldByName('FAX').AsString), 13, 'E');
      Imp_Linha(00, 01, Tabela.FieldByName('EMAIL').AsString, 39, 'E');
      Imp_Linha(00, 01, Tabela.FieldByName('CONTATO').AsString, 19, 'E');
      // Imp_Linha(01, 01, Tabela.FieldByName('Homepa').AsString, 39, 'E');
      nLin:=nLin+4;
      if nLin >= 60 then begin
        // if not CONFIGF.DBCheckBox1.Checked then
        //   Imp_Linha(02, 00, ACondensa5+ASubScript+RODAPEV+DSupScript , 6, 'E');
        Imp_Ejeta;
        nLin:=0;
        Pag :=Pag+1;
      end;
      Tabela.Next;
    end;
    // if not CONFIGF.DBCheckBox1.Checked then
    Imp_Ejeta;
    Imp_Fim
  end;
  // MENSPROCF.Close;
end;

Procedure ImpriOS();
  var
  Pag,nLin,X,Cont,C,Traco,SO: Integer;
  Tipo,EntIm: String;
  procedure Cabecalho;
  begin
    DefineVarPubl();
    Imp_InicializaPagina;
    Definevarpubl();
    Imp_InicializaPagina;

    DataOBJETOSx.CLIENTES.Open;
    DataOBJETOSx.CLIENTES.Locate('CODIGO',DataOBJETOSx.ORDENS.FieldByName('CODCLI').AsString,[]);
    DADOS_CADASTROSf.EMITENTE.Open;
    DataOBJETOSx.ProdServ.Open;
    // Imp_Linha(01, 00,  AExpandido+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString+DExpandido, 6, 'E');
    Imp_Linha(01, 00,  AExpandido+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+
    DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString+DExpandido, 50, 'E');
    // Imp_Linha(00, 00, ' - CNPJ: '+formatMasktext('##.###.###.####-##;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('CNPJ').AsString),20, 'E');
    // Imp_Linha(00, 00, ' - IE: '+DADOS_CADASTROSf.EMITENTE.FieldByName('IE').AsString,20, 'E');
    Imp_Linha(01, 00,  'ENDERECO: '+ DADOS_CADASTROSf.EMITENTE.FieldByName('ENDERECO').AsString, 50, 'E');
    Imp_Linha(00, 02, 'FONE: '+FormatMasktext('##-####-####;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('TELEFONE').AsString), 14, 'E');
    Imp_Linha(01, 00, 'DATA: '+DateToStr(DATE), 14, 'E');
    Imp_Linha(00, 06, 'HORA: '+TimeToStr(Time), 14, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 80), 80, 'E');
    Imp_Linha(01, 00, AExpandido+'ORDEM DE SERVICOS NR.: '+DataOBJETOSx.ORDENS.FieldByName('NUMERO').AsString+DExpandido, 50, 'E');
    Imp_Linha(01, 00, 'Atendimento: '+DataOBJETOSx.ORDENS.FieldByName('TIPO_ATEND').AsString+'   Situacao: '+DataOBJETOSx.ORDENS.FieldByName('SITUACOES').AsString+'  Data: '+DataOBJETOSx.ORDENS.FieldByName('DATA').AsString+' Hora: '+DataOBJETOSx.ORDENS.FieldByName('HORA').AsString, 40, 'E');
    Imp_Linha(01, 00, 'CLIENTE..: '+DataOBJETOSx.CLIENTES.FieldByName('Codigo').AsString+'-'+DataOBJETOSx.CLIENTES.FieldByName('NOME').AsString, 40, 'E');
    Imp_Linha(01, 00, 'ENDERECO.. '+DataOBJETOSx.CLIENTES.FieldByName('ENDERECO').AsString,40, 'E');
    Imp_Linha(00, 00, ' - BAIRRO: '+DataOBJETOSx.CLIENTES.FieldByName('BAIRRO').AsString,20, 'E');
    Imp_Linha(01, 00, 'CIDADE...: '+DataOBJETOSx.CLIENTES.FieldByName('CIDADE').AsString,32, 'E');
    Imp_Linha(00, 00, '-FONES: '+FormatMasktext('##-####-####;0; ',DataOBJETOSx.CLIENTES.FieldByName('TELEFONE').AsString),10, 'E');
    if DataOBJETOSx.CLIENTES.FieldByName('TELEFONE').AsString<>'' then
      Imp_Linha(00, 00, '/'+FormatMasktext('##-####-####;0; ',DataOBJETOSx.CLIENTES.FieldByName('TELEFONE').AsString),10, 'E');
    if DataOBJETOSx.CLIENTES.FieldByName('TELEFONE').AsString<>'' then
      Imp_Linha(00, 00, '/'+FormatMasktext('##-####-####;0; ',DataOBJETOSx.CLIENTES.FieldByName('TELEFONE').AsString),10, 'E');
    if DataOBJETOSx.CLIENTES.FieldByName('TELEFONE').AsString<>'' then
      Imp_Linha(00, 00, '/'+FormatMasktext('##-####-####;0; ',DataOBJETOSx.CLIENTES.FieldByName('TELEFONE').AsString),10, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 80), 80, 'E');
  end;
begin
  tamanhofonte:=7;
  Tipo:='RAW';
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    nLin:=0;
    Entim:='S';
    nLin:=0;
    Cabecalho;
    Imp_Linha(01, 00, AExpandido+'Objetos'+DExpandido, 6, 'E');
    DataOBJETOSx.ITEMOBJE.Open;
    DataOBJETOSx.ITEMOBJE.First;
    while not DataOBJETOSx.ITEMOBJE.Eof do begin
      Imp_Linha(01, 00, ACondensa3+ASublinhad+'Codigo  Descricao                                       Identificador 1     Identificador 2     Identificador 3     Prisma'+DSublinhad, 6, 'E');
      Imp_Linha(01, 00, DataOBJETOSx.ITEMOBJE.FieldByName('CODIGO').AsString, 8, 'E');
      Imp_Linha(00, 00, DataOBJETOSx.ITEMOBJE.FieldByName('DESCRICAO').AsString, 48, 'E');
      Imp_Linha(00, 00, DataOBJETOSx.ITEMOBJE.FieldByName('IDENTIFIC1').AsString, 20, 'E');
      Imp_Linha(00, 00, DataOBJETOSx.ITEMOBJE.FieldByName('IDENTIFIC2').AsString, 20, 'E');
      Imp_Linha(00, 00, DataOBJETOSx.ITEMOBJE.FieldByName('IDENTIFIC3').AsString, 20, 'E');
      Imp_Linha(00, 00, DataOBJETOSx.ITEMOBJE.FieldByName('PRISMA').AsString, 3, 'E');
      AbreConf_Padrao;
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('LinObj').AsString='S' then begin
        Imp_Linha(01, 00, StringOfChar('_', 135), 135, 'E');
        Imp_Linha(01, 00, StringOfChar('_', 135), 135, 'E');
      end;
      Imp_Linha(01, 00, 'Defeito Reclamado:', 50, 'E');
      Imp_Linha(00, 01, DataOBJETOSx.ITEMOBJE.FieldByName('DEFEITO').AsString, 6, 'E');
      // if DADOSFRENTEf.CONF_PADRAO.FieldByName('OS').AsString='' then begin
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('ReCoSo').AsString='1' then
        for X:=1 to 1 do
          Imp_Linha(01, 00, StringOfChar('_', 135), 135, 'E');
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('ReCoSo').AsString='2' then
        for X:=1 to 2 do
          Imp_Linha(01, 00, StringOfChar('_', 135), 135, 'E');
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('ReCoSo').AsString='3' then
        for X:=1 to 3 do
          Imp_Linha(01, 00, StringOfChar('_', 135), 135, 'E');
      Imp_Linha(01, 00, 'Defeito Constatado:', 50, 'E');
      Imp_Linha(00, 01, DataOBJETOSx.ITEMOBJE.FieldByName('DEFEITOCO').AsString, 6, 'E');
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('ReCoSo').AsString='1' then
        for X:=1 to 1 do
          Imp_Linha(01, 00, StringOfChar('_', 135), 135, 'E');
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('ReCoSo').AsString='2' then
        for X:=1 to 2 do
          Imp_Linha(01, 00, StringOfChar('_', 135), 135, 'E');
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('ReCoSo').AsString='3' then
        for X:=1 to 3 do
          Imp_Linha(01, 00, StringOfChar('_', 135), 135, 'E');
      Imp_Linha(01, 00, 'Solucao:', 50, 'E');
      Imp_Linha(00, 01, DataOBJETOSx.ITEMOBJE.FieldByName('SOLUCAO').AsString, 6, 'E');
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('ReCoSo').AsString='1' then
        for X:=1 to 1 do
          Imp_Linha(01, 00, StringOfChar('_', 135), 135, 'E');
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('ReCoSo').AsString='2' then
        for X:=1 to 2 do
          Imp_Linha(01, 00, StringOfChar('_', 135), 135, 'E');
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('ReCoSo').AsString='3' then
        for X:=1 to 3 do
          Imp_Linha(01, 00, StringOfChar('_', 135), 135, 'E');
      DataOBJETOSx.ITEMOBJE.Next;
    end;
    Imp_Linha(01, 00, DCondensa3+AExpandido+'SERVICOS'+DExpandido+ACondensa2, 6, 'E');
    Imp_Linha(01, 00, 'COD OBJ *---------------DESCRICAO--------------* CODIGO *---QTDE---* *VALOR UNIT* *VALOR TOTAL*',80, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 95), 95, 'E');
    DataOBJETOSx.produtos.Filtered:=false;
    DataOBJETOSx.produtos.Filter:='UND_C ='+QuotedStr('SER');
    DataOBJETOSx.produtos.Filtered:=true;
    DataOBJETOSx.produtos.First;

    DataOBJETOSx.ProdServ.Filtered:=false;
    DataOBJETOSx.ProdServ.Filter:='PROSER ='+QuotedStr('S');
    DataOBJETOSx.ProdServ.Filtered:=true;
    DataOBJETOSx.ProdServ.First;
    if DataOBJETOSx.ProdServ.IsEmpty then begin
      for X:=1 to 4 do
        Imp_Linha(01, 00, StringOfChar('_', 95), 95, 'E');
    end
    else begin
      while not DataOBJETOSx.ProdServ.Eof do begin
        Imp_Linha(01, 00, DataOBJETOSx.ProdServ.FieldByName('CODOBJ').AsString, 7, 'E');
        Imp_Linha(00, 01, DataOBJETOSx.ProdServ.FieldByName('Descrição').AsString, 40, 'E');
        Imp_Linha(00, 01, DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString, 6, 'E');
        Imp_Linha(00, 00, FormatFloat('###,##0.000',DataOBJETOSx.ProdServ.FieldByName('QTD').Asfloat),13, 'D');
        Imp_Linha(00, 00, FormatFloat('###,##0.000',DataOBJETOSx.ProdServ.FieldByName('PRECO').Asfloat),13, 'D');
        Imp_Linha(00, 00, FormatFloat('###,##0.00',DataOBJETOSx.ProdServ.FieldByName('TOTAL').Asfloat),14, 'D');
        DataOBJETOSx.ProdServ.Next
      end;
    end;
    Imp_Linha(01, 00, AExpandido+'PECAS'+DExpandido, 6, 'E');
    Imp_Linha(01, 00, 'COD OBJ *---------------DESCRICAO--------------* CODIGO *---QTDE---* *VALOR UNIT* *VALOR TOTAL*',80, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 95), 95, 'E');
    DataOBJETOSx.produtos.Filtered:=false;
    DataOBJETOSx.produtos.Filter:='UND_C <>'+QuotedStr('SER');
    DataOBJETOSx.produtos.Filtered:=true;
    DataOBJETOSx.produtos.First;

    DataOBJETOSx.ProdServ.Filtered:=false;
    DataOBJETOSx.ProdServ.Filter:='PROSER ='+QuotedStr('P');
    DataOBJETOSx.ProdServ.Filtered:=true;
    DataOBJETOSx.ProdServ.First;

    if DataOBJETOSx.ProdServ.IsEmpty then begin
      for X:=1 to 4 do
        Imp_Linha(01, 00, StringOfChar('_', 95), 95, 'E');
    end
    else begin
      while not DataOBJETOSx.ProdServ.Eof do begin
        Imp_Linha(01, 00, DataOBJETOSx.ProdServ.FieldByName('CODOBJ').AsString, 7, 'E');
        Imp_Linha(00, 01, DataOBJETOSx.ProdServ.FieldByName('Descrição').AsString, 40, 'E');
        Imp_Linha(00, 01, DataOBJETOSx.ProdServ.FieldByName('CODIGO').AsString, 6, 'E');
        Imp_Linha(00, 00, FormatFloat('###,##0.000',DataOBJETOSx.ProdServ.FieldByName('QTD').Asfloat),13, 'D');
        Imp_Linha(00, 00, FormatFloat('###,##0.000',DataOBJETOSx.ProdServ.FieldByName('PRECO').Asfloat),13, 'D');
        Imp_Linha(00, 00, FormatFloat('###,##0.00',DataOBJETOSx.ProdServ.FieldByName('TOTAL').Asfloat),14, 'D');
        DataOBJETOSx.ProdServ.Next
      end;
    end;
    DataOBJETOSx.ProdServ.Filtered:=false;
    DataOBJETOSx.ProdServ.Filter:='';
    DataOBJETOSx.ProdServ.Filtered:=true;
    DataOBJETOSx.ProdServ.First;
    if not DataOBJETOSx.ProdServ.IsEmpty then begin
      Imp_Linha(02, 00, AExpandido+'TOTAIS', 6, 'E');
      Imp_Linha(01, 32, AExpandido+'TOTAL DE SERVICOS',20, 'E');
      Imp_Linha(00, 00, AExpandido+FormatFloat('###,##0.00',DataOBJETOSx.ORDENS.FieldByName('VLRTOTSERV').Asfloat),13, 'D');
      Imp_Linha(01, 32, AExpandido+'TOTAL DE PECAS',20, 'E');
      Imp_Linha(00, 00, AExpandido+FormatFloat('###,##0.00',DataOBJETOSx.ORDENS.FieldByName('VLRTOTPECA').Asfloat),13, 'D');
      Imp_Linha(01, 32, AExpandido+'FRETE',20, 'E');
      Imp_Linha(00, 00, AExpandido+FormatFloat('###,##0.00',DataOBJETOSx.ORDENS.FieldByName('VLRFRETE').Asfloat),13, 'D');
      Imp_Linha(01, 32, AExpandido+'TOTAL',20, 'E');
      Imp_Linha(00, 00, AExpandido+FormatFloat('###,##0.00',DataOBJETOSx.ORDENS.FieldByName('VLRTOTALOS').Asfloat),13, 'D');
    end;
    Imp_Linha(01, 00, AExpandido+'OBSERVACOES:'+DExpandido, 6, 'E');
    if DataOBJETOSx.ORDENS.FieldByName('OBSERVACAO').AsString='' then begin
      for X:=1 to 4 do
        Imp_Linha(01, 00, StringOfChar('_', 95), 95, 'E');
    end
    else begin
      if copy(DataOBJETOSx.ORDENS.FieldByName('OBSERVACAO').AsString,1,90)<>'' then
        Imp_Linha(01, 00, copy(DataOBJETOSx.ORDENS.FieldByName('OBSERVACAO').AsString,1,90), 7, 'E');
      if copy(DataOBJETOSx.ORDENS.FieldByName('OBSERVACAO').AsString,81,80)<>'' then
        Imp_Linha(01, 00, copy(DataOBJETOSx.ORDENS.FieldByName('OBSERVACAO').AsString,91,90), 7, 'E');
      if copy(DataOBJETOSx.ORDENS.FieldByName('OBSERVACAO').AsString,161,80)<>'' then
        Imp_Linha(01, 00, copy(DataOBJETOSx.ORDENS.FieldByName('OBSERVACAO').AsString,181,90), 7, 'E');
    end;
    Imp_Linha(02, 00, ACondensa2+'ENTREGE EM:',14, 'E');
    Imp_Linha(00, 01, DataOBJETOSx.ORDENS.FieldByName('DATAENTREG').AsString, 7, 'E');
    Imp_Linha(00, 01, 'As '+DataOBJETOSx.ORDENS.FieldByName('HORAENTREG').AsString, 7, 'E');
    Imp_Linha(00, 02, '__________________________________________________________',60, 'E');
    Imp_Linha(01, 33, '                  Assinatura do Cliente                   ',60, 'E');
    Imp_Linha(01, 00, 'ATENDENTE:',14, 'E');
    Imp_Linha(00, 01, DataOBJETOSx.ORDENS.FieldByName('ATENDENTES').AsString, 7, 'E');
    Imp_Linha(02, 00, 'DOCUMENTO DESTINADO PARA USO INTERNO', 7, 'E');
    Imp_Linha(01, 00, 'NAO E DOCUMENTO FISCAL - EXIJA CUPOM OU NOTA FISCAL'+DCondensa2+DCondensa2, 7, 'E');
  end;
  Imp_Ejeta;
  Imp_Fim;
  // MENSPROCF.Close;
end;

Procedure ImprOrcamento;
  var
  Pag,nLin,X,Cont,C,Traco,SO,QuaMei,QuaParX, QuaItem, QuaFolhaImp,Pagina, QuantidaTracos: Integer;
  Tipo,EntIm,Resto,QuantidadePaginas: String;
  QuaFolhas, TotalAVista, TotalAPrazo :double;

  procedure Cabecalho;
  begin
    DefineVarPubl();
    DADOSFRENTEf.CONF_PADRAO.Open;
    if BobinaFormulario='' then
      TipodeImpressao:=DADOSFRENTEf.CONF_PADRAO.FieldByname('IMPRESSAO').AsString
    else if BobinaFormulario='F' then
      TipodeImpressao:=BobinaFormulario
    else if BobinaFormulario='B' then
      TipodeImpressao:=BobinaFormulario;
    DADOSFRENTEf.VENDAS_ECF2.Open;
    FiltroDADOCLIE;
    if TipodeImpressao='F' then begin
       Imp_InicializaPagina;
       if TelaImpressora='I' then
         Imp_Linha(00, 00, #27#67#33 , 6, 'E');
       Imp_Linha(01, 00,  AExpandido+DCondensa3+DSupScript+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+Copy(DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString,1,36)+DExpandido, 0, 'E');
       Imp_Linha(01, 00,  ACondensa2+'ENDEREÇO: '+ DADOS_CADASTROSf.EMITENTE.FieldByName('ENDERECO').AsString, 00, 'E');
       Imp_Linha(00, 00, ' - FONE:'+FormatMasktext('##-####-####;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('TELEFONE').AsString), 00, 'E');
       Imp_Linha(01, 00, 'DATA: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('DATA').AsString, 14, 'E');
       Imp_Linha(00, 01, 'HORA: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('HORA').AsString, 14, 'E');
       Imp_Linha(00, 01, 'CAIXA: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('N_CAIXA').AsString, 1, 'E');
       Imp_Linha(00, 01, 'PERÍODO: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('TURNO').AsString, 1, 'E');
       Pagina:=Pagina+1;
       if QuaFolhaImp>1 then begin
         QuantidadePaginas:='-'+FloatToStr(Pagina)+'/'+FloatToStr(QuaFolhaImp)
       end
       else
         QuantidadePaginas:='';
       Imp_Linha(00, 01, AExpandido+'ORÇAMENTO: '+TiraZerosAEsquera(DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString)+QuantidadePaginas+DExpandido, 8, 'E');

       // FiltroDADOCLIE;

       {
       DADOSFRENTEf.VENDEDORES.Open;
       DADOSFRENTEf.VENDEDORES.Locate('CODIGO',DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString,[]);
       }

       DADOSFRENTEf.VENDEDORES.Close;
       DADOSFRENTEf.VENDEDORES.SQL.Clear;
       DADOSFRENTEf.VENDEDORES.SQL.Add('Select * from VENDEDORES where CODIGO='+QuotedStr(DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString));
       DADOSFRENTEf.VENDEDORES.Open;

       Imp_Linha(01, 00, 'VENDEDOR: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString+'-'+DADOSFRENTEf.VENDEDORES.FieldByName('NOME').AsString, 0, 'E');
       Imp_Linha(00, 00, ' - CNPJ: '+formatMasktext('##.###.###.####-##;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('CNPJ').AsString),20, 'E');
       Imp_Linha(00, 00, ' - IE: '+DADOS_CADASTROSf.EMITENTE.FieldByName('IE').AsString,20, 'E');

       if DADOSFRENTEf.DADOCLIE.FieldByName('ENTREGADOR').AsString<>'' then
         Imp_Linha(00, 00, ' - ENTREGADOR: '+DADOSFRENTEf.DADOCLIE.FieldByName('ENTREGADOR').AsString, 0, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 95), 95, 'E');
       Imp_Linha(00, 00, ACondensa3,00, 'E');
       Imp_Linha(01, 00, 'CLIENTE..: '+DADOSFRENTEf.DADOCLIE.FieldByName('CODIGO').AsString+'-'+DADOSFRENTEf.DADOCLIE.FieldByName('NOME').AsString, 0, 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('PORTADOR').AsString<>'' then
         Imp_Linha(00, 00, ' - PORTADOR: '+DADOSFRENTEf.DADOCLIE.FieldByName('PORTADOR').AsString, 0, 'E');
       Imp_Linha(01, 00, 'ENDEREÇO.. '+DADOSFRENTEf.DADOCLIE.FieldByName('ENDERECO').AsString,0, 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('NUMERO').AsString<>'' then
          Imp_Linha(00, 01, DADOSFRENTEf.DADOCLIE.FieldByName('NUMERO').AsString, Length(DADOSFRENTEf.DADOCLIE.FieldByName('NUMERO').AsString), 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('BAIRRO').AsString<>'' then
         Imp_Linha(00, 00, ' - BAIRRO: '+DADOSFRENTEf.DADOCLIE.FieldByName('BAIRRO').AsString,0, 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('CPF').AsString>'' then
         Imp_Linha(00, 00, ' - Cep: '+FormatMasktext('#####-###;0; ',DADOSFRENTEf.DADOCLIE.FieldByName('CPF').AsString),0, 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('OBSERVACAO').AsString<>'' then
         Imp_Linha(00, 00, ' - DADOS: '+ DADOSFRENTEf.DADOCLIE.FieldByName('OBSERVACAO').AsString, 0, 'E');
       Imp_Linha(01, 00, 'CIDADE...: '+DADOSFRENTEf.DADOCLIE.FieldByName('CIDADE').AsString,0, 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('UF').AsString<>'' then
         Imp_Linha(00, 00, ' - UF: ' + Copy(DADOSFRENTEf.DADOCLIE.FieldByName('UF').AsString,1,20) , 01, 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('TELEFONE').AsString<>'' then
         Imp_Linha(00, 00, ' - TELEFONE: '+FormatMasktext('##-####-####;0; ',DADOSFRENTEf.DADOCLIE.FieldByName('TELEFONE').AsString),0, 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('CPF').AsString<>'' then
         Imp_Linha(00, 00, ' - CPF: '+formatMasktext('###.###.###-##;0; ',DADOSFRENTEf.DADOCLIE.FieldByName('CPF').AsString),20, 'E')
       else if DADOSFRENTEf.DADOCLIE.FieldByName('CNPJ').AsString<>'' then
         Imp_Linha(00, 00, ' - CNPJ: '+formatMasktext('##.###.###.####-##;0; ',DADOSFRENTEf.DADOCLIE.FieldByName('CNPJ').AsString),20, 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('IE').AsString<>'' then
         Imp_Linha(00, 00, ' - IE: '+DADOSFRENTEf.DADOCLIE.FieldByName('IE').AsString,20, 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('IPR').AsString<>'' then
         Imp_Linha(00, 00, ' - C.I.P.R.: '+DADOSFRENTEf.DADOCLIE.FieldByName('IPR').AsString,20, 'E');
       Imp_Linha(00, 00, DCondensa3,00, 'E');
       Imp_Linha(00, 00, ACondensa2,00, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 95), 95, 'E');
       Imp_Linha(01, 00, 'CÓDIGO *---------------DESCRIÇÃO--------------* *---QTDE---* UNI *-VALOR UNIT-* *-VALOR TOTAL-*',80, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 95), 95, 'E');
    end
    else begin
       // FiltroDADOCLIE;
       Imp_Linha(01, 00, ACondensa3+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString, 6, 'E');
       Imp_Linha(01, 00, 'END.: '+ DADOS_CADASTROSf.EMITENTE.FieldByName('ENDERECO').AsString + ' - ' + DADOS_CADASTROSf.EMITENTE.FieldByName('NUMERO').AsString, 30, 'E');
       Imp_Linha(01, 00, 'BAI.: '+ DADOS_CADASTROSf.EMITENTE.FieldByName('BAIRRO').AsString, 21, 'E');
       Imp_Linha(00, 00, ' CID.:'+ DADOS_CADASTROSf.EMITENTE.FieldByName('CIDADE').AsString, 01, 'E');
       Imp_Linha(00, 00, '-' + DADOS_CADASTROSf.EMITENTE.FieldByName('UF').AsString, 02, 'E');
       Imp_Linha(01, 00, 'FONE: '+FormatMasktext('##-####-####;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('TELEFONE').AsString), 14, 'E');
       Imp_Linha(00, 05, 'CEL: '+FormatMasktext('##-####-####;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('CELULAR').AsString), 14, 'E');
       // DADOSFRENTEf.VENDEDORES.Open;
       // DADOSFRENTEf.VENDEDORES.Locate('CODIGO',DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString,[]);

       DADOSFRENTEf.VENDEDORES.Close;
       DADOSFRENTEf.VENDEDORES.SQL.Clear;
       DADOSFRENTEf.VENDEDORES.SQL.Add('Select * from VENDEDORES where CODIGO='+QuotedStr(DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString));
       DADOSFRENTEf.VENDEDORES.Open;

       Imp_Linha(01, 00, 'CNPJ: '+formatMasktext('##.###.###.####-##;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('CNPJ').AsString),20, 'E');
       Imp_Linha(00, 00, ' - IE: '+DADOS_CADASTROSf.EMITENTE.FieldByName('IE').AsString,20, 'E');
       Imp_Linha(01, 00, 'VENDEDOR: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString+'-'+DADOSFRENTEf.VENDEDORES.FieldByName('NOME').AsString, 0, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
       Imp_Linha(01, 00, 'DATA: '+DADOSFRENTEf.CONF_PADRAO.FieldByname('DATA').AsString, 8, 'E');
       Imp_Linha(00, 02, TimeToStr(Time), 8, 'E');
       Imp_Linha(00, 02, 'Nr.Docu.: '+DADOSFRENTEf.VENDAS_ECF2.Fieldbyname('CUPOM').Asstring, 8, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
       Imp_Linha(01, 00, DADOSFRENTEf.DADOCLIE.FieldByName('CODIGO').AsString+'-'+COPY(DADOSFRENTEf.DADOCLIE.FieldByName('NOME').AsString,1,35), 40, 'E');
       Imp_Linha(01, 00, 'END.: ' + DADOSFRENTEf.DADOCLIE.FieldByName('ENDERECO').AsString+' '+DADOSFRENTEf.DADOCLIE.FieldByName('NUMERO').AsString ,30, 'E');
       Imp_Linha(01, 00, 'BAI.: ' + Copy(DADOSFRENTEf.DADOCLIE.FieldByName('BAIRRO').AsString,1,15) , 21, 'E');
       Imp_Linha(00, 00, ' CID.:' + Copy(DADOSFRENTEf.DADOCLIE.FieldByName('CIDADE').AsString,1,20) , 01, 'E');
       Imp_Linha(00, 00, '-' + DADOSFRENTEf.DADOCLIE.FieldByName('UF').AsString, 02, 'E');

       if DADOSFRENTEf.DADOCLIE.FieldByName('OBSERVACAO').AsString<>'' then
         Imp_Linha(01, 00, 'DADOS: '+ DADOSFRENTEf.DADOCLIE.FieldByName('OBSERVACAO').AsString, 0, 'E');

       if DADOSFRENTEf.DADOCLIE.FieldByName('TELEFONE').AsString<>'' then
         Imp_Linha(01, 00, 'TELEFONE: '+FormatMasktext('##-####-####;0; ',DADOSFRENTEf.DADOCLIE.FieldByName('TELEFONE').AsString),0, 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('CPF').AsString<>'' then
         Imp_Linha(01, 00, 'CPF: '+formatMasktext('###.###.###-##;0; ',DADOSFRENTEf.DADOCLIE.FieldByName('CPF').AsString),20, 'E')
       else if DADOSFRENTEf.DADOCLIE.FieldByName('CNPJ').AsString<>'' then
         Imp_Linha(01, 00, 'CNPJ: '+formatMasktext('##.###.###.####-##;0; ',DADOSFRENTEf.DADOCLIE.FieldByName('CNPJ').AsString),20, 'E');
       if DADOSFRENTEf.DADOCLIE.FieldByName('IE').AsString<>'' then
         Imp_Linha(00, 00, ' - IE: '+DADOSFRENTEf.DADOCLIE.FieldByName('IE').AsString,20, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
       Imp_Linha(01, 00, 'ITEM  CODIGO               DESCRIÇÃO            ',40, 'E');
       Imp_Linha(01, 00, 'QTD.UN. X VL. UNITARIO( R$)         VL ITEM( R$)',40, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
    end;
  end;

  procedure ASSINATURA;
  begin
    if TipodeImpressao='F' then begin
      Imp_Linha(02, 00, 'TOTAL DA CONTA.:',17, 'E');
      Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat)+DEnfatizad,8, 'D');

      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('FRETE').AsFloat>0 then begin
        Imp_Linha(00, 01, '- FRETE: ',9, 'E');
        Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('FRETE').AsFloat)+DEnfatizad,8, 'D');
      end;

      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TAXAENTREGA').AsFloat>0 then begin
        Imp_Linha(00, 01, '- TAXA DE ENTREGA: ',19, 'E');
        Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TAXAENTREGA').AsFloat)+DEnfatizad,8, 'D');
      end;

      if DADOSFRENTEf.CONF_PADRAO.fieldbyname('ACRESDESCON').AsString='S' then begin
        if DADOSFRENTEf.VENDAS_ECF2.FieldByName('Desconto').AsFloat>0 then begin
          Imp_Linha(00, 01, '- DESCONTO: ',12, 'E');
          Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('Desconto').AsFloat)+DEnfatizad,8, 'D');
        end;
      end;

      if DADOSFRENTEf.CONF_PADRAO.fieldbyname('ACRESDESCON').AsString='S' then begin
        if DADOSFRENTEf.VENDAS_ECF2.FieldByName('ACRESCIMO').AsFloat>0 then begin
          Imp_Linha(00, 01, '- ACRESCIMO: ',13, 'E');
          Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('ACRESCIMO').AsFloat)+DEnfatizad,8, 'D');
        end;
      end;
      Imp_Linha(00, 01, '- Total a Pagar: ',15, 'E');
      Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TOTALPAGO').AsFloat)+DEnfatizad,8, 'D');
      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TROCO').AsFloat>0 then begin
        Imp_Linha(00, 01, '- Troco: ',8, 'E');
        Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TROCO').AsFloat)+DEnfatizad,8, 'D');
      end;
      FiltroItensFormasPagamento;
        DADOSFRENTEf.DiversasFormas.First;
        Imp_Linha(01, 00, 'PG.: ',5, 'E');
        Traco:=0;
        QuaMei:=0;
        while not DADOSFRENTEf.DiversasFormas.Eof do begin
          Imp_Linha(00, 01, DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring+'.:'+' '+AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat)+DEnfatizad,
          Length(DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring+'.: ')+
          Length(FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat))+3
          , 'E');
          DADOSFRENTEf.DiversasFormas.Next;
        end;
      FiltroItensContasReceber;
      if not DataFinanceiro.RECEBER.IsEmpty then begin
        DataFinanceiro.RECEBER.First;
        SO:=0;
        while not DataFinanceiro.RECEBER.Eof do begin
          SO:=SO+1;
          DataFinanceiro.RECEBER.Next;
          if SO=4 then
            break;
        end;
        DataFinanceiro.RECEBER.Last;
        QUAPAR:=DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString;
        if StrToInt(DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString)<5 then begin
            if SO=1 then
              Imp_Linha(01, 00, 'VENCIMENTO.: ',14, 'E')
            else begin
              if SO=4 then
                Imp_Linha(00, 00, ACondensa3+'',0, 'E');
              Imp_Linha(01, 00, 'VENCIMENTOS.: ',15, 'E');
            end;
            DataFinanceiro.RECEBER.First;
            QuaParX:=0;
            while not DataFinanceiro.RECEBER.Eof do begin
              QuaParX:=QuaParX+1;
              Imp_Linha(00, 00, IntToStr(QuaParX)+'-'+DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsString+'-'+AEnfatizad+FormatFloat('###,##0.00',DataFinanceiro.RECEBER.FieldByName('VALOR').Value)+DEnfatizad+' ',3, 'E');
              DataFinanceiro.RECEBER.Next;
            end;
        end
        else begin
          DataFinanceiro.RECEBER.First;
          QUAPAR:=IntToStr(DAYSBETWEEN(DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsDateTime,
          DataFinanceiro.RECEBER.FieldByName('EMISSAO').AsDateTime));
          DataFinanceiro.RECEBER.Last;
          Imp_Linha(01, 00, 'Dividido em '+DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString+
          ' vezes de '+FormatFloat('###,##0.00',DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat
          )+' de '+QUAPAR+' em '+QUAPAR+' dias',10, 'D');
        end;
      end;

      Imp_Linha(02, 00, DCondensa3+ACondensa2+'                      ASSINATURA :'+StringOfChar('_', 40),75, 'E');
      if DADOSFRENTEf.CONF_PADRAO.FieldByname('MENSAGEM').AsString='S' then begin
        Imp_Linha(01, 00, StringOfChar('-', 95), 95, 'E');
        if TrocaMensagem='S' then begin
          TamNome:= Length(DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO1').AsString + DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO2').AsString);
          Tamanho:=(95-TamNome)/2;
          Tamanho:=Int(Tamanho);
          Tam:=FloatToStr(Tamanho);
          Tama:=StrToInt(Tam);
          Imp_Linha(01, Tama ,DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO1').AsString ,01, 'E');
          Imp_Linha(00, 00,DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO2').AsString ,01, 'E');
        end
        else if ValrecX=0 then
          Imp_Linha(01, 25, DCondensa3+ACondensa2+DADOSFRENTEf.CONF_PADRAO.FieldByname('CON_MENSA2').AsString,75, 'E')
        else
          Imp_Linha(01, 25, DCondensa3+ACondensa2+DADOSFRENTEf.CONF_PADRAO.FieldByname('CON_MENSA1').AsString,75, 'E');
        Imp_Linha(01, 00, StringOfChar('-', 95)+DCondensa2, 95, 'E');
        Imp_Linha(01, 00, '',00, 'E');
      end
      else begin
        if TelaImpressora='I' then begin
          Imp_Linha(01, 00, AEnfatizad+'"NÃO É DOCUMENTO FISCAL" E "NÃO É VÁLIDO COMO GARANTIA DE MERCADORIA"'+DEnfatizad, 6, 'E');
          Imp_Linha(01, 15, DCondensa2+ACondensa5+ASubScript+'EJOC SISTEMAS -  TRAVESSA DA APARECIDA, 228, CENTRO, CEP 37.190-000, TRÊS PONTAS, MG - FONE/FAX: 35-98849-1204'+DCondensa5+DSupScript, 6, 'E');
        end;
        Imp_Linha(02, 00, '',00, 'E');
      end;
    end
    else begin
      Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
      Imp_Linha(01, 00, 'TOTAL  R$',14, 'E');
      Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat),34, 'D');
      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('FRETE').AsFloat>0 then begin
        Imp_Linha(01, 00, 'FRETE ',14, 'E');
        Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('FRETE').AsFloat),34, 'D');
      end;
      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TAXAENTREGA').AsFloat>0 then begin
        Imp_Linha(01, 00, 'TAXA DE ENTREGA ',16, 'E');
        Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TAXAENTREGA').AsFloat),32, 'D');
      end;

      if DADOSFRENTEf.CONF_PADRAO.fieldbyname('ACRESDESCON').AsString='S' then begin
        if DADOSFRENTEf.VENDAS_ECF2.FieldByName('Desconto').AsFloat>0 then begin
          Imp_Linha(01, 00, 'DESCONTO ',14, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('Desconto').AsFloat),34, 'D');
        end;
      end;

      if DADOSFRENTEf.CONF_PADRAO.fieldbyname('ACRESDESCON').AsString='S' then begin
        if DADOSFRENTEf.VENDAS_ECF2.FieldByName('ACRESCIMO').AsFloat>0 then begin
          Imp_Linha(01, 00, 'ACRESCIMO: ',14, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('ACRESCIMO').AsFloat),34, 'D');
        end;
      end;
      Imp_Linha(01, 00, 'Total a Pagar ',14, 'E');
      Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TOTALPAGO').AsFloat),34, 'D');
      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TROCO').AsFloat>0 then begin
        Imp_Linha(01, 00, 'Troco ',14, 'E');
        Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TROCO').AsFloat),34, 'D');
      end;
      FiltroItensFormasPagamento;
        DADOSFRENTEf.DiversasFormas.First;
        Imp_Linha(01, 00, 'MEIOS DE PAGAMENTO.: ',5, 'E');
        Traco:=0;
        QuaMei:=0;
        while not DADOSFRENTEf.DiversasFormas.Eof do begin
          if (DADOSFRENTEf.DiversasFormas.Fieldbyname('PARCELA').Asstring<>'') and (DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring<>'Conta a Prazo') then begin
            Imp_Linha(01, 00, DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring,17, 'E');
            Imp_Linha(00, 05, '('+DADOSFRENTEf.DiversasFormas.Fieldbyname('PARCELA').Asstring+' X '+
            FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat/DADOSFRENTEf.DiversasFormas.Fieldbyname('PARCELA').AsFloat)+')',15, 'E');
            Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat),11, 'D');
          end
          else begin
            Imp_Linha(01, 00, DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring,17, 'E');
            Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat),31, 'D');
          end;
          DADOSFRENTEf.DiversasFormas.Next;
        end;
      FiltroItensContasReceber;
      if not DataFinanceiro.RECEBER.IsEmpty then begin
        DataFinanceiro.RECEBER.First;
        SO:=0;
        while not DataFinanceiro.RECEBER.Eof do begin
          SO:=SO+1;
          DataFinanceiro.RECEBER.Next;
          if SO=4 then
            break;
        end;
        DataFinanceiro.RECEBER.Last;
        QUAPAR:=DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString;
        if StrToInt(DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString)<5 then begin
            if SO=1 then
              Imp_Linha(01, 00, 'VENCIMENTO ',14, 'E')
            else begin
              if SO=4 then
                Imp_Linha(01, 00, ACondensa3+'',0, 'E');
              Imp_Linha(01, 00, 'VENCIMENTOS ',14, 'E');
            end;
            DataFinanceiro.RECEBER.First;
            QuaParX:=0;
            while not DataFinanceiro.RECEBER.Eof do begin
              QuaParX:=QuaParX+1;
              Imp_Linha(01, 00, IntToStr(QuaParX)+'-'+DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsString+'-'+FormatFloat('###,##0.00',DataFinanceiro.RECEBER.FieldByName('VALOR').Value)+' ',3, 'E');
              DataFinanceiro.RECEBER.Next;
            end;
        end
        else begin
          DataFinanceiro.RECEBER.First;
          QUAPAR:=IntToStr(DAYSBETWEEN(DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsDateTime,
          DataFinanceiro.RECEBER.FieldByName('EMISSAO').AsDateTime));
          DataFinanceiro.RECEBER.Last;
          Imp_Linha(01, 00, 'Dividido em '+DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString+
          ' vezes de '+FormatFloat('###,##0.00',DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat
          )+' de '+QUAPAR+' em '+QUAPAR+' dias',10, 'D');
        end;
      end;
      Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
      Imp_Linha(03, 00, 'ASSINATURA :'+StringOfChar('_', 34),40, 'E');
    end;
  end;
begin
  FiltroItensFormasPagamento;
  if DADOSFRENTEf.DiversasFormas.IsEmpty then
  begin
    ShowMessage('Orçamento sem meio de pagamento - Tem que fazer devolução !!!');
    ShowMessage('Orçamento sem meio de pagamento - Tem que fazer devolução !!!');
    ShowMessage('Orçamento sem meio de pagamento - Tem que fazer devolução !!!');
  end
  else begin

    DADOSFRENTEf.CONF_PADRAO.Open;
    if BobinaFormulario='' then
      TipodeImpressao:=DADOSFRENTEf.CONF_PADRAO.FieldByname('IMPRESSAO').AsString
    else
      TipodeImpressao:=BobinaFormulario;
    DADOSFRENTEf.PRODUTOS.Open;
    DADOS_CADASTROSf.emitente.Open;
    Tipo:='RAW';
    if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
      if TipodeImpressao='F' then begin
        nLin:=0;
        Entim:='S';
        if QuantidadeEscolhida>0 then
          QuantidadeRecibos:=QuantidadeEscolhida
        else begin
          if DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMCOP').AsInteger=0 then
            QuantidadeRecibos:=1
          else
            QuantidadeRecibos:=DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMCOP').AsInteger;
        end;
        For X:=1 To QuantidadeRecibos do begin
          nLin:=0;
          Pagina:=0;
          Entim:='S';
          DADOSFRENTEf.ITEVENDAS_ECF2.Open;
          DADOSFRENTEf.ITEVENDAS_ECF2.Last;
          QuaItem:=StrToInt(DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ITEM').AsString);
          QuaFolhas:=QuaItem/10;
          Resto:=StrZero(QuaFolhas,8,2);
          if StrToInt(copy(Resto,7,2))>0 then
            QuaFolhaImp:=StrToInt(copy(Resto,1,5))+1
          else
            QuaFolhaImp:=StrToInt(copy(Resto,1,5));
          DADOSFRENTEf.ITEVENDAS_ECF2.First;
          TotalAPrazo:=0; TotalAVista:=0;
          while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
            if nLin=0 then
              Cabecalho;
            DADOSFRENTEf.PRODUTOS.Close;
            DADOSFRENTEf.PRODUTOS.SQL.Clear;
            DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(DADOSFRENTEf.ITEVENDAS_ECF2.Fieldbyname('CODIGO').Asstring));
            DADOSFRENTEf.PRODUTOS.Open;
            Imp_Linha(01, 00, DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CODIGO').AsString, 6, 'E');
            Imp_Linha(00, 01, DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DESCRICAO').AsString, 40, 'E');
            Imp_Linha(00, 00, FormatFloat('###,##0.000',DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').Asfloat),13, 'D');
            Imp_Linha(00, 01, DADOSFRENTEf.PRODUTOS.FieldByName('UND_C').AsString, 5, 'E');
            Imp_Linha(00, 00, FormatFloat('###,##0.000',DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECO').AsFloat), 13, 'D');
            Imp_Linha(00, 00, FormatFloat('###,##0.000',DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TOTAL').AsFloat), 16, 'D');
            Inc( nLin );
            DADOSFRENTEf.ITEVENDAS_ECF2.Next;
            if (nlin=10) and (not DADOSFRENTEf.ITEVENDAS_ECF2.Eof) then begin
               nlin:=0;
               Imp_Linha(02, 00, StringOfChar('-', 95), 95, 'E');
               Imp_Linha(02, 00, 'Total na sequência.: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString+'-'+FloatToStr(QuaFolhaImp)+'/'+FloatToStr(QuaFolhaImp), 6, 'E');
               Imp_Linha(02, 00, StringOfChar('-', 95), 95, 'E');
               Imp_Linha(00, 00, #12+DTudo , 6, 'E');
            end;
          end;

         if ImpressaoOrcamentetoCustoVenda='S' then
           Imp_Linha(00, 00, DCondensa4,00, 'E');

          if nLin >= 10 then begin
            if nlin <= 45 then
              ASSINATURA;
          end;
          if (nLin<=9) and (EntIm='S') then begin
            if Nlin<9 then begin
              Cont:=9-nlin;
              Imp_Linha(Cont, 00, '',96, 'E');
            end;
            ASSINATURA;
            EntIm:='N';
          end;
          if nLin>10 then begin
            Imp_Linha(01, 00, '', 1, 'E');
            Imp_Ejeta
          end
          else
            Imp_Linha(00, 00, #12+DTudo , 6, 'E');
        end;
        Imp_Fim;
      end
      else begin
        nLin:=0;
        Entim:='S';
        if QuantidadeEscolhida>0 then
          QuantidadeRecibos:=QuantidadeEscolhida
        else begin
          if DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMCOP').AsInteger=0 then
            QuantidadeRecibos:=1
          else
            QuantidadeRecibos:=DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMCOP').AsInteger;
        end;
        For X:=1 To QuantidadeRecibos do begin
          nLin:=0;
          DADOSFRENTEf.ITEVENDAS_ECF2.Open;
          DADOSFRENTEf.ITEVENDAS_ECF2.First;
          while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
            if nLin=0 then
              Cabecalho;
            DADOSFRENTEf.PRODUTOS.Close;
            DADOSFRENTEf.PRODUTOS.SQL.Clear;
            DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(DADOSFRENTEf.ITEVENDAS_ECF2.Fieldbyname('CODIGO').Asstring));
            DADOSFRENTEf.PRODUTOS.Open;
            Imp_Linha(01, 00, StrZero(DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ITEM').AsInteger,4,0),5, 'E');
            Imp_Linha(00, 00, DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('CODIGO').AsString,6, 'D');
            Imp_Linha(00, 01, COPY(DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DESCRICAO').AsString,1,36),36, 'D');
            Imp_Linha(01, 00, COPY(FloatToStr(DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').Asfloat),1,9)+
            DADOSFRENTEf.PRODUTOS.FieldByName('UND_C').AsString+
            ' X '+COPY(FloatToStr(DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECO').Asfloat),1,9),24, 'D');
            Imp_Linha(00, 00, FormatFloat('###,##0.00', DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('TOTAL').AsFloat), 24, 'D');
            Inc(nLin);
            DADOSFRENTEf.ITEVENDAS_ECF2.Next;
          end;
          ASSINATURA;
          DataFinanceiro.RECEBER.Open;
          if DataFinanceiro.RECEBER.IsEmpty then begin
            if ParcalaX<>'' then begin
              Imp_Linha(01, 00, ParcalaX,14, 'E');
            end;
          end;
          if DescricaoCliente<>'' then begin
            Imp_Linha(02, 00, PadC(StringOfChar('_', 40),50),40, 'E');
            Imp_Linha(01, 00, PadC(DescricaoCliente,50), 50, 'E');
            if PortadorCliente<>'' then
              Imp_Linha(01, 00, PadC('PORTADOR: '+PortadorCliente,50), 50, 'E')
          end;
          if TrocaMensagem='S' then begin
            Imp_Linha(02, 00,PADC(DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO1').AsString,50) ,01, 'E');
            if DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO2').AsString<>'' then
              Imp_Linha(01, 00,PADC(DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO2').AsString,50) ,01, 'E');
            if DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO3').AsString<>'' then
              Imp_Linha(01, 00,PADC(DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO3').AsString,50) ,01, 'E');
            if DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO4').AsString<>'' then
              Imp_Linha(01, 00,PADC(DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO4').AsString,50) ,01, 'E');
          end;
          if TelaImpressora='I' then begin
            Imp_Linha(02, 00, '            "NÃO E DOCUMENTO FISCAL"          ', 6, 'E');
            Imp_Linha(01, 00, '  "NÃO E VÁLIDO COMO GARANTIA DE MERCADORIA"  ', 6, 'E');
            Imp_Linha(01, 00, '  EJOC SISTEMAS - TRAVESSA DA APARECIDA, 228  ', 6, 'E');
            Imp_Linha(01, 00, '             CENTRO - CEP 37.190-000          ', 6, 'E');
            Imp_Linha(01, 00, '     TRÊS PONTAS, MG - FONE: 35-98849-1204    ', 6, 'E');
          end;
          Imp_Linha(06, 00, '',1, 'E')
        end;
        Imp_Fim;
      end;
    end;
  end;
end;

procedure RelVeiculos2;
  var Pag ,nLin: Integer;
    Tipo: String;
  procedure Cabecalho;
  begin
    Imp_InicializaPagina;
    DADOS_CADASTROSf.EMITENTE.Open;
    Imp_Linha(01, 00, DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 24, 'Folha', 6, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 00, '                  RELATORIO DE VEICULOS DE CLIENTES POR ORDEM DE CODIGO                 ', 87, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 87), 87, 'E');
    Imp_Linha(01, 00, 'COD. *----------------CLIENTE----------------* *--------------DESCRICAO---------------*', 87, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 87), 87, 'E');
    nLin:=nLin + 7;
  end;
begin
  DADOS_CADASTROSf.VEICULOS.Open;
  DADOS_CADASTROSf.VEICULOS.First;
  Tipo:='RAW';
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    nLin:=0;
    Pag :=1;
    while not DADOS_CADASTROSf.VEICULOS.Eof do begin
      if nLin=0 then begin
        Cabecalho;
      end;
      Imp_Linha(01, 00, DADOS_CADASTROSf.VEICULOS.FieldByName('CODIGO').AsString, 5, 'E');
      // Imp_Linha(00, 01, DADOS_CADASTROSf.VEICULOS.FieldByName('clinome').AsString, 40, 'E');
      DADOS_CADASTROSf.ClientesRel.Open;
      DADOS_CADASTROSf.ClientesRel.Locate('CODIGO',DADOS_CADASTROSf.VEICULOS.FieldByName('CODIGO').AsString,[]);
      // Imp_Linha(00, 01, DADOS_CADASTROSf.VEICULOS.FieldByName('descri').AsString, 40, 'E');
      Imp_Linha(00, 01, DADOS_CADASTROSf.ClientesRel.FieldByName('NOME').AsString, 40, 'E');
      DADOS_CADASTROSf.ClientesRel.Close;
      Imp_Linha(00, 02, DADOS_CADASTROSf.VEICULOS.FieldByName('NOME').AsString, 40, 'E');
      Inc( nLin );
      if nLin >= 60 then begin
        // Imp_Linha(02, 00, DADOS_CADASTROSf.EMITENTE.FieldByName('EM_CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('EM_NOME').AsString+'- Av. OSWALDO CRUZ, 1049, CENTRO, CEP 37.190-000, TRES PONTAS, MG - FONE/FAX: (035)265-2699 -' , 6, 'E');
        Imp_Ejeta;
        nLin:=0;
        Pag :=Pag+1;
      end;
      DADOS_CADASTROSf.VEICULOS.Next;
    end;
    Imp_Ejeta;
    Imp_Fim;
  end;
end;

procedure ImpCompras2(Placa:string);
var
  Pag,nLin:Integer;
  Tipo, Hora, Dia :String;
  Total, TotalGeral, QuantidadeTotal, TotalPercentual, TotGeralX :Double;

  procedure Cabecalho;
  begin
    Definevarpubl();
    Imp_InicializaPagina;
    Imp_Linha(01, 00, DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 51, 'Folha', 06, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 00, PADC('RELATORIO DE MAIOR PICO',79), 60, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 79), 79, 'E');
    Imp_Linha(01, 00, '*-HORA-*   *-QUANTIDADE-*  *-PERCENTUAL-*  *-QUANT. GERAL-*  *PERCENTUAL GERAL*', 49, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 79), 79, 'E');
    nLin:=nLin + 6;
  end;
  procedure Relatorio;
  begin
    nLin:=0;
    Pag:=1;
    DADOS_CADASTROSf.Oleo_rel.Close;
    DADOS_CADASTROSf.Oleo_rel.SQL.Clear;
    DADOS_CADASTROSf.Oleo_rel.SQL.Add('Select * from Oleo where PLACA='+QuotedStr(Placa));
    DADOS_CADASTROSf.Oleo_rel.Open;
    // DADOS_CADASTROSf.Oleo_rel.IndexFieldNames:='VEI_PLACA;VEI_LANCAM';
    // DADOS_CADASTROSf.Oleo_rel.SetRange([Edit11.Text],[Edit11.Text]);
    DADOS_CADASTROSf.Oleo_rel.Last;
    DADOS_CADASTROSf.ClientesRel.Open;
    // DADOS_CADASTROSf.ClientesRel.IndexFieldNames:='CLI_CODIGO';
    DADOS_CONSULTASF.PRODUTOS.Open;
    if not DADOS_CADASTROSf.Oleo_rel.IsEmpty then begin
      while True do begin
        // DADOS_CADASTROSf.ClientesRel.Locate('CODIGO',DADOS_CADASTROSf.Oleo_rel.FieldByName('CLIENTE').AsString,[]);
        DADOS_CADASTROSf.ClientesRel.Close;
        DADOS_CADASTROSf.ClientesRel.SQL.Clear;
        DADOS_CADASTROSf.ClientesRel.SQL.Add('Select NOME,CODIGO from Clientes where CODIGO='+QuotedStr(DADOS_CADASTROSf.Oleo_rel.FieldByName('CLIENTE').AsString));
        DADOS_CADASTROSf.ClientesRel.Open;
        Imp_Linha(01, 00, 'Lanc.: '+DADOS_CADASTROSf.Oleo_rel.FieldByName('CUPOM').AsString+'-'+DADOS_CADASTROSf.Oleo_rel.FieldByName('CLIENTE').AsString+'-'+DADOS_CADASTROSf.ClientesRel.FieldByName('NOME').AsString,60, 'E');
        // Imp_Linha(01, 00, 'Veículo.: '+DADOS_CADASTROSf.Oleo_rel.FieldByName('VEI_VEICULO').AsString+' - Placa.: '+FormatMaskText('###-####;0; ',DADOS_CADASTROSf.Oleo_rel.FieldByName('VEI_PLACA').AsString)+' - KM Incial.: '+FormatFloat('###,##0.00', DADOS_CADASTROSf.Oleo_rel.FieldByName('VEI_KM').AsFloat)+' - KM Final.: '+FormatFloat('###,##0.00', DADOS_CADASTROSf.Oleo_rel.FieldByName('VEI_KM_F').AsFloat),12, 'D');
        // DADOSFRENTEf.ITEOLEOS.SetRange([DADOS_CADASTROSf.Oleo_rel.FieldByName('VEI_LANCAM').AsString],[DADOS_CADASTROSf.Oleo_rel.FieldByName('VEI_LANCAM').AsString]);
        DADOSFRENTEf.ITEOLEOS.Close;
        DADOSFRENTEf.ITEOLEOS.SQL.Clear;
        DADOSFRENTEf.ITEOLEOS.SQL.Add('Select * from ITEOLEOS where CUPOM='+QuotedStr(DADOS_CADASTROSf.Oleo_rel.FieldByName('CUPOM').AsString));
        DADOSFRENTEf.ITEOLEOS.Open;
        Imp_Linha(01, 00, 'Data.: '+DADOSFRENTEf.ITEOLEOS.fieldbyname('DATA').AsString+' - Veículo.: '+DADOS_CADASTROSf.Oleo_rel.FieldByName('VEICULO').AsString+' - Placa.: '+FormatMaskText('###-####;0; ',DADOS_CADASTROSf.Oleo_rel.FieldByName('PLACA').AsString)+' - KM Incial.: '+FormatFloat('###,##0.00', DADOS_CADASTROSf.Oleo_rel.FieldByName('KM_INICIO').AsFloat)+' - KM Final.: '+FormatFloat('###,##0.00', DADOS_CADASTROSf.Oleo_rel.FieldByName('KM_FIM').AsFloat),12, 'D');
        TotGeralX:=0;
        while not DADOSFRENTEf.ITEOLEOS.Eof do begin
          DADOS_CONSULTASF.PRODUTOS.Close;
          DADOS_CONSULTASF.PRODUTOS.SQL.Clear;
          DADOS_CONSULTASF.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(DADOSFRENTEf.ITEOLEOS.FieldByName('CODIGO').AsString));
          DADOS_CONSULTASF.PRODUTOS.Open;
          Imp_Linha(01, 00, DADOSFRENTEf.ITEOLEOS.FieldByName('CODIGO').AsString, 6, 'E');
          if DADOSFRENTEf.ITEOLEOS.fieldbyname('DESCONTO').AsFloat<>0 then begin
            if DADOSFRENTEf.CONF_PADRAO.FieldByname('BARPED').AsString='S' then
              Imp_Linha(00, 01, Copy(DADOS_CONSULTASF.PRODUTOS.FieldByName('NOME').AsString,1,26)+'-', 27, 'E')
            else
              Imp_Linha(00, 01, Copy(DADOS_CONSULTASF.PRODUTOS.FieldByName('NOME').AsString,1,29)+'-', 30, 'E');
            Imp_Linha(00, 00, FormatFloat('###,###0.000',DADOSFRENTEf.ITEOLEOS.fieldbyname('QTD').AsFloat), 10, 'D');
          end
          else begin
            if DADOSFRENTEf.CONF_PADRAO.FieldByname('BARPED').AsString='S' then
              Imp_Linha(00, 01, copy(DADOS_CONSULTASF.PRODUTOS.FieldByName('NOME').AsString,1,37), 37, 'E')
            else
              Imp_Linha(00, 01, DADOS_CONSULTASF.PRODUTOS.FieldByName('NOME').AsString, 40, 'E');
          end;
          Imp_Linha(00, 00, FormatFloat('###,##0.000',DADOSFRENTEf.ITEOLEOS.FieldByName('QTD').Asfloat),13, 'D');
          Imp_Linha(00, 01, DADOS_CONSULTASF.PRODUTOS.FieldByName('UND_V').AsString, 5, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.000',DADOSFRENTEf.ITEOLEOS.FieldByName('PRECO').AsFloat), 13, 'D');
          Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.ITEOLEOS.FieldByName('QTD').AsFloat*(DADOSFRENTEf.ITEOLEOS.FieldByName('PRECO').AsFloat)), 16, 'D');
          TotGeralX:=TotGeralX+(DADOSFRENTEf.ITEOLEOS.FieldByName('QTD').AsFloat*(DADOSFRENTEf.ITEOLEOS.FieldByName('PRECO').AsFloat));
          DADOSFRENTEf.ITEOLEOS.Next;
        end;
        Imp_Linha(02, 79, 'Total.: '+FormatFloat('###,##0.00',TotGeralX), 16, 'D');
        Imp_Linha(01, 00, '', 16, 'D');
        DADOS_CADASTROSf.Oleo_rel.MoveBy(-1);
        if DADOS_CADASTROSf.Oleo_rel.Bof then
          break;
      end;
    end;
    if TelaImpressora='I' then
      Imp_Ejeta;
  end;
begin
  Tipo:='RAW';   // Dica: Imprime com matricial Epson mais rápido
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    Relatorio;
    Imp_Fim
  end;
  DADOS_CONSULTASF.PRODUTOS.Close;
end;

procedure Recibo2(valor,DebAnterior:double;CodigoCliente,Emi01,Emi02,Emi03,Referente,LancamentoCaixa,Lancamento:string);
var dup,Pag,nLin,QuaImp,QuantidadeLin: Integer;
    Tipo, dia, mes, ano , recebi, endereco , CGCCPFRG : String;
begin
  if BobinaFormulario='' then
    TipodeImpressao:=DADOSFRENTEf.CONF_PADRAO.FieldByname('IMPRESSAO').AsString
  else
    TipodeImpressao:=BobinaFormulario;
  Definevarpubl();
  DADOSFRENTEf.CONF_PADRAO.Open;
  DADOS_CADASTROSf.emitente.Open;Tipo:='RAW';   // Dica: Imprime com matricial Epson mais rápido
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
      if QuantidadeEscolhida>0 then
        QuantidadeRecibos:=QuantidadeEscolhida
      else begin
        if DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMREC').AsInteger=0 then
          QuantidadeRecibos:=1
        else
          QuantidadeRecibos:=DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMREC').AsInteger;
      end;
      For QuaImp:=1 To QuantidadeRecibos do begin
        if TipodeImpressao='F' then begin
          nLin:=0;
          Pag :=1;
          Imp_Linha(00, 00, #27#67#33 , 6, 'E');
          Imp_Linha(01, 00, 'Lançamento: '+LancamentoCaixa+'                   RECIBO', 45, 'E');
          Imp_Linha(00, 22, 'R$ '+FormatFloat('###,##0.00', ABS(valor)), 13, 'D');
          Imp_Linha(02, 00, 'Recebi(emos) de.: '+CodigoCliente+'-'+Emi01, 46, 'E');
          if Emi03<>'' then
            Imp_Linha(02, 00, 'Endereço: '+Emi02+', '+Emi03, 46, 'E')
          else
            Imp_Linha(02, 00, 'Endereço: '+Emi02, 46, 'E');
          nLin:=nLin + 5;
          with TExtensof.Create(nil) do begin
            Edit1.Text:=FloatToStr(ABS(valor));
            Button1.Click;
            if Edit3.Text='************************************************************' then begin
              if TipodeImpressao='F' then begin
                Imp_Linha(02, 00, 'A importancia de: ('+Edit2.Text+')', 3, 'E');
                nLin:=nLin + 2;
              end
              else begin
                Imp_Linha(02, 00, 'A importância de:', 3, 'E');
                Imp_Linha(01, 00, DCondensa2+ACondensa5+ASubScript+'('+Edit2.Text+')'+DCondensa2+DSupScript, 3, 'E');
                nLin:=nLin + 2;
              end;
            end
            else begin
              if TipodeImpressao='F' then begin
                Imp_Linha(02, 00, 'A importância de: ('+Edit2.Text+'' , 3, 'E');
                Imp_Linha(01, 00, '                  ' +Edit3.Text+')', 3, 'E');
                nLin:=nLin + 4;
              end
              else begin
                Imp_Linha(02, 00, 'A importância de:' , 3, 'E');
                Imp_Linha(02, 00, DCondensa2+ACondensa5+ASubScript+'('+Edit2.Text+'' +DCondensa2+DSupScript, 3, 'E');
                Imp_Linha(01, 00, DCondensa2+ACondensa5+ASubScript+''+Edit3.Text+')'+DCondensa2+DSupScript, 3, 'E');
                nLin:=nLin + 5;
              end;

            end;
            Free;
          end;
          Imp_Linha(02, 00, 'DEBITO ANTERIOR ....................R$', 43, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.00', DebAnterior), 10, 'D');
          nLin:=nLin + 2;
          if DADOSFRENTEf.CONF_PADRAO.FieldByName('CONTAS').AsString='1' then begin
            if Ref[1]<>'' then
              for dup:=1 to 200 do begin
                if Ref[dup]<>'' then begin
                  if dup=1 then begin
                    Imp_Linha(02, 00, 'Ref.: '+Ref[dup], 60, 'E');
                    nLin:=nLin + 2;
                  end
                  else begin
                    Imp_Linha(01, 06, Ref[dup], 60, 'E');
                    Inc( nLin );
                  end;
                end
                else
                  break;
              end
            else begin
              if FiltPortador='S' then begin
                Imp_Linha(02, 00, '', 60, 'E');
                nLin:=nLin + 2;
              end
              else begin
                Imp_Linha(02, 00, 'Referênte: '+ReferenteDuplicata, 60, 'E');
                nLin:=nLin + 2;
              end;
            end;
            Imp_Linha(02, 00, 'DEBITO ATUAL ........................R$', 43, 'E');
            nLin:=nLin + 2;

            if DebAnterior-valor<0 then
              Imp_Linha(00, 00, FormatFloat('###,##0.00', 0 ), 10, 'D')
            else
              Imp_Linha(00, 00, FormatFloat('###,##0.00', DebAnterior-valor ), 10, 'D');
            if Credito>0 then begin
              Imp_Linha(01, 00, 'Haver(Crédito).......................R$', 43, 'E');
              Imp_Linha(00, 00, FormatFloat('###,##0.00', Credito ), 10, 'D');
              Inc( nLin );
            end;
          end
          else if DADOSFRENTEf.CONF_PADRAO.FieldByName('CONTAS').AsString='1' then begin
            Imp_Linha(02, 00, 'Referente: Pagamento de conta', 60, 'E');
            Imp_Linha(02, 00, 'DEBITO ATUAL ........................R$', 43, 'E');
            nLin:=nLin + 4;
            if valor>DebAnterior then begin
              Imp_Linha(00, 00, FormatFloat('###,##0.00', 0 ), 10, 'D');
              Imp_Linha(01, 00, 'HAVER ...............................R$', 43, 'E');
              Imp_Linha(00, 00, FormatFloat('###,##0.00', valor-DebAnterior ), 10, 'D');
              Inc( nLin );
            end
            else
              Imp_Linha(00, 00, FormatFloat('###,##0.00', DebAnterior-valor ), 10, 'D');
          end;
          dia:=StrZero(StrToInt(FormatDateTime('d',
            DADOSFRENTEf.CONF_PADRAO.FieldByname('DATA').AsDateTime)),2,0);
          mes:=FormatDateTime('mmmm',DADOSFRENTEf.CONF_PADRAO.FieldByname(
            'DATA').AsDateTime); if mes='março' then mes:='marco';
          ano:=FormatDateTime('yyyy',DADOSFRENTEf.CONF_PADRAO.FieldByname(
            'DATA').AsDateTime);
          Imp_Linha(02, 00, Padc(DADOS_CADASTROSf.emitente.FieldByName(
            'CIDADE').AsString+', '+dia+' de '+mes+' de '+ano,78), 3, 'E');
          Imp_Linha(02, 00, 'EMITENTE: '+DADOS_CADASTROSf.emitente.FieldByName(
            'NOME').AsString,55, 'E');
          Imp_Linha(01, 00, 'CNPJ: '+FormatMaskText('##.###.###.####/##;0; ',
            DADOS_CADASTROSf.emitente.fieldByname('CNPJ').Asstring), 46, 'E');
          Imp_Linha(01, 00, 'Endereço: '+DADOS_CADASTROSf.emitente.fieldByname(
            'ENDERECO').Asstring, 46, 'E');
          Imp_Linha(03, 00,
            'Assinatura:_____________________________________________________________________', 80, 'E');
          Imp_Linha(02, 00, '', 3, 'E');
          nLin:=nLin+11;
          if nLin>33 then
            Imp_Ejeta
          else
            Imp_Linha(00, 00, #12+DTudo , 6, 'E');

        end
        else begin
          nLin:=0;
          Pag :=1;
          Imp_Linha(01, 00, 'Lançamento: '+LancamentoCaixa+' - RECIBO DE PAGAMENTO', 48, 'E');
          Imp_Linha(01, 00, ACondensa4+DADOS_CADASTROSf.emitente.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.emitente.FieldByName('NOME').AsString , 6, 'E');
          Imp_Linha(01, 00, 'Endereço: '+DADOS_CADASTROSf.emitente.FieldByName('ENDERECO').AsString+', '+
            DADOS_CADASTROSf.emitente.FieldByName('NUMERO').AsString, 46, 'E');
          Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
          Imp_Linha(01, 00, CodigoCliente+'-'+Emi01, 7, 'E');
          Imp_Linha(01, 00, 'Endereço: '+Emi02+' '+Emi03, 46, 'E');
          Imp_Linha(01, 00, 'DATA....: '+DADOSFRENTEf.CONF_PADRAO.FieldByname('DATA').AsString, 46, 'E');
          Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
          Imp_Linha(01, 00, 'DEBITO ANTERIOR .................R$', 38, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.00', DebAnterior), 10, 'D');
          if DADOSFRENTEf.CONF_PADRAO.FieldByName('CONTAS').AsString='1' then begin
            if Ref[1]<>'' then
              for dup:=1 to 200 do begin
                if Ref[dup]<>'' then begin
                  if dup=1 then begin
                    Imp_Linha(02, 00, 'Referente.: ', 60, 'E');
                    Imp_Linha(01, 01, Ref[dup], 40, 'E');
                    nLin:=nLin + 2;
                  end
                  else begin
                    Imp_Linha(01, 01, Ref[dup], 40, 'E');
                    Inc( nLin );
                  end;
                end
                else
                  break;
              end
            else begin
              if FiltPortador='S' then begin
                Imp_Linha(02, 00, '', 60, 'E');
                nLin:=nLin + 2;
              end
              else begin
                Imp_Linha(02, 00, 'Referênte: '+ReferenteDuplicata, 60, 'E');
                nLin:=nLin + 2;
              end;
            end;
            Imp_Linha(02, 00, 'DEBITO ATUAL ....................R$', 38, 'E');
            if DebAnterior-valor<0 then
              Imp_Linha(00, 00, FormatFloat('###,##0.00', 0 ), 10, 'D')
            else
              Imp_Linha(00, 00, FormatFloat('###,##0.00', DebAnterior-valor ), 10, 'D');
            if Credito>0 then begin
              Imp_Linha(01, 00, 'Haver(Crédito)...................R$', 38, 'E');
              Imp_Linha(00, 00, FormatFloat('###,##0.00', Credito ), 10, 'D');
              Inc( nLin );
            end;
          end
          else if DADOSFRENTEf.CONF_PADRAO.FieldByName('CONTAS').AsString='1' then begin
            Imp_Linha(02, 00, 'Referente: Pagamento de conta', 60, 'E');
            Imp_Linha(02, 00, 'DEBITO ATUAL .........................R$', 38, 'E');
            nLin:=nLin + 4;
            if valor>DebAnterior then begin
              Imp_Linha(00, 00, FormatFloat('###,##0.00', 0 ), 10, 'D');
              Imp_Linha(01, 00, 'HAVER ...........................R$', 38, 'E');
              Imp_Linha(00, 00, FormatFloat('###,##0.00', valor-DebAnterior ), 10, 'D');
              Inc( nLin );
            end
            else
              Imp_Linha(00, 00, FormatFloat('###,##0.00', DebAnterior-valor ), 10, 'D');
          end;
          Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
          Imp_Linha(01, 00, 'MEIOS DE PAGAMENTO.: ',5, 'E');
          DADOSFRENTEf.DiversasFormas.First;
          {
          while not DADOSFRENTEf.DiversasFormas.Eof do begin
            Imp_Linha(01, 00, DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring,17, 'E');
            Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat),31, 'D');
            DADOSFRENTEf.DiversasFormas.Next;
          end;
          }
          while not DADOSFRENTEf.DiversasFormas.Eof do begin
            if (DADOSFRENTEf.DiversasFormas.Fieldbyname('PARCELA').Asstring<>'') and (DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring<>'Conta a Prazo') then begin
              Imp_Linha(01, 00, DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring,17, 'E');
              Imp_Linha(00, 05, '('+DADOSFRENTEf.DiversasFormas.Fieldbyname('PARCELA').Asstring+' X '+
              FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat/DADOSFRENTEf.DiversasFormas.Fieldbyname('PARCELA').AsFloat)+')',15, 'E');
              Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat),11, 'D');
            end
            else begin
              Imp_Linha(01, 00, DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring,17, 'E');
              Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat),31, 'D');
            end;

            // if (DADOSFRENTEf.DiversasFormas.Fieldbyname('TROCO').AsFloat<>0) and (valor<DebAnterior) then begin
            if (DADOSFRENTEf.DiversasFormas.Fieldbyname('TROCO').AsFloat<>0)  then begin
              Imp_Linha(01, 00, 'Troco',17, 'E');
              Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TROCO').AsFloat),31, 'D');
            end;

            DADOSFRENTEf.DiversasFormas.Next;
          end;
          Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
          Imp_Linha(03, 00, 'Assinatura.:...................................', 48, 'E');
          Imp_Linha(06, 00, '.',1, 'E');
          nLin:=nLin + 33;
        end;
        Imp_Fim;
      end;
  end;
  Credito:=0;
end;

procedure ReciboCaixa(valor:double;Rec01,Rec02,Emi01,Emi02,Emi03,Referente,SanSupDev,LancamentoCaixa:string);
var Pag,nLin,QuaImp,QuantidadeLin: Integer;
    Tipo, dia, mes, ano , recebi, endereco , CGCCPFRG : String;
begin
  if BobinaFormulario='' then
    TipodeImpressao:=DADOSFRENTEf.CONF_PADRAO.FieldByname('IMPRESSAO').AsString
  else
    TipodeImpressao:=BobinaFormulario;

  DADOS_CADASTROSf.emitente.Open;
  Definevarpubl();
  Tipo:='RAW';   // Dica: Imprime com matricial Epson mais rápido
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    if QuantidadeEscolhida>0 then
      QuantidadeRecibos:=QuantidadeEscolhida
    else begin
      if DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMREC').AsInteger=0 then
        QuantidadeRecibos:=1
      else
        QuantidadeRecibos:=DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMREC').AsInteger;
    end;
    For QuaImp:=1 To QuantidadeRecibos do begin
      // if DADOSFRENTEf.CONF_PADRAO.FieldByName('IMPRESSAO').AsString='F' then begin
      if TipodeImpressao='F' then begin
        nLin:=0;
        Pag :=1;
        Imp_Linha(00, 00, #27#67#33 , 6, 'E');
        if SanSupDev='Suprimento' then
          Imp_Linha(01, 00, 'Lançamento: '+LancamentoCaixa+'                 RECIBO (SUPRIMENTO)        '+DireiraEsquera(0, 'R$ '+FormatFloat('###,##0.00', ABS(valor)), 15, 'D'), 60, 'E')
        else if SanSupDev='Sangria' then begin
          if DADOSFRENTEf.CONF_PADRAO.FieldByName('RAMO').AsString='COMERCIO DE FERRAGENS' then
            Imp_Linha(01, 00, 'Lançamento: '+LancamentoCaixa+'                 RECIBO                     '+DireiraEsquera(0, 'R$ '+FormatFloat('###,##0.00', ABS(valor)), 15, 'D'), 60, 'E')
          else
            Imp_Linha(01, 00, 'Lançamento: '+LancamentoCaixa+'                 RECIBO (SANGRIA)           '+DireiraEsquera(0, 'R$ '+FormatFloat('###,##0.00', ABS(valor)), 15, 'D'), 60, 'E');
        end
        else if SanSupDev='' then
          Imp_Linha(01, 00, 'Lançamento: '+LancamentoCaixa+'              ( D E V O L U Ç Ã O )         '+DireiraEsquera(0, 'R$ '+FormatFloat('###,##0.00', ABS(valor)), 15, 'D'), 60, 'E');
        if SanSupDev<>'' then begin
          Imp_Linha(02, 00, 'Recebi(emos) de.: '+Rec01, 46, 'E');
          Imp_Linha(02, 00, 'Endereço: '+Rec02, 46, 'E');
        end
        else
          Imp_Linha(04, 00, '', 46, 'E');
        nLin:=nLin + 5;
        with TExtensof.Create(nil) do begin
          Edit1.Text:=FloatToStr(ABS(valor));
          Button1.Click;
          if Edit3.Text='************************************************************' then begin
            // if DADOSFRENTEf.CONF_PADRAO.FieldByname('IMPRESSAO').AsString='F' then begin
            if TipodeImpressao='F' then begin
              Imp_Linha(02, 00, 'A importância de: ('+Edit2.Text+')', 3, 'E');
              nLin:=nLin + 2;
            end
            else begin
              Imp_Linha(02, 00, 'A importância de:', 3, 'E');
              Imp_Linha(01, 00, DCondensa2+ACondensa5+ASubScript+'('+Edit2.Text+')'+DCondensa2+DSupScript, 3, 'E');
              nLin:=nLin + 3;
            end;
          end
          else begin
            // if DADOSFRENTEf.CONF_PADRAO.FieldByname('IMPRESSAO').AsString='F' then begin
            if TipodeImpressao='F' then begin
              Imp_Linha(02, 00, 'A importância de: ('+Edit2.Text+'' , 3, 'E');
              Imp_Linha(01, 00, '                  ' +Edit3.Text+')', 3, 'E');
              nLin:=nLin + 3;
            end
            else begin
              Imp_Linha(02, 00, 'A importância de:' , 3, 'E');
              Imp_Linha(02, 00, DCondensa2+ACondensa5+ASubScript+'('+Edit2.Text+'' +DCondensa2+DSupScript, 3, 'E');
              Imp_Linha(01, 00, DCondensa2+ACondensa5+ASubScript+''+Edit3.Text+')'+DCondensa2+DSupScript, 3, 'E');
              nLin:=nLin + 5;
            end;
            nLin:=nLin + 1;
          end;
          Free;
        end;
        Imp_Linha(02, 00, 'Referente: '+Referente, 46, 'E');
        dia:=StrZero(StrToInt(FormatDateTime('d',DADOSFRENTEf.CONF_PADRAO.FieldByname('DATA').AsDateTime)),2,0);
        mes:=FormatDateTime('mmmm',DADOSFRENTEf.CONF_PADRAO.FieldByname('DATA').AsDateTime); if mes='março' then mes:='marco';
        ano:=FormatDateTime('yyyy',DADOSFRENTEf.CONF_PADRAO.FieldByname('DATA').AsDateTime);
        if SanSupDev<>'' then begin
          Imp_Linha(02, 00, Padc(DADOS_CADASTROSf.emitente.FieldByName('CIDADE').AsString+', '+dia+' de '+mes+' de '+ano,78), 3, 'E');
          Imp_Linha(02, 00, 'EMITENTE: '+Emi01,55, 'E');
          Imp_Linha(01, 00, 'CGC/CPF/RG: '+Emi02, 46, 'E');
          Imp_Linha(01, 00, 'Endereço: '+Emi03, 46, 'E');
        end
        else
          Imp_Linha(06, 00, '', 46, 'E');
        Imp_Linha(03, 00, 'Assinatura:___________________________________________________________________', 48, 'E');
        Imp_Linha(03, 00, '', 3, 'E');
        nLin:=nLin + 17;
        Imp_Linha(00, 00, #12+DTudo , 6, 'E')
      end
      else begin
        nLin:=0;
        Pag :=1;
        // Imp_Linha(01, 00, 'Lançamento: '+LancamentoCaixa+'                 RECIBO (SANGRIA)             '+DireiraEsquera(0, 'R$ '+FormatFloat('###,##0.00', ABS(valor)), 15, 'D'), 60, 'E');
        Imp_Linha(01, 00, 'Lançamento: '+LancamentoCaixa+' - Recebi(emos) de.:', 60, 'E');
        // Imp_Linha(01, 00, 'Recebi(emos) de.:', 60, 'E');
        Imp_Linha(01, 00, ACondensa4+'Nome.: '+Rec01, 46, 'E');
        Imp_Linha(01, 00, 'End..: '+Rec02, 46, 'E');
        Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
        Imp_Linha(01, 00, 'Ref..: '+Referente, 46, 'E');
        Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
        Imp_Linha(01, 00, 'EMITENTE: ',9, 'E');
        Imp_Linha(01, 00, 'Nome.: '+Emi01, 46, 'E');
        Imp_Linha(01, 00, 'Doc..: '+Emi02, 46, 'E');
        Imp_Linha(01, 00, 'End..: '+Emi03, 46, 'E');
        Imp_Linha(01, 00, 'DATA....: '+DADOSFRENTEf.CONF_PADRAO.FieldByname('DATA').AsString, 46, 'E');
        Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
        Imp_Linha(01, 00, 'VALOR PAGO EM '+DateToStr(date)+' ......... ', 38, 'E');
        Imp_Linha(00, 00, FormatFloat('###,##0.00', ABS(valor)), 10, 'D');
        Imp_Linha(03, 00, 'Assinatura.:...................................', 48, 'E');
          Imp_Linha(06, 00, '',1, 'E');
        nLin:=nLin + 34;
      end;
    end;
  end;
  Imp_Fim;
end;

procedure RelatoriodeCaixa(DataInicial,DataFinal,CaixaInicial,Caixafinal,PeridoInicial,ReceitasDespesas:string;
                           CaixaVista,SangriaSuprimento,Analitico:boolean);
var
  Tipo , Historico, AvistaouPrazo : String;
  Pag ,nLin, SaldoInciala : Integer;
  Data1 : TDaTeTime;
  TotEnt, TotSai, TotGe, Lucro, TotPro, TotCupQua, TotCupTot : double;
  procedure Cabecalho;
  begin
    Definevarpubl();
    tamanhofonte:=6;
    // tamanhofonte:=12;
    if BobinaFormulario='F' then
      Imp_InicializaPagina;
    DADOS_CADASTROSf.emitente.Open;
    Imp_Linha(01, 00, ACondensa5+DADOS_CADASTROSf.emitente.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.emitente.FieldByName('NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
    // if VamosVerLucro='' then begin
    if BobinaFormulario='F' then begin
      Imp_Linha(00, 00, '                                                                                                                                Folha ', 25, 'E');
      Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
      if DataFinal<>'' then begin
        if (CaixaVista) and not (SangriaSuprimento)  then
          Imp_Linha(01, 00, PADC('RELATORIO DE CONFERENCIA DE CAIXA A VISTA - '+CaixaInicial+' - DATA '+DataInicial+' A '+DataFinal+' - PERIODO: '+PeridoInicial,156), 42, 'E')
        else if not (CaixaVista) and not (SangriaSuprimento)  then
          Imp_Linha(01, 00, PADC('RELATORIO DE CONFERENCIA DE CAIXA A PRAZO - '+CaixaInicial+' - DATA '+DataInicial+' A '+DataFinal+' - PERIODO: '+PeridoInicial,156), 42, 'E')
        else if (CaixaVista) and (SangriaSuprimento) then
          Imp_Linha(01, 00, PADC('RELATORIO DE CONFERENCIA DE CAIXA OUTROS  - '+CaixaInicial+' - DATA '+DataInicial+' A '+DataFinal+' - PERIODO: '+PeridoInicial,156), 42, 'E');
      end
      else begin
        if (CaixaVista) and not (SangriaSuprimento)  then
          Imp_Linha(01, 00, PADC('RELATORIO DE CONFERENCIA DE CAIXA A VISTA - '+CaixaInicial+' - DATA '+DataInicial+' - PERIODO: '+PeridoInicial,156), 42, 'E')
        else if not (CaixaVista) and not (SangriaSuprimento)  then
          Imp_Linha(01, 00, PADC('RELATORIO DE CONFERENCIA DE CAIXA A PRAZO - '+CaixaInicial+' - DATA '+DataInicial+' - PERIODO: '+PeridoInicial,156), 42, 'E')
        else if (CaixaVista) and (SangriaSuprimento) then
          Imp_Linha(01, 00, PADC('RELATORIO DE CONFERENCIA DE CAIXA OUTROS  - '+CaixaInicial+' - DATA '+DataInicial+' - PERIODO: '+PeridoInicial,156), 42, 'E');
      end;
      Imp_Linha(01, 00, StringOfChar('-', 156), 156, 'E');
      Imp_Linha(01, 00, '*--DATA--* *-HORA-* *-NR.DOC-*  *--------------HISTORICO-------------*  C R E D I T O  *D E B I T O*  *-S A L D O-* *------------- OBSERVACAO -------------*', 154, 'E');
      Imp_Linha(01, 00, StringOfChar('-', 156), 156, 'E');
    end
    else begin

      if (CaixaVista) and not (SangriaSuprimento)  then begin
        Imp_Linha(01, 00, 'RELATORIO DE CONFERENCIA DE CAIXA A VISTA '+CaixaInicial, 42, 'E');
        Imp_Linha(01, 00, 'DATA '+DataInicial+' A '+DataFinal+' - PERIODO: '+PeridoInicial, 42, 'E')
      end
      else if not (CaixaVista) and not (SangriaSuprimento)  then begin
        Imp_Linha(01, 00, 'RELATORIO DE CONFERENCIA DE CAIXA A PRAZO '+CaixaInicial, 42, 'E');
        Imp_Linha(01, 00, 'DATA '+DataInicial+' A '+DataFinal+' - PERIODO: '+PeridoInicial, 42, 'E');
      end;

      Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
      // Imp_Linha(01, 00, 'NR.DOC *----------------HISTORICO--------------*', 48, 'E');
      // Imp_Linha(01, 00, 'CRED./DEB. *-SALDO-* *-------OBSERVACAO -------*', 48, 'E');
      // Imp_Linha(01, 00, 'NR.DOC Hora *------------HISTORICO-------------*', 48, 'E');
      Imp_Linha(01, 00, 'NR.DOC *----------------HISTORICO--------------*', 48, 'E');
      Imp_Linha(01, 00, '*-Hora-*  *--CREDITO/DEBITO--* *-----SALDO-----*', 48, 'E');
      Imp_Linha(01, 00, '*------------------OBSERVACAO------------------*', 48, 'E');
      Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');

    end;
    // end;
    {
    else begin
      Imp_Linha(00, 72, 'Folha', 6, 'E');
      Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
      if (CaixaVista) and not (SangriaSuprimento)  then
        Imp_Linha(01, 11, 'RELATORIO DE LUCRO DO CAIXA A VISTA - '+CaixaInicial+' - DATA '+DataInicial+' - PERIODO: '+PeridoInicial, 42, 'E')
      else if not (CaixaVista) and not (SangriaSuprimento)  then
        Imp_Linha(01, 11, 'RELATORIO DE LUCRO DO CAIXA A PRAZO - '+CaixaInicial+' - DATA '+DataInicial+' - PERIODO: '+PeridoInicial, 42, 'E')
      else if (CaixaVista) and (SangriaSuprimento) then
        Imp_Linha(01, 11, 'RELATORIO DE LUCRO DO CAIXA OUTROS - '+CaixaInicial+' - DATA '+DataInicial+' - PERIODO: '+PeridoInicial, 42, 'E');
      Imp_Linha(01, 00, StringOfChar('-', 100), 100, 'E');
      Imp_Linha(01, 00, '*--DATA--* *-HORA-* NR.DOC  *----------------HISTORICO---------------*  *-L U C R O-*  *-ACUMULADO-*', 85, 'E');
      Imp_Linha(01, 00, StringOfChar('-', 100), 100, 'E');
    end;
    }
    nLin := nLin + 7;
  end;
begin
  ImprimePaisagem:='S';
  TotSai:=0; TotEnt:=0;
  if DataInicial = '  /  /    ' then begin
    Application.Messagebox('Data do movimento está em branco !!!','Confirmação',Mb_Ok+MB_ICONSTOP);
    Exit;
  end;
  if (CaixaInicial = '') or (CaixaInicial = '00') then begin
    Application.Messagebox('Código do caixa está em branco !!!','Confirmação',Mb_Ok+MB_ICONSTOP);
    Exit;
  end;
  if (PeridoInicial = '') or (PeridoInicial = '00000') then begin
    Application.Messagebox('Código do período está em branco !!!','Confirmação',Mb_Ok+MB_ICONSTOP);
    Exit;
  end;
  Data1 := StrToDate(DataInicial);
  DADOSFRENTEf.CAIXA_x.Close;
  if DataFinal<>'' then begin
    if CaixaVista then begin
      AvistaouPrazo:='A';
    end
    else begin
      AvistaouPrazo:='P';
    end;
    DADOSFRENTEf.CAIXA_x.SQL.Clear;
    DADOSFRENTEf.CAIXA_x.SQL.Add('SELECT * FROM CAIXA WHERE ' +
      'AVIS_PRAZO='+QuotedStr(AvistaouPrazo)+
      ' and DATA>= :_dataini and DATA<= :_dataFin  order by CODIGO');
    DADOSFRENTEf.CAIXA_x.ParamByName('_dataini').asdatetime :=
      StrToDate(DataInicial);
    DADOSFRENTEf.CAIXA_x.ParamByName('_dataFin').asdatetime :=
      StrToDate(DataFinal);
    DADOSFRENTEf.CAIXA_x.Open;
    DADOSFRENTEf.CAIXA_x.First;
  end;
  DADOSFRENTEf.CAIXA_x.First;
  if DADOSFRENTEf.CAIXA_x.IsEmpty then begin
    ShowMessage('Caixa Inexistente !!!');
    MENSPROCF.Close;
    exit
  end;
  DADOSFRENTEf.HISTORIC_REL.Open;
  Tipo:='RAW';
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    nLin := 0;
    Pag  := 1;
    SaldoInciala:= 0;
    if TelaImpressora='T' then
      Cabecalho;
    while not DADOSFRENTEf.CAIXA_x.Eof do begin
      if SangriaSuprimento  then
        if DADOSFRENTEf.CAIXA_x.FieldByName('MARCA').AsString='' then begin
          DADOSFRENTEf.CAIXA_x.Next;
          continue;
        end;
      if DADOSFRENTEf.CAIXA_x.FieldByName('SALDO').AsString='S' then
        SaldoInciala:=SaldoInciala+1;
      if (DADOSFRENTEf.CAIXA_x.FieldByName('SALDO').AsString='S') and (SaldoInciala>1) then begin
        DADOSFRENTEf.CAIXA_x.Next;
        continue;
      end;
      if (nLin=0) and (TelaImpressora='I') then
        Cabecalho;
      DADOSFRENTEf.HISTORIC_REL.Locate('CODIGO', DADOSFRENTEf.CAIXA_x.FieldByName('HISTORICO').AsString, []);
      if DADOSFRENTEf.CAIXA_x.FieldByName('HISTORICOC').AsString = '' then
        Historico := DADOSFRENTEf.HISTORIC_REL.FieldByName('HISTORICOC').AsString
      else
        Historico := DADOSFRENTEf.CAIXA_x.FieldByName('HISTORICOC').AsString;
      if BobinaFormulario='F' then begin
        Imp_Linha(01, 00, DADOSFRENTEf.CAIXA_x.FieldByName('DATA').AsString, 10, 'E');
        Imp_Linha(00, 01, DADOSFRENTEf.CAIXA_x.FieldByName('Hora').AsString, 9, 'E');
        Imp_Linha(00, 00, DADOSFRENTEf.CAIXA_x.FieldByName('DOCUMENTO').AsString, 8, 'E');
        Imp_Linha(00, 03, COPY(Historico,1,42), 42, 'E');
      end
      else begin
        Imp_Linha(01, 00, copy(DADOSFRENTEf.CAIXA_x.FieldByName('DOCUMENTO').AsString,1,9), 9, 'E');
        Imp_Linha(00, 01, COPY(Historico,1,38), 38, 'E');
      end;
      if BobinaFormulario='B' then begin
        // Imp_Linha(01, 00, '', 00, 'E');
        Imp_Linha(01, 00, copy(DADOSFRENTEf.CAIXA_x.FieldByName('Hora').AsString,1,8), 8, 'E');
        if DADOSFRENTEf.CAIXA_x.FieldByName('DC').AsString='D' then
          Imp_Linha(00, 01, FormatFloat('###,##0.00', DADOSFRENTEf.CAIXA_x.FieldByName('Valor').AsFloat)+'-', 21, 'D')
        else
          Imp_Linha(00, 01, FormatFloat('###,##0.00', DADOSFRENTEf.CAIXA_x.FieldByName('Valor').AsFloat)+'+', 21, 'D');
      end
      else begin
        if DADOSFRENTEf.CAIXA_x.FieldByName('DC').AsString='D' then
          Imp_Linha(00, 00, FormatFloat('###,##0.00', DADOSFRENTEf.CAIXA_x.FieldByName('Valor').AsFloat)+'-', 26, 'D')
        else begin
          Imp_Linha(00, 00, FormatFloat('###,##0.00', DADOSFRENTEf.CAIXA_x.FieldByName('Valor').AsFloat)+'+', 11, 'D');
          Imp_Linha(00, 00, '', 15, 'D');
        end;
      end;
      if DADOSFRENTEf.CAIXA_x.FieldByName('DC').AsString='C' then begin
        TotEnt := Totent+DADOSFRENTEf.CAIXA_x.FieldByName('Valor').AsFloat;
        TotGe :=TotGe+DADOSFRENTEf.CAIXA_x.FieldByName('Valor').AsFloat;
      end;
      if DADOSFRENTEf.CAIXA_x.FieldByName('DC').AsString='D' then begin
        TotSai := TotSai+DADOSFRENTEf.CAIXA_x.FieldByName('Valor').AsFloat;
        TotGe :=TotGe-DADOSFRENTEf.CAIXA_x.FieldByName('Valor').AsFloat;
      end;
      if BobinaFormulario='F' then begin
        Imp_Linha(00, 00, FormatFloat('###,##0.00', TotGe), 15, 'D');
        Imp_Linha(00, 01, DADOSFRENTEf.CAIXA_x.FieldByName('OBSERVACAO').AsString, 40, 'E');
      end
      else begin
        // Imp_Linha(00, 01, FormatFloat('###,##0.00', TotGe), 9, 'D');
        Imp_Linha(00, 01, FormatFloat('###,##0.00', TotGe), 17, 'D');
        // Imp_Linha(00, 01, copy(DADOSFRENTEf.CAIXA_x.FieldByName('OBSERVACAO').AsString,1,28), 28, 'E');
        if DADOSFRENTEf.CAIXA_x.FieldByName('OBSERVACAO').AsString<>'' then
          Imp_Linha(01, 00, copy(DADOSFRENTEf.CAIXA_x.FieldByName('OBSERVACAO').AsString,1,40), 40, 'E');
      end;

      if Analitico=true then begin
        DADOSFRENTEf.ITEVENDAS_ECF2.Close;
        DADOSFRENTEf.ITEVENDAS_ECF2.SQL.Clear;
        DADOSFRENTEf.ITEVENDAS_ECF2.SQL.Add('Select * from ITEVENDAS_ECF2 where ' +
          'cupom='+DADOSFRENTEf.CAIXA_x.FieldByName('DOCUMENTO').AsString);
        DADOSFRENTEf.ITEVENDAS_ECF2.Open;
        DADOSFRENTEf.PRODUTOS.Open;
        if not DADOSFRENTEf.ITEVENDAS_ECF2.IsEmpty then begin
          TotCupQua:=0;
          TotCupTot:=0;
          while not DADOSFRENTEf.ITEVENDAS_ECF2.Eof do begin
            TotPro:=0;
            TotPro:=TotPro+(DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat*(DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('PRECO').AsFloat
              -DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DESCONTORAT').AsFloat
              +DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ACRESCIMORAT').AsFloat
              -DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('DESCONTO').AsFloat
              +DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ACRESCIMO').AsFloat));
            Imp_Linha(01, 06, DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('ITEM').Asstring+' - ', 7, 'E');
            DADOSFRENTEf.PRODUTOS.Close;
            DADOSFRENTEf.PRODUTOS.SQL.Clear;
            DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(DADOSFRENTEf.ITEVENDAS_ECF2.Fieldbyname('CODIGO').Asstring));
            DADOSFRENTEf.PRODUTOS.Open;
            Imp_Linha(00, 00, DADOSFRENTEf.PRODUTOS.Fieldbyname('Codigo').Asstring+'-', 7, 'E');
            Imp_Linha(00, 00, DADOSFRENTEf.PRODUTOS.Fieldbyname('NOME').Asstring, 40, 'E');
            Imp_Linha(00, 00, FormatFloat('###,###0.000',DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat),12, 'D');
            Imp_Linha(00, 00, FormatFloat('###,##0.00',TotPro),12, 'D');
            Inc( nLin );
            TotCupTot:=TotCupTot+TotPro;
            TotCupQua:=TotCupQua+DADOSFRENTEf.ITEVENDAS_ECF2.FieldByName('QTD').AsFloat;
            DADOSFRENTEf.ITEVENDAS_ECF2.Next;
          end;
          Imp_Linha(01, 06, 'Total ----------------------------------------------> ',17, 'E');
          Imp_Linha(00, 00, FormatFloat('###,###0.000',TotCupQua),12, 'D');
          Imp_Linha(00, 00, FormatFloat('###,##0.00',TotCupTot),12, 'D');
          Inc( nLin );
        end;
        DADOSFRENTEf.ITEVENDAS_ECF2.Close;
        DADOSFRENTEf.PRODUTOS.Close;
      end;
      // end;
      Inc( nLin );
      if nLin >= 60 then begin
        if TelaImpressora='I' then
          Imp_Ejeta;
        nLin := 0;
        Pag  := Pag+1;
      end;
      DADOSFRENTEf.CAIXA_x.Next;
    end;
    if BobinaFormulario='B' then begin
      Imp_Linha(02,00,'Totais Credito/Debito -> ',25, 'E');
      Imp_Linha(00,00,FormatFloat('###,##0.00',TotEnt)+'+',12, 'D');
      Imp_Linha(00,00,FormatFloat('###,##0.00',TotSai)+'-'+Dcondensa5,11, 'D');
      Imp_Linha(06, 00, '.', 00, 'E');
    end
    else begin
      Imp_Linha(02,34,'Totais de Credito / Debito ->',25, 'E');
      Imp_Linha(00,00,FormatFloat('###,##0.00',TotEnt)+'+',22, 'D');
      Imp_Linha(00,00,FormatFloat('###,##0.00',TotSai)+'-'+Dcondensa5,15, 'D');
    end;
    Imp_Ejeta;
    DADOSFRENTEf.CAIXA_x.Close;
    Imp_Fim;
  end;
  MENSPROCF.Close;
end;

// Procedure ImprPedido;
// Procedure ImprPedido(ClienteFornecedorx,PedidoEntradaSaida,ItemEntradaSaida:TUniTable);
Procedure ImprPedido(ClienteFornecedorx:TUniTable;PedidoEntradaSaida,ItemEntradaSaida:TUniQuery);
  var
  Pag,nLin,X,Cont,C,Traco,SO,QuaMei,QuaParX, QuaItem, QuaFolhaImp,Pagina, QuantidaTracos: Integer;
  Tipo,EntIm,Resto,QuantidadePaginas: String;
  QuaFolhas, TotalAVista, TotalAPrazo :double;

  procedure Cabecalho;
  begin
    DefineVarPubl();
    DADOSFRENTEf.CONF_PADRAO.Open;
    if BobinaFormulario='' then
      TipodeImpressao:=DADOSFRENTEf.CONF_PADRAO.FieldByname('IMPRESSAO').AsString
    else if BobinaFormulario='F' then
      TipodeImpressao:=BobinaFormulario
    else if BobinaFormulario='B' then
      TipodeImpressao:=BobinaFormulario;
    // DADOSFRENTEf.VENDAS_ECF2.Open;
    // FiltroDADOCLIE;


    ClienteFornecedorx.Close;
    ClienteFornecedorx.SQL.Clear;
    if ClienteFornecedorx=DADOSMOVIMENTOF.CLIENTESPEDIDO then
      ClienteFornecedorx.SQL.Add('Select * from CLIENTES where CODIGO='+QuotedStr(PedidoEntradaSaida.FieldByName('CLIENTE').AsString))
    else
      ClienteFornecedorx.SQL.Add('Select * from FORNECEDORES where CODIGO='+QuotedStr(PedidoEntradaSaida.FieldByName('FORNECEDOR').AsString));

    ClienteFornecedorx.Open;

    if TipodeImpressao='F' then begin
       Imp_InicializaPagina;
       if TelaImpressora='I' then
         Imp_Linha(00, 00, #27#67#33 , 6, 'E');
       Imp_Linha(01, 00,  AExpandido+DCondensa3+DSupScript+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+Copy(DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString,1,36)+DExpandido, 0, 'E');
       Imp_Linha(01, 00,  ACondensa2+'ENDEREÇO: '+ DADOS_CADASTROSf.EMITENTE.FieldByName('ENDERECO').AsString, 00, 'E');
       Imp_Linha(00, 00, ' - FONE:'+FormatMasktext('##-####-####;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('TELEFONE').AsString), 00, 'E');
       Imp_Linha(01, 00, 'DATA: '+PedidoEntradaSaida.FieldByName('EMISSAO').AsString, 14, 'E');
       Imp_Linha(00, 01, 'HORA: '+PedidoEntradaSaida.FieldByName('HORA').AsString, 14, 'E');
       // Imp_Linha(00, 01, 'CAIXA: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('N_CAIXA').AsString, 1, 'E');
       // Imp_Linha(00, 01, 'PERÍODO: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('TURNO').AsString, 1, 'E');

       Pagina:=Pagina+1;
       if QuaFolhaImp>1 then begin
         QuantidadePaginas:='-'+FloatToStr(Pagina)+'/'+FloatToStr(QuaFolhaImp)
       end
       else
         QuantidadePaginas:='';
       Imp_Linha(00, 01, AExpandido+' - Nr. Lançamento do Pedido: '+TiraZerosAEsquera(PedidoEntradaSaida.FieldByName('ID').AsString)+QuantidadePaginas+DExpandido, 8, 'E');

       {
       DADOSFRENTEf.VENDEDORES.Open;
       DADOSFRENTEf.VENDEDORES.Locate('CODIGO',DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString,[]);
       Imp_Linha(01, 00, 'VENDEDOR: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString+'-'+DADOSFRENTEf.VENDEDORES.FieldByName('NOME').AsString, 0, 'E');
       }
       Imp_Linha(01, 00, 'CNPJ: '+formatMasktext('##.###.###.####-##;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('CNPJ').AsString),20, 'E');
       Imp_Linha(00, 00, ' - IE: '+DADOS_CADASTROSf.EMITENTE.FieldByName('IE').AsString,20, 'E');

       Imp_Linha(01, 00, StringOfChar('-', 95), 95, 'E');

       // ClienteFornecedorx

       {
       if ClienteFornecedorx.FieldByName('ENTREGADOR').AsString<>'' then
         Imp_Linha(00, 00, ' - ENTREGADOR: '+ClienteFornecedorx.FieldByName('ENTREGADOR').AsString, 0, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 95), 95, 'E');
       Imp_Linha(00, 00, ACondensa3,00, 'E');
       Imp_Linha(01, 00, 'CLIENTE..: '+ClienteFornecedorx.FieldByName('CODIGO').AsString+'-'+ClienteFornecedorx.FieldByName('NOME').AsString, 0, 'E');
       if ClienteFornecedorx.FieldByName('PORTADOR').AsString<>'' then
         Imp_Linha(00, 00, ' - PORTADOR: '+ClienteFornecedorx.FieldByName('PORTADOR').AsString, 0, 'E');
       }

       Imp_Linha(01, 00, 'CLIENTE..: '+ClienteFornecedorx.FieldByName('CODIGO').AsString+'-'+ClienteFornecedorx.FieldByName('NOME').AsString, 0, 'E');
       Imp_Linha(01, 00, 'ENDEREÇO.. '+ClienteFornecedorx.FieldByName('ENDERECO').AsString,0, 'E');
       if ClienteFornecedorx.FieldByName('NUMERO').AsString<>'' then
          Imp_Linha(00, 01, ClienteFornecedorx.FieldByName('NUMERO').AsString, Length(ClienteFornecedorx.FieldByName('NUMERO').AsString), 'E');
       if ClienteFornecedorx.FieldByName('BAIRRO').AsString<>'' then
         Imp_Linha(00, 00, ' - BAIRRO: '+ClienteFornecedorx.FieldByName('BAIRRO').AsString,0, 'E');
       if ClienteFornecedorx.FieldByName('CPF').AsString>'' then
         Imp_Linha(00, 00, ' - Cep: '+FormatMasktext('#####-###;0; ',ClienteFornecedorx.FieldByName('CPF').AsString),0, 'E');
       {
       if ClienteFornecedorx.FieldByName('OBSERVACAO').AsString<>'' then
         Imp_Linha(00, 00, ' - DADOS: '+ ClienteFornecedorx.FieldByName('OBSERVACAO').AsString, 0, 'E');
         }
       Imp_Linha(01, 00, 'CIDADE...: '+ClienteFornecedorx.FieldByName('CIDADE').AsString,0, 'E');
       if ClienteFornecedorx.FieldByName('UF').AsString<>'' then
         Imp_Linha(00, 00, ' - UF: ' + Copy(ClienteFornecedorx.FieldByName('UF').AsString,1,20) , 01, 'E');
       if ClienteFornecedorx.FieldByName('TELEFONE').AsString<>'' then
         Imp_Linha(00, 00, ' - TELEFONE: '+FormatMasktext('##-####-####;0; ',ClienteFornecedorx.FieldByName('TELEFONE').AsString),0, 'E');
       if ClienteFornecedorx.FieldByName('CPF').AsString<>'' then
         Imp_Linha(01, 00, 'CPF: '+formatMasktext('###.###.###-##;0; ',ClienteFornecedorx.FieldByName('CPF').AsString),20, 'E')
       else if ClienteFornecedorx.FieldByName('CNPJ').AsString<>'' then
         Imp_Linha(01, 00, 'CNPJ: '+formatMasktext('##.###.###.####-##;0; ',ClienteFornecedorx.FieldByName('CNPJ').AsString),20, 'E');
       if ClienteFornecedorx.FieldByName('IE').AsString<>'' then
         Imp_Linha(00, 00, ' - IE: '+ClienteFornecedorx.FieldByName('IE').AsString,20, 'E');
       {
       if ClienteFornecedorx.FieldByName('IPR').AsString<>'' then
         Imp_Linha(00, 00, ' - C.I.P.R.: '+ClienteFornecedorx.FieldByName('IPR').AsString,20, 'E');
         }
       Imp_Linha(00, 00, DCondensa3,00, 'E');
       Imp_Linha(00, 00, ACondensa2,00, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 95), 95, 'E');
       Imp_Linha(01, 00, 'CÓDIGO *---------------DESCRIÇÃO--------------* *---QTDE---* UNI *-VALOR UNIT-* *-VALOR TOTAL-*',80, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 95), 95, 'E');
    end
    else begin
       // FiltroDADOCLIE;
       Imp_Linha(01, 00, ACondensa3+DADOS_CADASTROSf.EMITENTE.FieldByName('CODIGO').AsString+'-'+DADOS_CADASTROSf.EMITENTE.FieldByName('NOME').AsString, 6, 'E');
       Imp_Linha(01, 00, 'END.: '+ DADOS_CADASTROSf.EMITENTE.FieldByName('ENDERECO').AsString + ' - ' + DADOS_CADASTROSf.EMITENTE.FieldByName('NUMERO').AsString, 30, 'E');
       Imp_Linha(01, 00, 'BAI.: '+ DADOS_CADASTROSf.EMITENTE.FieldByName('BAIRRO').AsString, 21, 'E');
       Imp_Linha(00, 00, ' CID.:'+ DADOS_CADASTROSf.EMITENTE.FieldByName('CIDADE').AsString, 01, 'E');
       Imp_Linha(00, 00, '-' + DADOS_CADASTROSf.EMITENTE.FieldByName('UF').AsString, 02, 'E');
       Imp_Linha(01, 00, 'FONE: '+FormatMasktext('##-####-####;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('TELEFONE').AsString), 14, 'E');
       Imp_Linha(00, 05, 'CEL: '+FormatMasktext('##-####-####;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('CELULAR').AsString), 14, 'E');
       {
       DADOSFRENTEf.VENDEDORES.Open;
       DADOSFRENTEf.VENDEDORES.Locate('CODIGO',DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString,[]);
       }
       Imp_Linha(01, 00, 'CNPJ: '+formatMasktext('##.###.###.####-##;0; ',DADOS_CADASTROSf.EMITENTE.FieldByName('CNPJ').AsString),20, 'E');
       Imp_Linha(00, 00, ' - IE: '+DADOS_CADASTROSf.EMITENTE.FieldByName('IE').AsString,20, 'E');
       // Imp_Linha(01, 00, 'VENDEDOR: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('VENDEDOR').AsString+'-'+DADOSFRENTEf.VENDEDORES.FieldByName('NOME').AsString, 0, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
       Imp_Linha(01, 00, 'DATA: '+DADOSFRENTEf.CONF_PADRAO.FieldByname('DATA').AsString, 8, 'E');
       Imp_Linha(00, 01, TimeToStr(Time), 8, 'E');
       Imp_Linha(00, 01, 'Nr.Lançamento.: '+PedidoEntradaSaida.FieldByName('ID').AsString, 22, 'D');
       // Imp_Linha(00, 01, 'Nr.Lançamento.: '+PedidoEntradaSaida.FieldByName('ID').AsString, 10, 'E');
       {
       Imp_Linha(00, 02, 'Nr.Docu.: '+DADOSFRENTEf.VENDAS_ECF2.Fieldbyname('CUPOM').Asstring, 8, 'E');
       }

       // Imp_Linha(00, 01, AExpandido+' - Numero de Lançamento do Pedido: '+TiraZerosAEsquera(PedidoEntradaSaida.FieldByName('ID').AsString)+QuantidadePaginas+DExpandido, 8, 'E');

       Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
       Imp_Linha(01, 00, ClienteFornecedorx.FieldByName('CODIGO').AsString+'-'+COPY(ClienteFornecedorx.FieldByName('NOME').AsString,1,35), 40, 'E');
       Imp_Linha(01, 00, 'END.: ' + ClienteFornecedorx.FieldByName('ENDERECO').AsString+' '+ClienteFornecedorx.FieldByName('NUMERO').AsString ,30, 'E');
       Imp_Linha(01, 00, 'BAI.: ' + Copy(ClienteFornecedorx.FieldByName('BAIRRO').AsString,1,15) , 21, 'E');
       Imp_Linha(00, 00, ' CID.:' + Copy(ClienteFornecedorx.FieldByName('CIDADE').AsString,1,20) , 01, 'E');
       Imp_Linha(00, 00, '-' + ClienteFornecedorx.FieldByName('UF').AsString, 02, 'E');

       {
       if ClienteFornecedorx.FieldByName('OBSERVACAO').AsString<>'' then
         Imp_Linha(01, 00, 'DADOS: '+ ClienteFornecedorx.FieldByName('OBSERVACAO').AsString, 0, 'E');
         }

       if ClienteFornecedorx.FieldByName('TELEFONE').AsString<>'' then
         Imp_Linha(01, 00, 'TELEFONE: '+FormatMasktext('##-####-####;0; ',ClienteFornecedorx.FieldByName('TELEFONE').AsString),0, 'E');
       if ClienteFornecedorx.FieldByName('CPF').AsString<>'' then
         Imp_Linha(01, 00, 'CPF: '+formatMasktext('###.###.###-##;0; ',ClienteFornecedorx.FieldByName('CPF').AsString),20, 'E')
       else if ClienteFornecedorx.FieldByName('CNPJ').AsString<>'' then
         Imp_Linha(01, 00, 'CNPJ: '+formatMasktext('##.###.###.####-##;0; ',ClienteFornecedorx.FieldByName('CNPJ').AsString),20, 'E');
       if ClienteFornecedorx.FieldByName('IE').AsString<>'' then
         Imp_Linha(00, 00, ' - IE: '+ClienteFornecedorx.FieldByName('IE').AsString,20, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
       Imp_Linha(01, 00, 'ITEM  CODIGO               DESCRIÇÃO            ',40, 'E');
       Imp_Linha(01, 00, 'QTD.UN. X VL. UNITARIO( R$)         VL ITEM( R$)',40, 'E');
       Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
    end;
  end;

  procedure ASSINATURA;
  begin
    if TipodeImpressao='F' then begin
      Imp_Linha(02, 00, 'TOTAL DO PEDIDO.:',18, 'E');
      Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',PedidoEntradaSaida.FieldByName('TOTAL').AsFloat)+DEnfatizad,8, 'D');

      {
      Imp_Linha(02, 00, 'TOTAL DA CONTA.:',17, 'E');
      Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat)+DEnfatizad,8, 'D');

      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('FRETE').AsFloat>0 then begin
        Imp_Linha(00, 01, '- FRETE: ',9, 'E');
        Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('FRETE').AsFloat)+DEnfatizad,8, 'D');
      end;

      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TAXAENTREGA').AsFloat>0 then begin
        Imp_Linha(00, 01, '- TAXA DE ENTREGA: ',19, 'E');
        Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TAXAENTREGA').AsFloat)+DEnfatizad,8, 'D');
      end;

      if DADOSFRENTEf.CONF_PADRAO.fieldbyname('ACRESDESCON').AsString='S' then begin
        if DADOSFRENTEf.VENDAS_ECF2.FieldByName('Desconto').AsFloat>0 then begin
          Imp_Linha(00, 01, '- DESCONTO: ',12, 'E');
          Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('Desconto').AsFloat)+DEnfatizad,8, 'D');
        end;
      end;

      if DADOSFRENTEf.CONF_PADRAO.fieldbyname('ACRESDESCON').AsString='S' then begin
        if DADOSFRENTEf.VENDAS_ECF2.FieldByName('ACRESCIMO').AsFloat>0 then begin
          Imp_Linha(00, 01, '- ACRESCIMO: ',13, 'E');
          Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('ACRESCIMO').AsFloat)+DEnfatizad,8, 'D');
        end;
      end;
      Imp_Linha(00, 01, '- Total a Pagar: ',15, 'E');
      Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TOTALPAGO').AsFloat)+DEnfatizad,8, 'D');
      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TROCO').AsFloat>0 then begin
        Imp_Linha(00, 01, '- Troco: ',8, 'E');
        Imp_Linha(00, 00, AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TROCO').AsFloat)+DEnfatizad,8, 'D');
      end;
      FiltroItensFormasPagamento;
        DADOSFRENTEf.DiversasFormas.First;
        Imp_Linha(01, 00, 'PG.: ',5, 'E');
        Traco:=0;
        QuaMei:=0;
        while not DADOSFRENTEf.DiversasFormas.Eof do begin
          Imp_Linha(00, 01, DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring+'.:'+' '+AEnfatizad+FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat)+DEnfatizad,
          Length(DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring+'.: ')+
          Length(FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat))+3
          , 'E');
          DADOSFRENTEf.DiversasFormas.Next;
        end;
      FiltroItensContasReceber;
      if not DataFinanceiro.RECEBER.IsEmpty then begin
        DataFinanceiro.RECEBER.First;
        SO:=0;
        while not DataFinanceiro.RECEBER.Eof do begin
          SO:=SO+1;
          DataFinanceiro.RECEBER.Next;
          if SO=4 then
            break;
        end;
        DataFinanceiro.RECEBER.Last;
        QUAPAR:=DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString;
        if StrToInt(DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString)<5 then begin
            if SO=1 then
              Imp_Linha(01, 00, 'VENCIMENTO.: ',14, 'E')
            else begin
              if SO=4 then
                Imp_Linha(00, 00, ACondensa3+'',0, 'E');
              Imp_Linha(01, 00, 'VENCIMENTOS.: ',15, 'E');
            end;
            DataFinanceiro.RECEBER.First;
            QuaParX:=0;
            while not DataFinanceiro.RECEBER.Eof do begin
              QuaParX:=QuaParX+1;
              Imp_Linha(00, 00, IntToStr(QuaParX)+'-'+DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsString+'-'+AEnfatizad+FormatFloat('###,##0.00',DataFinanceiro.RECEBER.FieldByName('VALOR').Value)+DEnfatizad+' ',3, 'E');
              DataFinanceiro.RECEBER.Next;
            end;
        end
        else begin
          DataFinanceiro.RECEBER.First;
          QUAPAR:=IntToStr(DAYSBETWEEN(DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsDateTime,
          DataFinanceiro.RECEBER.FieldByName('EMISSAO').AsDateTime));
          DataFinanceiro.RECEBER.Last;
          Imp_Linha(01, 00, 'Dividido em '+DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString+
          ' vezes de '+FormatFloat('###,##0.00',DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat
          )+' de '+QUAPAR+' em '+QUAPAR+' dias',10, 'D');
        end;
      end;
      }

      Imp_Linha(02, 00, DCondensa3+ACondensa2+'                      ASSINATURA :'+StringOfChar('_', 40),75, 'E');
      {
      if DADOSFRENTEf.CONF_PADRAO.FieldByname('MENSAGEM').AsString='S' then begin
        Imp_Linha(01, 00, StringOfChar('-', 95), 95, 'E');
        if TrocaMensagem='S' then begin
          TamNome:= Length(DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO1').AsString + DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO2').AsString);
          Tamanho:=(95-TamNome)/2;
          Tamanho:=Int(Tamanho);
          Tam:=FloatToStr(Tamanho);
          Tama:=StrToInt(Tam);
          Imp_Linha(01, Tama ,DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO1').AsString ,01, 'E');
          Imp_Linha(00, 00,DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO2').AsString ,01, 'E');
        end
        else if ValrecX=0 then
          Imp_Linha(01, 25, DCondensa3+ACondensa2+DADOSFRENTEf.CONF_PADRAO.FieldByname('CON_MENSA2').AsString,75, 'E')
        else
          Imp_Linha(01, 25, DCondensa3+ACondensa2+DADOSFRENTEf.CONF_PADRAO.FieldByname('CON_MENSA1').AsString,75, 'E');
        Imp_Linha(01, 00, StringOfChar('-', 95)+DCondensa2, 95, 'E');
        Imp_Linha(01, 00, '',00, 'E');
      end
      else begin
        if TelaImpressora='I' then begin
          Imp_Linha(01, 00, AEnfatizad+'"NÃO É DOCUMENTO FISCAL" E "NÃO É VÁLIDO COMO GARANTIA DE MERCADORIA"'+DEnfatizad, 6, 'E');
          Imp_Linha(01, 15, DCondensa2+ACondensa5+ASubScript+'EJOC SISTEMAS -  TRAVESSA DA APARECIDA, 228, CENTRO, CEP 37.190-000, TRÊS PONTAS, MG - FONE/FAX: 35-98849-1204'+DCondensa5+DSupScript, 6, 'E');
        end;
        Imp_Linha(02, 00, '',00, 'E');
      end;
      }

      if TelaImpressora='I' then begin
        Imp_Linha(01, 00, AEnfatizad+'"NÃO É DOCUMENTO FISCAL" E "NÃO É VÁLIDO COMO GARANTIA DE MERCADORIA"'+DEnfatizad, 6, 'E');
        Imp_Linha(01, 15, DCondensa2+ACondensa5+ASubScript+'EJOC SISTEMAS -  TRAVESSA DA APARECIDA, 228, CENTRO, CEP 37.190-000, TRÊS PONTAS, MG - FONE/FAX: 35-98849-1204'+DCondensa5+DSupScript, 6, 'E');
      end;
      Imp_Linha(02, 00, '',00, 'E');
    end
    else begin
      Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
      Imp_Linha(01, 00, 'TOTAL  R$',14, 'E');
      Imp_Linha(00, 00, FormatFloat('###,##0.00',PedidoEntradaSaida.FieldByName('TOTAL').AsFloat),34, 'D');

      {
      Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
      Imp_Linha(01, 00, 'TOTAL  R$',14, 'E');
      Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_VENDA').AsFloat),34, 'D');
      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('FRETE').AsFloat>0 then begin
        Imp_Linha(01, 00, 'FRETE ',14, 'E');
        Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('FRETE').AsFloat),34, 'D');
      end;
      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TAXAENTREGA').AsFloat>0 then begin
        Imp_Linha(01, 00, 'TAXA DE ENTREGA ',16, 'E');
        Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TAXAENTREGA').AsFloat),32, 'D');
      end;

      if DADOSFRENTEf.CONF_PADRAO.fieldbyname('ACRESDESCON').AsString='S' then begin
        if DADOSFRENTEf.VENDAS_ECF2.FieldByName('Desconto').AsFloat>0 then begin
          Imp_Linha(01, 00, 'DESCONTO ',14, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('Desconto').AsFloat),34, 'D');
        end;
      end;

      if DADOSFRENTEf.CONF_PADRAO.fieldbyname('ACRESDESCON').AsString='S' then begin
        if DADOSFRENTEf.VENDAS_ECF2.FieldByName('ACRESCIMO').AsFloat>0 then begin
          Imp_Linha(01, 00, 'ACRESCIMO: ',14, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('ACRESCIMO').AsFloat),34, 'D');
        end;
      end;
      Imp_Linha(01, 00, 'Total a Pagar ',14, 'E');
      Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TOTALPAGO').AsFloat),34, 'D');
      if DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TROCO').AsFloat>0 then begin
        Imp_Linha(01, 00, 'Troco ',14, 'E');
        Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.VENDAS_ECF2.FieldByName('TOT_TROCO').AsFloat),34, 'D');
      end;
      FiltroItensFormasPagamento;
        DADOSFRENTEf.DiversasFormas.First;
        Imp_Linha(01, 00, 'MEIOS DE PAGAMENTO.: ',5, 'E');
        Traco:=0;
        QuaMei:=0;
        while not DADOSFRENTEf.DiversasFormas.Eof do begin
          if (DADOSFRENTEf.DiversasFormas.Fieldbyname('PARCELA').Asstring<>'') and (DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring<>'Conta a Prazo') then begin
            Imp_Linha(01, 00, DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring,17, 'E');
            Imp_Linha(00, 05, '('+DADOSFRENTEf.DiversasFormas.Fieldbyname('PARCELA').Asstring+' X '+
            FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat/DADOSFRENTEf.DiversasFormas.Fieldbyname('PARCELA').AsFloat)+')',15, 'E');
            Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat),11, 'D');
          end
          else begin
            Imp_Linha(01, 00, DADOSFRENTEf.DiversasFormas.Fieldbyname('FORMADEPAGAMENTO').Asstring,17, 'E');
            Imp_Linha(00, 00, FormatFloat('###,##0.00',DADOSFRENTEf.DiversasFormas.Fieldbyname('TOTALPAGO').AsFloat),31, 'D');
          end;
          DADOSFRENTEf.DiversasFormas.Next;
        end;
      FiltroItensContasReceber;
      if not DataFinanceiro.RECEBER.IsEmpty then begin
        DataFinanceiro.RECEBER.First;
        SO:=0;
        while not DataFinanceiro.RECEBER.Eof do begin
          SO:=SO+1;
          DataFinanceiro.RECEBER.Next;
          if SO=4 then
            break;
        end;
        DataFinanceiro.RECEBER.Last;
        QUAPAR:=DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString;
        if StrToInt(DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString)<5 then begin
            if SO=1 then
              Imp_Linha(01, 00, 'VENCIMENTO ',14, 'E')
            else begin
              if SO=4 then
                Imp_Linha(01, 00, ACondensa3+'',0, 'E');
              Imp_Linha(01, 00, 'VENCIMENTOS ',14, 'E');
            end;
            DataFinanceiro.RECEBER.First;
            QuaParX:=0;
            while not DataFinanceiro.RECEBER.Eof do begin
              QuaParX:=QuaParX+1;
              Imp_Linha(01, 00, IntToStr(QuaParX)+'-'+DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsString+'-'+FormatFloat('###,##0.00',DataFinanceiro.RECEBER.FieldByName('VALOR').Value)+' ',3, 'E');
              DataFinanceiro.RECEBER.Next;
            end;
        end
        else begin
          DataFinanceiro.RECEBER.First;
          QUAPAR:=IntToStr(DAYSBETWEEN(DataFinanceiro.RECEBER.FieldByName('VENCIMENTO').AsDateTime,
          DataFinanceiro.RECEBER.FieldByName('EMISSAO').AsDateTime));
          DataFinanceiro.RECEBER.Last;
          Imp_Linha(01, 00, 'Dividido em '+DataFinanceiro.RECEBER.Fieldbyname('ORDEM').AsString+
          ' vezes de '+FormatFloat('###,##0.00',DataFinanceiro.RECEBER.FieldByName('VALOR').AsFloat
          )+' de '+QUAPAR+' em '+QUAPAR+' dias',10, 'D');
        end;
      end;
      }
      Imp_Linha(01, 00, StringOfChar('-', 48), 48, 'E');
      Imp_Linha(03, 00, 'ASSINATURA :'+StringOfChar('_', 34),40, 'E');
    end;
  end;
begin
  DADOSFRENTEf.CONF_PADRAO.Open;
  if BobinaFormulario='' then
    TipodeImpressao:=DADOSFRENTEf.CONF_PADRAO.FieldByname('IMPRESSAO').AsString
  else
    TipodeImpressao:=BobinaFormulario;
  DADOSFRENTEf.PRODUTOS.Open;
  DADOS_CADASTROSf.emitente.Open;
  Tipo:='RAW';
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    if TipodeImpressao='F' then begin
      nLin:=0;
      Entim:='S';
      if QuantidadeEscolhida>0 then
        QuantidadeRecibos:=QuantidadeEscolhida
      else begin
        if DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMCOP').AsInteger=0 then
          QuantidadeRecibos:=1
        else
          QuantidadeRecibos:=DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMCOP').AsInteger;
      end;
      For X:=1 To QuantidadeRecibos do begin
        nLin:=0;
        Pagina:=0;
        Entim:='S';
        ItemEntradaSaida.Open;
        ItemEntradaSaida.Last;
        QuaItem:=StrToInt(ItemEntradaSaida.FieldByName('ITEM').AsString);
        QuaFolhas:=QuaItem/10;
        Resto:=StrZero(QuaFolhas,8,2);
        if StrToInt(copy(Resto,7,2))>0 then
          QuaFolhaImp:=StrToInt(copy(Resto,1,5))+1
        else
          QuaFolhaImp:=StrToInt(copy(Resto,1,5));
        ItemEntradaSaida.First;
        TotalAPrazo:=0; TotalAVista:=0;
        while not ItemEntradaSaida.Eof do begin
          if nLin=0 then
            Cabecalho;
          DADOSFRENTEf.PRODUTOS.Close;
          DADOSFRENTEf.PRODUTOS.SQL.Clear;
          DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(ItemEntradaSaida.Fieldbyname('CODIGO').Asstring));
          DADOSFRENTEf.PRODUTOS.Open;
          Imp_Linha(01, 00, ItemEntradaSaida.FieldByName('CODIGO').AsString, 6, 'E');
          // Imp_Linha(00, 01, ItemEntradaSaida.FieldByName('DESCRICAO').AsString, 40, 'E');
          Imp_Linha(00, 01, DADOSFRENTEf.PRODUTOS.FieldByName('NOME').AsString, 40, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.000',ItemEntradaSaida.FieldByName('QTD').Asfloat),13, 'D');
          Imp_Linha(00, 01, DADOSFRENTEf.PRODUTOS.FieldByName('UND_C').AsString, 5, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.000',ItemEntradaSaida.FieldByName('PRECO').AsFloat), 13, 'D');
          Imp_Linha(00, 00, FormatFloat('###,##0.000',ItemEntradaSaida.FieldByName('TOTAL').AsFloat), 16, 'D');
          Inc( nLin );
          ItemEntradaSaida.Next;
          if (nlin=10) and (not ItemEntradaSaida.Eof) then begin
             nlin:=0;
             Imp_Linha(02, 00, StringOfChar('-', 95), 95, 'E');
             Imp_Linha(02, 00, 'Total na sequência.: '+DADOSFRENTEf.VENDAS_ECF2.FieldByName('CUPOM').AsString+'-'+FloatToStr(QuaFolhaImp)+'/'+FloatToStr(QuaFolhaImp), 6, 'E');
             Imp_Linha(02, 00, StringOfChar('-', 95), 95, 'E');
             Imp_Linha(00, 00, #12+DTudo , 6, 'E');
          end;
        end;

       if ImpressaoOrcamentetoCustoVenda='S' then
         Imp_Linha(00, 00, DCondensa4,00, 'E');

        if nLin >= 10 then begin
          if nlin <= 45 then
            ASSINATURA;
        end;
        if (nLin<=9) and (EntIm='S') then begin
          if Nlin<9 then begin
            Cont:=9-nlin;
            Imp_Linha(Cont, 00, '',96, 'E');
          end;
          ASSINATURA;
          EntIm:='N';
        end;
        if nLin>10 then begin
          Imp_Linha(01, 00, '', 1, 'E');
          Imp_Ejeta
        end
        else
          Imp_Linha(00, 00, #12+DTudo , 6, 'E');
      end;
      Imp_Fim;
    end
    else begin
      nLin:=0;
      Entim:='S';
      if QuantidadeEscolhida>0 then
        QuantidadeRecibos:=QuantidadeEscolhida
      else begin
        if DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMCOP').AsInteger=0 then
          QuantidadeRecibos:=1
        else
          QuantidadeRecibos:=DADOSFRENTEf.CONF_PADRAO.FieldByName('NUMCOP').AsInteger;
      end;
      For X:=1 To QuantidadeRecibos do begin
        nLin:=0;
        ItemEntradaSaida.Open;
        ItemEntradaSaida.First;
        while not ItemEntradaSaida.Eof do begin
          if nLin=0 then
            Cabecalho;
          DADOSFRENTEf.PRODUTOS.Close;
          DADOSFRENTEf.PRODUTOS.SQL.Clear;
          DADOSFRENTEf.PRODUTOS.SQL.Add('Select * from PRODUTOS where CODIGO='+QuotedStr(ItemEntradaSaida.Fieldbyname('CODIGO').Asstring));
          DADOSFRENTEf.PRODUTOS.Open;
          Imp_Linha(01, 00, StrZero(ItemEntradaSaida.FieldByName('ITEM').AsInteger,4,0),5, 'E');
          Imp_Linha(00, 00, ItemEntradaSaida.FieldByName('CODIGO').AsString,6, 'D');
          // Imp_Linha(00, 01, COPY(ItemEntradaSaida.FieldByName('DESCRICAO').AsString,1,36),36, 'D');
          Imp_Linha(00, 01, COPY(DADOSFRENTEf.PRODUTOS.FieldByName('NOME').AsString,1,36),36, 'D');
          Imp_Linha(01, 00, COPY(FloatToStr(ItemEntradaSaida.FieldByName('QTD').Asfloat),1,9)+
          DADOSFRENTEf.PRODUTOS.FieldByName('UND_C').AsString+
          ' X '+COPY(FloatToStr(ItemEntradaSaida.FieldByName('PRECO').Asfloat),1,9),24, 'D');
          Imp_Linha(00, 00, FormatFloat('###,##0.00', ItemEntradaSaida.FieldByName('TOTAL').AsFloat), 24, 'D');
          Inc(nLin);
          ItemEntradaSaida.Next;
        end;
        ASSINATURA;
        {
        DataFinanceiro.RECEBER.Open;
        if DataFinanceiro.RECEBER.IsEmpty then begin
          if ParcalaX<>'' then begin
            Imp_Linha(01, 00, ParcalaX,14, 'E');
          end;
        end;
        if DescricaoCliente<>'' then begin
          Imp_Linha(02, 00, PadC(StringOfChar('_', 40),50),40, 'E');
          Imp_Linha(01, 00, PadC(DescricaoCliente,50), 50, 'E');
          if PortadorCliente<>'' then
            Imp_Linha(01, 00, PadC('PORTADOR: '+PortadorCliente,50), 50, 'E')
        end;

        if TrocaMensagem='S' then begin
          Imp_Linha(02, 00,PADC(DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO1').AsString,50) ,01, 'E');
          if DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO2').AsString<>'' then
            Imp_Linha(01, 00,PADC(DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO2').AsString,50) ,01, 'E');
          if DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO3').AsString<>'' then
            Imp_Linha(01, 00,PADC(DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO3').AsString,50) ,01, 'E');
          if DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO4').AsString<>'' then
            Imp_Linha(01, 00,PADC(DADOSFRENTEf.MENSAGEM.FieldByName('MEN_TEXTO4').AsString,50) ,01, 'E');
        end;
        }
        if TelaImpressora='I' then begin
          Imp_Linha(02, 00, '            "NÃO E DOCUMENTO FISCAL"          ', 6, 'E');
          Imp_Linha(01, 00, '  "NÃO E VÁLIDO COMO GARANTIA DE MERCADORIA"  ', 6, 'E');
          Imp_Linha(01, 00, '  EJOC SISTEMAS - TRAVESSA DA APARECIDA, 228  ', 6, 'E');
          Imp_Linha(01, 00, '             CENTRO - CEP 37.190-000          ', 6, 'E');
          Imp_Linha(01, 00, '     TRÊS PONTAS, MG - FONE: 35-98849-1204    ', 6, 'E');
        end;

        Imp_Linha(06, 00, '',1, 'E')
      end;
      Imp_Fim;
    end;
  end;
end;

// procedure RelSimples2(ejoc: String);
procedure RelSimples2(listaImpressao:TListBox;QuantidadeLinhasLista:integer);

  var Pag ,nLin, sai: Integer;
    Tipo: String;
  {
  procedure Cabecalho;
  begin
    Imp_InicializaPagina;
    Imp_Linha(01, 00, 'Ejoc Principal'+' - '+'Verdadeiro', 80, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 16, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 16, 'E');
    Imp_Linha(00, 16, ESPACO+'Folha', 6+length(ESPACO), 'E');
    // Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 00, 'RELATORIO DE '+ Tit, 80, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 44+length(ESPACO)), 80, 'E');
    Imp_Linha(01, 00, 'Cod.'+ESPACO+'*-------------DESCRICAO---------------*', 80, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 44+length(ESPACO)), 80, 'E');
    nLin:=nLin + 7;
  end;
  }
begin
  Tipo:='RAW';  // Dica: Imprime com matricial Epson mais rápido
  // if Imp_Inicio( FrmPreview.Edit1.Text, 'Impressão de dados Employee - THE CLUB', Tipo, false) then begin
  if Imp_Inicio( LerImpressora, 'Impressão de dados - All Informática', Tipo, true) then begin
    nLin:=0;
    Pag :=1;
    Imp_Linha(02, 05, '', 80, 'E');
    while true=true do begin
      {
      if nLin=0 then begin
        Cabecalho;
      end;
      }
      // sai:=sai+1;

      // Imp_Linha(01, 00, 'ROBERVAL DA SILVA SALRO', 80, 'E');
      // Imp_Linha(01, 00, listaImpressao.Items., 80, 'E');
      Imp_Linha(01, 05, listaImpressao.Items[nLin], 80, 'E');
      Inc( nLin );
      {
      if nLin >= 60 then begin
        nLin:=0;
        Pag :=Pag+1;
      end;
      if sai>61 then
        break;
        }
      if nLin=QuantidadeLinhasLista then
        break;
    end;
    Imp_Linha(06, 05, '', 80, 'E');
    // Imp_Ejeta;
    Imp_Fim
  end;
end;


end.
