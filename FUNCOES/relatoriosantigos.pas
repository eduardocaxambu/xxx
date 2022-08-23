unit relatoriosantigos;

interface

implementation

end.


procedure TCOMISSAOF.ComissaoPorVencimento;
var
  Pag ,nLin, NovoProd , item , primeiro , linha , coluna : Integer;
  Tipo, Repetido , Diferente , Men : String;
  Total, TotVen, TotCom, TotalCom, TotProdutos , TotProdutos2 ,PerPro , porcentagem , comissao , TotDup : Double;
  procedure Cabecalho;
  begin
    Definevarpubl();
    Imp_InicializaPagina;
    Imp_Linha(01, 00, ACondensa5+DataModule1.PADEMPRE.FieldByName('Em_CODIGO').AsString+'-'+DataModule1.PADEMPRE.FieldByName('Em_NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 132, 'Folha', 06, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 62, UpperCase('RELATORIO DE COMISSOES DE '+datini.Text+' A '+DatFim.Text) , 42, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 160), 160, 'E');
    Imp_Linha(01, 00, '*-LANC.-* *C.CLI* *VEN* *DAT.EMIS* *DAT.VENC* *DAT.BAIX* *TOT.RECEB.* *-----------------PRODUTO-----------------* *BASE CALC.* *POR* *-UNITARIO-* *---TOTAL----*', 140, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 160), 160, 'E');
    nLin:=nLin+6;
  end;

  procedure TesQuaLin;
  begin
    if nLin >= 60 then begin
      if not CONFIGF.DBCheckBox1.Checked then
        Imp_Linha(02, 00, ACondensa5+ASubScript+RODAPEV+DSupScript+DCondensa5 , 6, 'E');
      Imp_Ejeta;
      nLin := 0;
      Pag  := Pag+1;
      Cabecalho;
    end;
  end;

begin
  CONFIGF.Show;
  CONFIGF.Close;
  MENSPROCF.Panel1.Caption := 'AGUARDE UM MOMENTO - GERANDO O RELATÓRIO !!!';
  MENSPROCF.Show;
  MENSPROCF.Update;
  PADDUPBX.Open;
  PADDUPBX.IndexFieldNames:='MO_CODVEN;MO_DATPAG';
  PADDUPBX.Filter := 'MO_DATPAG>='+QuotedStr(Datini.Text)+' and MO_DATPAG<='+QuotedStr(DatFim.Text)+' and MO_VALOR>0,01';
  PADDUPBX.Filtered := true;
  PADDUPBX.First;

  padvenda.Open;
  padvenda.IndexFieldNames:='VE_LANCAM;VE_CODCLI;VE_DATEMI;VE_CAIXA;VE_CODPER';

  PadFunci.Open;
  if CONFIGF.DBRadioGroup2.ItemIndex = 0 then
    Tipo := 'RAW'   // Dica: Imprime com matricial Epson mais rápido
  else
    Tipo := 'TEXT'; // Dica: Funciona para impressora USB
  if Imp_Inicio( CONFIGF.Label1.Caption, 'Impressão de dados Employee - THE CLUB', Tipo, CONFIGF.DBCheckBox1.Checked) then begin
    nLin := 0;
    Pag  := 1;
    Total:=0;
    TotVen:=0;
    Diferente:=PADDUPBX.FieldByName('MO_CODVEN').AsString;
    while true do begin
      if (PADDUPBX.FieldByName('MO_COMISS').AsString='N') or (PADDUPBX.FieldByName('MO_CODFOR').AsString<>'') then begin
        PADDUPBX.Next;
        continue;
      end;
      if (PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat=0) then begin
        PADDUPBX.Next;
        continue;
      end;
      if nLin = 0 then
        Cabecalho;
      if (Diferente<>PADDUPBX.FieldByName('MO_CODVEN').AsString) or (PADDUPBX.Eof) then begin
        Imp_Linha(01, 00, StringOfChar('-', 160), 160, 'E');
        if PadFunci.Locate('FU_CODIGO', Diferente, []) then begin
          Imp_Linha(01, 10, 'TOTAL DO VENDEDOR '+COPY(PadFunci.FieldByName('FU_NOME').AsString,1,25)+' --------------------------------------------------------> ',102, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.00', TotVen),14, 'D');
        end
        else begin
          Imp_Linha(01, 10, 'TOTAL SEM VENDEDOR ---------------------------------------------------------------------------------> ',102, 'E');
          Imp_Linha(00, 00, FormatFloat('###,##0.00', TotVen),14, 'D');
        end;
        Imp_Linha(00, 20, FormatFloat('###,##0.000', TotCom),14, 'D');
        Imp_Linha(01, 00, StringOfChar('-', 160), 160, 'E');
        nLin:=nLin+3;
        TotVen:=0; TotCom:=0;
        TesQuaLin;
      end;
      if PADDUPBX.Eof then
        break;
      Imp_Linha(01, 00, PADDUPBX.FieldByName('MO_CODIGO').AsString+'/',7, 'E');
      Imp_Linha(00, 00, PADDUPBX.FieldByName('MO_NRPARC').AsString,2, 'E');
      Imp_Linha(00, 01, PADDUPBX.FieldByName('MO_CODCLI').AsString,5, 'E');
      Imp_Linha(00, 02, PADDUPBX.FieldByName('MO_CODVEN').AsString,5, 'E');
      Imp_Linha(00, 01, PADDUPBX.FieldByName('MO_DATEMI').AsString,10, 'E');
      Imp_Linha(00, 01, PADDUPBX.FieldByName('MO_DATVEN').AsString,10, 'E');
      Imp_Linha(00, 01, PADDUPBX.FieldByName('MO_DATPAG').AsString,10, 'E');
      Imp_Linha(00, 00, FormatFloat('###,##0.00', PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat),13, 'D');
      TotProdutos:=0;
      item:=0;
      padvenda.SetRange([PADDUPBX.FieldByName('MO_CODIGO').AsString, PADDUPBX.FieldByName('MO_CODCLI').AsString, PADDUPBX.FieldByName('MO_DATEMI').AsDateTime],
                        [PADDUPBX.FieldByName('MO_CODIGO').AsString, PADDUPBX.FieldByName('MO_CODCLI').AsString, PADDUPBX.FieldByName('MO_DATEMI').AsDateTime]);
      if not padvenda.IsEmpty then begin
        padvenda.First;
        while not padvenda.Eof do begin
          Repetido:=padvenda.FieldByName('VE_LANCAM').AsString+padvenda.FieldByName('VE_CODCLI').AsString;
          if PADPRODU.Locate('PRO_CODIGO', padvenda.FieldByName('VE_CODPRO').AsString, []) then begin
            TotProdutos:=TotProdutos+padvenda.FieldByName('VE_VALTOT').AsFloat;
            item:=item+1
          end;
          padvenda.Next;
        end;
        padvenda.First;
        if TotProdutos > 0 then begin
          PerPro:=((PADDUPBX.FieldByName('MO_VALOR').AsFloat+
                    PADDUPBX.FieldByName('MO_JUROS').AsFloat-
                    PADDUPBX.FieldByName('MO_DESCO').AsFloat)/TotProdutos)*100;
          primeiro:=0;
          TotDup:=0;
          while true do begin
            if primeiro=0 then begin
              linha:=00;
              coluna:=01;
              Inc( nLin );
            end
            else begin
              linha:=01;
              coluna:=70;
              Inc( nLin );
            end;
            Repetido:=padvenda.FieldByName('VE_LANCAM').AsString+padvenda.FieldByName('VE_CODCLI').AsString;
            if PADPRODU.Locate('PRO_CODIGO', padvenda.FieldByName('VE_CODPRO').AsString, []) then begin
              Imp_Linha(linha, coluna, PADPRODU.FieldByName('PRO_DESCRI').AsString,40, 'E');
              if PADPRODU.fieldbyname('PRO_ProSer').AsString='S' then
                porcentagem:=DataModule1.PADEMPRE.FieldByName('EM_PORCSER').AsFloat
              else
                porcentagem:=DataModule1.PADEMPRE.FieldByName('EM_PORCPRO').AsFloat;
              comissao:=padvenda.FieldByName('VE_VALTOT').AsFloat*PerPro/100;
              Imp_Linha(00, 01, FormatFloat('###,##0.00', comissao),15, 'D');
              Imp_Linha(00, 01, FormatFloat('###,##0.00', porcentagem),5, 'D');
              TotProdutos:=TotProdutos+padvenda.FieldByName('VE_VALTOT').AsFloat;
              Imp_Linha(00, 01, FormatFloat('###,##0.000', comissao*porcentagem/100),12, 'D');
              TotCom:=TotCom+(comissao*porcentagem/100);
              TotalCom:=TotalCom+(comissao*porcentagem/100);
              TotDup:=TotDup+(comissao*porcentagem/100);
            end;
            padvenda.Next;
            primeiro:=primeiro+1;
            if padvenda.Eof then begin
              Imp_Linha(00, 01, FormatFloat('###,##0.000', TotDup),14, 'D');
              break;
            end;
            TesQuaLin;
          end;
        end;
      end
      else begin
        Men:='S';
        if PADCLIEN.Locate('CLI_CODIGO', PADDUPBX.FieldByName('MO_CODCLI').AsString , []) then
          if PADCLIEN.fieldbyname('CLI_VLRCON').AsFloat=0 then
            Men:='N';
        if Men='S' then begin
          PADPRODU.Locate(PADPRODU.Fields[1].FieldName, 'MENSALIDADE_____________________________' , []);
          porcentagem:=DataModule1.PADEMPRE.FieldByName('EM_PORCSER').AsFloat;
          Imp_Linha(00, 01, PADPRODU.FieldByName('PRO_DESCRI').AsString,40, 'E');
          Imp_Linha(00, 01, FormatFloat('###,##0.00', PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat),15, 'D');
          Imp_Linha(00, 01, FormatFloat('###,##0.00', porcentagem),5, 'D');
          Imp_Linha(00, 01, FormatFloat('###,##0.000', (PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat)*porcentagem/100),12, 'D');
          Imp_Linha(00, 01, FormatFloat('###,##0.000', (PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat)*porcentagem/100),14, 'D');
          TotCom:=TotCom+((PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat)*porcentagem/100);
          TotalCom:=TotalCom+((PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat)*porcentagem/100);
        end
        else begin
          porcentagem:=DataModule1.PADEMPRE.FieldByName('EM_PORCPRO').AsFloat;
          Imp_Linha(00, 01, 'PRODUTO NAO FOI LOCALIZADO**************',40, 'E');
          Imp_Linha(00, 01, FormatFloat('###,##0.00', PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat),15, 'D');
          Imp_Linha(00, 01, FormatFloat('###,##0.00', porcentagem),5, 'D');
          Imp_Linha(00, 01, FormatFloat('###,##0.000', (PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat)*porcentagem/100),12, 'D');
          Imp_Linha(00, 01, FormatFloat('###,##0.000', (PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat)*porcentagem/100),14, 'D');
          TotCom:=TotCom+((PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat)*porcentagem/100);
          TotalCom:=TotalCom+((PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat)*porcentagem/100);
        end;
        Inc( nLin );
        TesQuaLin;
      end;
      Total:=Total+(PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat);
      Diferente:=PADDUPBX.FieldByName('MO_CODVEN').AsString;
      TotVen:=TotVen+(PADDUPBX.FieldByName('MO_VALOR').AsFloat+PADDUPBX.FieldByName('MO_JUROS').AsFloat-PADDUPBX.FieldByName('MO_DESCO').AsFloat);
      PADDUPBX.Next;
      TesQuaLin;
    end;
    Imp_Linha(01, 10, 'TOTAL ---------------------------------------------------------------------------------------------->',101, 'E');
    Imp_Linha(00, 00, FormatFloat('###,##0.00', Total),14, 'D');
    Imp_Linha(00, 00, FormatFloat('###,##0.000', TotalCom),35, 'D');
    if not CONFIGF.DBCheckBox1.Checked then
      Imp_Linha(02, 00, ACondensa5+ASubScript+RODAPEV+DSupScript+DCondensa5 , 6, 'E');
    if not CONFIGF.DBCheckBox1.Checked then
      Imp_Ejeta;
    Imp_Fim
  end;
  MENSPROCF.Close;
end;


RELATORIO DIFERENCA ENTRE CUSTO E VENDA
procedure TDifCustoVendaf.BitBtn1Click(Sender: TObject);
  var Pag ,nLin ,espaco: Integer;
    Tipo , QZero: String;
    VlrCus, VlrVen, Dif, TotQuant, TotGerQuant, VlrCusGer, VlrVenGer, TotCusGer, TotVenGer, TotDifGer, TotCus,TotVen,TotDif: Double;
  procedure Cabecalho;
  begin
    DefineVarPubl();
    Imp_InicializaPagina;
    if CONFIGF.DBCheckBox1.Checked then
      Imp_Linha(01, 00, DataModule1.PADEMPRE.FieldByName('EM_CODIGO').AsString+'-'+DataModule1.PADEMPRE.FieldByName('EM_NOME').AsString , 6, 'E')
    else
      Imp_Linha(01, 00, ACondensa5+DataModule1.PADEMPRE.FieldByName('EM_CODIGO').AsString+'-'+DataModule1.PADEMPRE.FieldByName('EM_NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 02, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 01, '                                                                                                                          Folha '+StrZero(Pag,3,0), 108, 'E');
    Imp_Linha(01, 00, '                                                       RELATORIO DIFERENCA ENTRE CUSTO E VENDA', 80, 'E');
    if DatIni.Date = DatFim.Date then
      Imp_Linha(00, 00, ' - '+ DateToStr(DatFim.Date), 20, 'E')
    else
      Imp_Linha(00, 00, ' - '+ DateToStr(DatIni.Date) + ' A ' + DateToStr(DatFim.Date) , 20, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 152), 152, 'E');
    Imp_Linha(01, 00, '*COD.* *--------------DESCRICAO---------------* *DT.EMIS.* *QUANTIDADE* *- VR.CUSTO-* *- VR.VENDA-* *- TOTAL CUSTO --* *- TOTAL VENDA --* *-- DIFERENCA*', 145, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 152), 152, 'E');
    nLin := nLin + 6;
  end;

  procedure ImpPro;
  begin
    PADPRODU.Open;
    PADPRODU.IndexFieldNames:='PRO_CODIGO';
    PADVENDA.Open;
    PADVENDA.IndexFieldNames:='VE_DATEMI;VE_CAIXA;VE_CODPER;VE_CODPRO';
    PADVENDA.SetRange([datini.Date], [DatFim.Date]);
    PADVENDA.Filter := 'VE_CODPRO>='+QuotedStr(Edit1.Text)+' and VE_CODPRO<='+QuotedStr(Edit2.Text) +' and VE_OBSERV<>'+QuotedStr('CANCELADO')+' and VE_VISPRA='+QuotedStr('V');
    PADVENDA.Filtered := true;
    PADVENDA.First;
    VlrCus:=0;
    while not PADVENDA.Eof do begin
      if nLin=0 then Cabecalho;
      PADPRODU.Locate('PRO_CODIGO', PADVENDA.FieldByName('VE_CODPRO').AsString, []);
      if PADPRODU.FieldByName('PRO_ProSer').AsString<>'S' then begin
        Imp_Linha(01, 00, PADPRODU.FieldByName('PRO_CODIGO').AsString, 6, 'E');
        Imp_Linha(00, 01, PADPRODU.FieldByName('PRO_DESCRI').AsString, 40, 'E');
        Imp_Linha(00, 01, PADVENDA.FieldByName('VE_DATEMI').AsString, 10, 'D');
        Imp_Linha(00, 00, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_QUANTI').asFloat), 13, 'D');
        if RadioGroup1.ItemIndex = 0 then
          Imp_Linha(00, 01, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_VRCUSTO').asFloat), 13, 'D')
        else
          Imp_Linha(00, 01, FormatFloat('###,##0.00', PADPRODU.FieldByName('PRO_ULTCUS').AsFloat), 13, 'D');
        Imp_Linha(00, 01, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_QUANTI').AsFloat*(PADVENDA.FieldByName('VE_VALOR').AsFloat-PADVENDA.FieldByName('VE_VALDES').AsFloat+PADVENDA.FieldByName('VE_VALACR').AsFloat-PADVENDA.FieldByName('VE_DESRAT').AsFloat+PADVENDA.FieldByName('VE_ACRRAT').AsFloat)), 13, 'D');
        if RadioGroup1.ItemIndex = 0 then
          Imp_Linha(00, 01, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_QUANTI').asFloat*PADVENDA.FieldByName('VE_VRCUSTO').asFloat), 18, 'D')
        else
          Imp_Linha(00, 01, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_QUANTI').asFloat*PADPRODU.FieldByName('PRO_ULTCUS').AsFloat), 18, 'D');
        Imp_Linha(00, 01, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_VALTOT').asFloat), 18, 'D');
        if RadioGroup1.ItemIndex = 0 then
          Dif:=PADVENDAVE_VALTOT.Value-(PADVENDA.FieldByName('VE_QUANTI').asFloat*PADVENDA.FieldByName('VE_VRCUSTO').asFloat)
        else
          Dif:=PADVENDAVE_VALTOT.Value-(PADVENDA.FieldByName('VE_QUANTI').asFloat*PADPRODU.FieldByName('PRO_ULTCUS').AsFloat);
        Imp_Linha(00, 00, FormatFloat('###,##0.00', Dif),15, 'D');
        TotQuant:=TotQuant+PADVENDA.FieldByName('VE_QUANTI').asFloat;
        if RadioGroup1.ItemIndex = 0 then
          VlrCus:=VlrCus + PADVENDA.FieldByName('VE_VRCUSTO').asFloat
        else
          VlrCus:= VlrCus + PADPRODU.FieldByName('PRO_ULTCUS').AsFloat;
        VlrVen:= VlrVen + PADVENDA.FieldByName('VE_QUANTI').AsFloat*(PADVENDA.FieldByName('VE_VALOR').AsFloat-PADVENDA.FieldByName('VE_VALDES').AsFloat+PADVENDA.FieldByName('VE_VALACR').AsFloat-PADVENDA.FieldByName('VE_DESRAT').AsFloat+PADVENDA.FieldByName('VE_ACRRAT').AsFloat);
        if RadioGroup1.ItemIndex = 0 then
          TotCus:=TotCus+(PADVENDA.FieldByName('VE_QUANTI').asFloat*PADVENDA.FieldByName('VE_VRCUSTO').asFloat)
        else
          TotCus:=TotCus+(PADVENDA.FieldByName('VE_QUANTI').asFloat*PADPRODU.FieldByName('PRO_ULTCUS').AsFloat);
        TotVen:=TotVen+PADVENDA.FieldByName('VE_VALTOT').asFloat;
        TotDif:=TotDif+dif;
        Inc( nLin );
      end;
      if nLin >= 60 then begin
        Imp_Linha(02, 00, ACondensa5+ASubScript+RODAPEV+DSupScript , 6, 'E');
        Imp_Ejeta;
        nLin:=0;
        Pag :=Pag+1;
      end;
      PADVENDA.Next;
    end;
    if not PADVENDA.IsEmpty then begin
      Imp_Linha(01, 00, 'Total Geral a Vista ----->', 18, 'E');
      Imp_Linha(00, 33, FormatFloat('###,##0.00',TotQuant),12, 'D');
      Imp_Linha(00, 01, FormatFloat('###,##0.00',VlrCus),13, 'D');
      Imp_Linha(00, 01, FormatFloat('###,##0.00',VlrVen),13, 'D');
      Imp_Linha(00, 01, FormatFloat('###,##0.00',TotCus),18, 'D');
      Imp_Linha(00, 01, FormatFloat('###,##0.00',TotVen),18, 'D');
      Imp_Linha(00, 01, FormatFloat('###,##0.00',TotDif),14, 'D');
      Imp_Linha(01, 00, '', 18, 'E');
    end;
    TotGerQuant:=TotQuant;  VlrCusGer:=VlrCus;  VlrVenGer:=VlrVen;  TotCusGer:=TotCus;  TotVenGer:=TotVen;  TotDifGer:=TotDif;
    TotQuant:=0;  VlrCus:=0;  VlrVen:=0;  TotCus:=0;  TotVen:=0;  TotDif:=0;
    PADVENDA.Filter := 'VE_CODPRO>='+QuotedStr(Edit1.Text)+' and VE_CODPRO<='+QuotedStr(Edit2.Text)+' and VE_OBSERV<>'+QuotedStr('CANCELADO')+' and VE_VISPRA='+QuotedStr('P');
    PADVENDA.Filtered := true;
    PADVENDA.First;
    while not PADVENDA.Eof do begin
      if nLin=0 then Cabecalho;
      PADPRODU.Locate('PRO_CODIGO', PADVENDA.FieldByName('VE_CODPRO').AsString, []);
      Imp_Linha(01, 00, PADPRODU.FieldByName('PRO_CODIGO').AsString, 6, 'E');
      Imp_Linha(00, 01, PADPRODU.FieldByName('PRO_DESCRI').AsString, 40, 'E');
      Imp_Linha(00, 01, PADVENDA.FieldByName('VE_DATEMI').AsString, 10, 'D');
      Imp_Linha(00, 00, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_QUANTI').asFloat), 13, 'D');
      if RadioGroup1.ItemIndex = 0 then
        Imp_Linha(00, 01, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_VRCUSTO').asFloat), 13, 'D')
      else
        Imp_Linha(00, 01, FormatFloat('###,##0.00', PADPRODU.FieldByName('PRO_ULTCUS').AsFloat), 13, 'D');
      Imp_Linha(00, 01, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_QUANTI').AsFloat*(PADVENDA.FieldByName('VE_VALOR').AsFloat-PADVENDA.FieldByName('VE_VALDES').AsFloat+PADVENDA.FieldByName('VE_VALACR').AsFloat-PADVENDA.FieldByName('VE_DESRAT').AsFloat+PADVENDA.FieldByName('VE_ACRRAT').AsFloat)), 13, 'D');
      if RadioGroup1.ItemIndex = 0 then
        Imp_Linha(00, 01, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_QUANTI').asFloat*PADVENDA.FieldByName('VE_VRCUSTO').asFloat), 18, 'D')
      else
        Imp_Linha(00, 01, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_QUANTI').asFloat*PADPRODU.FieldByName('PRO_ULTCUS').AsFloat), 18, 'D');
      Imp_Linha(00, 01, FormatFloat('###,##0.00', PADVENDA.FieldByName('VE_VALTOT').asFloat), 18, 'D');
      if RadioGroup1.ItemIndex = 0 then
        Dif:=PADVENDAVE_VALTOT.Value-(PADVENDA.FieldByName('VE_QUANTI').asFloat*PADVENDA.FieldByName('VE_VRCUSTO').asFloat)
      else
        Dif:=PADVENDAVE_VALTOT.Value-(PADVENDA.FieldByName('VE_QUANTI').asFloat*PADPRODU.FieldByName('PRO_ULTCUS').AsFloat);
      Imp_Linha(00, 00, FormatFloat('###,##0.00', Dif),15, 'D');
      TotQuant:=TotQuant+PADVENDA.FieldByName('VE_QUANTI').asFloat;
      if RadioGroup1.ItemIndex = 0 then
        VlrCus:= VlrCus + PADVENDA.FieldByName('VE_VRCUSTO').asFloat
      else
        VlrCus:= VlrCus + PADPRODU.FieldByName('PRO_ULTCUS').AsFloat;
      VlrVen:= VlrVen + PADVENDA.FieldByName('VE_QUANTI').AsFloat*(PADVENDA.FieldByName('VE_VALOR').AsFloat-PADVENDA.FieldByName('VE_VALDES').AsFloat+PADVENDA.FieldByName('VE_VALACR').AsFloat-PADVENDA.FieldByName('VE_DESRAT').AsFloat+PADVENDA.FieldByName('VE_ACRRAT').AsFloat);
      if RadioGroup1.ItemIndex = 0 then
        TotCus:=TotCus+(PADVENDA.FieldByName('VE_QUANTI').asFloat*PADVENDA.FieldByName('VE_VRCUSTO').asFloat)
      else
        TotCus:=TotCus+(PADVENDA.FieldByName('VE_QUANTI').asFloat*PADPRODU.FieldByName('PRO_ULTCUS').AsFloat);
      TotVen:=TotVen+PADVENDA.FieldByName('VE_VALTOT').asFloat;
      TotDif:=TotDif+dif;
      Inc( nLin );
      if nLin >= 60 then begin
        // Imp_Linha(02, 00, 'ALL INFORMATICA - Av. OSWALDO CRUZ, 1049, CENTRO, CEP 37.190-000, TRES PONTAS, MG - FONE/FAX: (35)3265-2699 -' , 6, 'E');
        Imp_Ejeta;
        nLin:=0;
        Pag :=Pag+1;
      end;
      PADVENDA.Next;
    end;
    if nLin=0 then Cabecalho;
    Imp_Linha(01, 00, 'Total Geral a Prazo----->', 18, 'E');
    Imp_Linha(00, 34, FormatFloat('###,##0.00',TotQuant),12, 'D');
    Imp_Linha(00, 01, FormatFloat('###,##0.00',VlrCus),13, 'D');
    Imp_Linha(00, 01, FormatFloat('###,##0.00',VlrVen),13, 'D');
    Imp_Linha(00, 01, FormatFloat('###,##0.00',TotCus),18, 'D');
    Imp_Linha(00, 01, FormatFloat('###,##0.00',TotVen),18, 'D');
    Imp_Linha(00, 01, FormatFloat('###,##0.00',TotDif),14, 'D');
    Imp_Linha(01, 00, '', 18, 'E');
    TotGerQuant:=TotGerQuant+TotQuant;  VlrCusGer:=VlrCusGer+VlrCus;  VlrVenGer:=VlrVenGer+VlrVen;  TotCusGer:=TotCusGer+TotCus;  TotVenGer:=TotVenGer+TotVen;  TotDifGer:=TotDifGer+TotDif;
    Imp_Linha(01, 00, 'Total Geral ----->', 18, 'E');
    Imp_Linha(00, 41, FormatFloat('###,##0.00',TotGerQuant),12, 'D');
    Imp_Linha(00, 01, FormatFloat('###,##0.00',VlrCusGer),13, 'D');
    Imp_Linha(00, 01, FormatFloat('###,##0.00',VlrVenGer),13, 'D');
    Imp_Linha(00, 01, FormatFloat('###,##0.00',TotCusGer),18, 'D');
    Imp_Linha(00, 01, FormatFloat('###,##0.00',TotVenGer),18, 'D');
    Imp_Linha(00, 01, FormatFloat('###,##0.00',TotDifGer),14, 'D');
  end;
begin
  TotQuant:=0;  TotCus:=0;  VlrVen:=0;  TotVen:=0;  TotDif:=0;
  Aguarde;
  if CONFIGF.DBRadioGroup2.ItemIndex=0 then
    Tipo:='RAW'   // Dica: Imprime com matricial Epson mais rápido
  else
    Tipo:='TEXT'; // Dica: Funciona para impressora USB
  if Imp_Inicio( CONFIGF.Label1.Caption, 'Impressão de dados Employee - THE CLUB', Tipo, CONFIGF.DBCheckBox1.Checked) then
  begin
    nLin:=0;
    Pag :=1;
    ImpPro;
    if not CONFIGF.DBCheckBox1.Checked then
      Imp_Ejeta;
    Imp_Fim
  end;
  MENSPROCF.Close;
end;


entradas e saidas
procedure TMovEstf.BitBtn1Click(Sender: TObject);
var
  Pag,nLin:Integer;
  Tipo,EnSai,Ordem,Documento:String;
  Total,Valor,QuaTot,VlCusto, TotalNota :Double;
  procedure Cabecalho;
  begin
    if RadioButton1.Checked=true then
      EnSai:='ENTRADAS'
    else if RadioButton2.Checked=true then
      EnSai:='SAIDAS'
    else if RadioButton3.Checked=true then
      EnSai:='ENTRADAS/SAIDAS';
    if RadioButton4.Checked=true then
      Ordem:='DE CODIGO'
    else if RadioButton5.Checked=true then
      Ordem:='DE DATA'
    else if RadioButton6.Checked=true then
      Ordem:='DE LANCAMENTO';
    Definevarpubl();
    Imp_InicializaPagina;
    Imp_Linha(01, 00, ACondensa5+DataModule1.PADEMPRE.FieldByName('Em_CODIGO').AsString+'-'+DataModule1.PADEMPRE.FieldByName('Em_NOME').AsString , 6, 'E');
    Imp_Linha(01, 00, DateToStr(Date), 8, 'E');
    Imp_Linha(00, 01, TimetoStr(Time), 8, 'E');
    Imp_Linha(00, 132, 'Folha', 06, 'E');
    Imp_Linha(00, 00, StrZero(Pag,3,0), 3, 'E');
    Imp_Linha(01, 48, UpperCase('RELATORIO DE MOVIMENTACAO DE '+EnSai+' EM ORDEM '+Ordem) , 42, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 160), 160, 'E');
    if RadioButton3.Checked=false then begin
      if CheckBox1.Checked=true then
        Imp_Linha(01, 00, 'LANC.*  *COD.P *--------------DESCRICAO---------------* NUM.D. *DT.EMIS.* C.FOR UNI *QUANTIDADE* *-----VALOR-----* *--VALOR TOTAL--* *DIF.CUSTO E VENDA-*', 160, 'E')
      else begin
        if RadioButton1.Checked=true then
          Imp_Linha(01, 00, 'LANC.*  *COD.P *--------------DESCRICAO---------------* NUM.D. *DT.EMIS.* C.FOR UNI *QUANTIDADE* *-----VALOR-----* *--VALOR TOTAL--* *--VALOR DE VENDA--*', 160, 'E')
        else
          Imp_Linha(01, 00, 'LANC.*  *COD.P *--------------DESCRICAO---------------* NUM.D. *DT.EMIS.* C.CLI UNI *QUANTIDADE* *-----VALOR-----* *--VALOR TOTAL--* *--------OBSERVACAO-------*', 160, 'E');
      end;
    end
    else
      Imp_Linha(01, 00, 'LANC.*  *COD.P *--------------DESCRICAO---------------* NUM.D. *DT.EMIS.* UNI *-ENTRADA--* *--SAIDA---* *---VALOR TOTAL--* *-----TOTAL-----* *-OBSERVACAO-*', 160, 'E');
    Imp_Linha(01, 00, StringOfChar('-', 160), 160, 'E');
    nLin := nLin + 6;
  end;
begin
  CONFIGF.Show;
  CONFIGF.Close;
  AGUARDE;
  padensai.Close;
  PADCLIEN.Close;
  PADFORNE.Close;
  if RadioButton3.Checked=false then begin
    if RadioButton4.Checked=true then
      padensai.IndexFieldNames:='ES_TIPENSA;ES_CODPRO;ES_DATEMI'
    else if RadioButton5.Checked=true then
      padensai.IndexFieldNames:='ES_TIPENSA;ES_DATEMI;ES_CODPRO'
    else if RadioButton6.Checked=true then
      padensai.IndexFieldNames:='ES_TIPENSA;ES_LANCAM;ES_ITEM;ES_DATEMI;ES_CODPRO';
    end
  else begin
    if RadioButton4.Checked=true then
      padensai.IndexFieldNames:='ES_CODPRO;ES_DATEMI;ES_TIPENSA;ES_CHAVE'
    else if RadioButton5.Checked=true then
      padensai.IndexFieldNames:='ES_DATEMI;ES_CODPRO;ES_TIPENSA'
    else if RadioButton6.Checked=true then
      padensai.IndexFieldNames:='ES_LANCAM;ES_ITEM;ES_DATEMI;ES_CODPRO;ES_TIPENSA';
  end;
  padensai.Open;
  PADCLIEN.Open;
  PADFORNE.Open;
  if RadioButton1.Checked then
    padensai.SetRange(['E'],['E'])
  else if RadioButton2.Checked then
    padensai.SetRange(['S'],['S']);
  if RadioButton1.Checked then
    if MaskEdit1.Text<>'' then begin
      if CheckBox4.Checked then
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('E')+'and ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_NUMDOC <>'+QuotedStr(MaskEdit1.Text)
      else
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('E')+'and ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_NUMDOC ='+QuotedStr(MaskEdit1.Text)
    end
    else
      padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('E')+'and ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)
  else if RadioButton2.Checked then begin
    if CheckBox3.Checked=true then begin
      if MaskEdit2.Text<>'' then
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro <>'+QuotedStr(MaskEdit2.Text)+' and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_BAIXA ='+QuotedStr('M')
      else if MaskEdit3.Text<>'' then
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro ='+QuotedStr(MaskEdit3.Text)+' and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_BAIXA ='+QuotedStr('M')
      else begin
        if MaskEdit1.Text<>'' then
          padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro >='+
            QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ' +
            'ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(
              DatFim.Text)+' and ES_NUMDOC ='+QuotedStr(MaskEdit1.Text)+' and ES_BAIXA ='+QuotedStr('M')
        else
          padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro >='+
            QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_BAIXA ='+QuotedStr('M')
      end;
    end
    {else begin
      if MaskEdit1.Text<>'' then
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_NUMDOC ='+QuotedStr(MaskEdit1.Text)
      else
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)
    end;}

    else if CheckBox5.Checked=true then begin
      if MaskEdit2.Text<>'' then
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro <>'+QuotedStr(MaskEdit2.Text)+' and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_EstDep ='+QuotedStr('C')
      else if MaskEdit3.Text<>'' then
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro ='+QuotedStr(MaskEdit3.Text)+' and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_EstDep ='+QuotedStr('C')
      else begin
        if MaskEdit1.Text<>'' then
          padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_NUMDOC ='+QuotedStr(MaskEdit1.Text)+' and ES_EstDep ='+QuotedStr('C')
        else
          padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_EstDep ='+QuotedStr('C')
      end;
    end

    else if CheckBox6.Checked=true then begin
      if MaskEdit2.Text<>'' then
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro <>'+QuotedStr(MaskEdit2.Text)+' and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_EstDep ='+QuotedStr('N')
      else if MaskEdit3.Text<>'' then
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro ='+QuotedStr(MaskEdit3.Text)+' and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_EstDep ='+QuotedStr('N')
      else begin
        if MaskEdit1.Text<>'' then
          padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_NUMDOC ='+QuotedStr(MaskEdit1.Text)+' and ES_EstDep ='+QuotedStr('N')
        else
          padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_EstDep ='+QuotedStr('N')
      end;
    end

    else begin
      if MaskEdit1.Text<>'' then
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_NUMDOC ='+QuotedStr(MaskEdit1.Text)
      else
        padensai.Filter:= 'ES_TIPENSA ='+QuotedStr('S')+'and ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)
    end;

  end
  else
    if MaskEdit1.Text<>'' then
      padensai.Filter:= 'ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text)+' and ES_NUMDOC ='+QuotedStr(MaskEdit1.Text)
    else
      padensai.Filter:= 'ES_CodPro >='+QuotedStr(Edit3.Text)+'and ES_CodPro <='+QuotedStr(Edit4.Text)+'and ES_DATEMI >='+QuotedStr(Datini.Text)+' and ES_DATEMI <='+QuotedStr(DatFim.Text);
  padensai.Filtered:=true;
  if CONFIGF.DBRadioGroup2.ItemIndex = 0 then
    Tipo := 'RAW'   // Dica: Imprime com matricial Epson mais rápido
  else
    Tipo := 'TEXT'; // Dica: Funciona para impressora USB
  if Imp_Inicio( CONFIGF.Label1.Caption, 'Impressão de dados Employee - THE CLUB', Tipo, CONFIGF.DBCheckBox1.Checked) then begin
    nLin := 0;
    Pag  := 1;
    padensai.First;
    Documento:=padensai.FieldByName('ES_NumDoc').AsString+padensai.FieldByName('ES_CODFOR').AsString+padensai.FieldByName('Es_Client').AsString;
    TotalNota:=0;
    while not padensai.Eof do begin
      if nLin = 0 then
        Cabecalho;
      if padensai.FieldByName('ES_TIPENSA').AsString='E' then
        // Valor:=padensai.FieldByName('ES_VrCusto').AsFloat+FunImpostos(padensai)
        Valor:=CalculaItemGeral(padensai)
      else
        Valor:=padensai.FieldByName('ES_Valor').AsFloat;
      // VlCusto:=Valor;
      VlCusto:=Valor;
      {padensai.FieldByName('ES_ICM').AsFloat+
      padensai.FieldByName('ES_OUTROS').AsFloat+
      padensai.FieldByName('ES_FRETE').AsFloat+
      padensai.FieldByName('ES_IPI').AsFloat-
      padensai.FieldByName('ES_VALDES').AsFloat+
      padensai.FieldByName('ES_VALACR').AsFloat;}
      TotalNota:=TotalNota+(padensai.FieldByName('ES_Quanti').AsFloat*Valor);
      if PADPRODU.Locate('PRO_CODIGO', padensai.FieldByName('ES_CODPRO').AsString, []) then begin
        Imp_Linha(01, 00, padensai.FieldByName('ES_Lancam').AsString+'-',7, 'E');
        Imp_Linha(00, 00, padensai.FieldByName('ES_CodPro').AsString,7, 'E');
        Imp_Linha(00, 00, PADPRODU.FieldByName('PRO_DESCRI').AsString,40, 'E');
        Imp_Linha(00, 01, padensai.FieldByName('ES_NumDoc').AsString,7, 'E');
        Imp_Linha(00, 00, padensai.FieldByName('ES_DatEmi').AsString,10, 'E');
        if RadioButton1.Checked=true then
          Imp_Linha(00, 01, padensai.FieldByName('ES_CODFOR').AsString,6, 'E')
        else if RadioButton2.Checked=true then
          Imp_Linha(00, 01, padensai.FieldByName('Es_Client').AsString,6, 'E')
        else
          Imp_Linha(00, 00, '',1, 'E');
        Imp_Linha(00, 00, PADPRODU.FieldByName('PRO_UNIDAD').AsString,4, 'E');
        if RadioButton3.Checked=false then begin
          Imp_Linha(00, 00, FormatFloat('###,##0.00', padensai.FieldByName('ES_Quanti').AsFloat),12, 'D');
          Imp_Linha(00, 00, FormatFloat('###,###0.000', VlCusto),18, 'D');
          Imp_Linha(00, 00, FormatFloat('###,##0.00', padensai.FieldByName('ES_Quanti').AsFloat*VlCusto),18, 'D');
          if CheckBox1.Checked=false then
            Imp_Linha(00, 01, FormatFloat('###,##0.00', PADPRODU.fieldbyname('PRO_PREVEN').AsFloat),12, 'D')
          else begin
            // Imp_Linha(00, 01, FormatFloat('###,##0.00', padensai.FieldByName('ES_Quanti').AsFloat*(padensai.fieldbyname('ES_VALOR').AsFloat-padensai.fieldbyname('ES_VRCUSTO').AsFloat)),20, 'D')
            Imp_Linha(00, 01, FormatFloat('###,##0.00', padensai.FieldByName('ES_Quanti').AsFloat*(padensai.fieldbyname('ES_VALOR').AsFloat-VlCusto)),20, 'D')
          end;
        end
        else begin
          if padensai.FieldByName('ES_TIPENSA').AsString='S' then
            Imp_Linha(00, 00, FormatFloat('###,##0.00', padensai.FieldByName('ES_Quanti').AsFloat),25, 'D')
          else begin
            Imp_Linha(00, 00, FormatFloat('###,##0.00', padensai.FieldByName('ES_Quanti').AsFloat),12, 'D');
            Imp_Linha(00, 00, '',13, 'D');
          end;
          Imp_Linha(00, 00, FormatFloat('###,###0.000', VlCusto),18, 'D');
          Imp_Linha(00, 00, FormatFloat('###,##0.00', padensai.FieldByName('ES_Quanti').AsFloat*VlCusto),18, 'D');
          Imp_Linha(00, 01, Copy(padensai.FieldByName('ES_Observa').AsString,1,13),13, 'E');

        end;
        if DataModule1.PADEMPRE.FieldByName('EM_Docume').AsString<>'N' then begin
          Imp_Linha(00, 01, '-'+PADPRODU.FieldByName('PRO_BAIXA').AsString,2, 'E');
          Imp_Linha(00, 00, '-'+PADPRODU.FieldByName('PRO_DOCUME').AsString,2, 'E');
          Imp_Linha(00, 00, '-',1, 'E');
          Imp_Linha(00, 00, PADPRODU.FieldByName('PRO_ALIQUO').AsString,5, 'D');
          Imp_Linha(00, 00, '-'+PADPRODU.FieldByName('PRO_SITTRI').AsString,4, 'E');
        end;
        Inc( nLin );
        Total:=Total+(padensai.FieldByName('ES_Quanti').AsFloat*VlCusto);
        QuaTot:=SimpleRoundTo(QuaTot+padensai.FieldByName('ES_Quanti').AsFloat);
        // if CheckBox2.Checked then begin
        // if (CheckBox2.Checked) and (Documento<>padensai.FieldByName('ES_NumDoc').AsString+padensai.FieldByName('ES_CODFOR').AsString+padensai.FieldByName('Es_Client').AsString) then begin
      end;
      if nLin >= 60 then begin
        if not CONFIGF.DBCheckBox1.Checked then
          Imp_Linha(02, 00, ACondensa5+ASubScript+RODAPEV+DSupScript+DCondensa5 , 6, 'E');
        Imp_Ejeta;
        nLin := 0;
        Pag  := Pag+1;
        Cabecalho;
      end;
      Documento:=padensai.FieldByName('ES_NumDoc').AsString+padensai.FieldByName('ES_CODFOR').AsString+padensai.FieldByName('Es_Client').AsString;
      padensai.Next;
      if (CheckBox2.Checked) and (Documento<>padensai.FieldByName('ES_NumDoc').AsString+padensai.FieldByName('ES_CODFOR').AsString+padensai.FieldByName('Es_Client').AsString) or (CheckBox2.Checked) and (padensai.Eof) then begin
        if padensai.FieldByName('Es_Client').AsString<>'' then begin
          PADCLIEN.Locate('CLI_CODIGO',padensai.FieldByName('Es_Client').AsString,[]);
          Imp_Linha(01, 00, 'Cliente.: '+PADCLIEN.FieldByName('CLI_CODIGO').AsString+'-'+PADCLIEN.FieldByName('CLI_NOME').AsString,60, 'E');
        end;
        if padensai.FieldByName('ES_CODFOR').AsString<>'' then begin
          PADFORNE.Locate('FOR_CODIGO',padensai.FieldByName('ES_CODFOR').AsString,[]);
          Imp_Linha(01, 00, 'Fornecedor.: '+PADFORNE.FieldByName('FOR_CODIGO').AsString+'-'+PADFORNE.FieldByName('FOR_NOME').AsString,60, 'E');
        end;
        Imp_Linha(00, 00, 'Total.: '+FormatFloat('###,##0.00', TotalNota),72, 'D');
        TotalNota:=0;
        Inc( nLin );
      end;
      if nLin >= 60 then begin
        if not CONFIGF.DBCheckBox1.Checked then
          Imp_Linha(02, 00, ACondensa5+ASubScript+RODAPEV+DSupScript+DCondensa5 , 6, 'E');
        Imp_Ejeta;
        nLin := 0;
        Pag  := Pag+1;
      end;
    end;
    if RadioButton3.Checked=false then begin
      Imp_Linha(02, 32, 'QUANTIDADE TOTAL DO PERIODO -> '+ FormatFloat('###,##0.00', QuaTot),50, 'D');
      Imp_Linha(00, 00, 'TOTAL DO PERIODO -> '+ FormatFloat('###,##0.00', Total),50, 'D');
    end;
    if not CONFIGF.DBCheckBox1.Checked then
      Imp_Ejeta;
    Imp_Fim
  end;
  MENSPROCF.Close;
  padensai.CancelRange;
  padensai.Filter:='';
  padensai.Filtered:=false;
end;

