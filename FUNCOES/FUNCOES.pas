unit FUNCOES;

interface

uses
  Windows, Dialogs, Forms, Controls, SysUtils, Mask, stdCtrls,
  Classes, extCtrls, Buttons, Grids, Messages, ComCtrls,
  Registry, WinSpool, Printers, db, MASKUTILS, Variants,
  comobj, Shellapi, Winsock, RxRichEd, DBCtrls, Math;

  function StrZero(Num : Real ; Zeros,Deci: integer): string;
  function TiraZerosAEsquera(VariavelZerada:string):string;
  function RetZero(ZEROS:string;QUANT:integer):String;
  function Alltrim(Text : string) : string;
  function Replicate( Caracter:String; Quant:Integer ): String;
  function DireiraEsquera(EspacoCol: Integer; Texto: String; TamTotal: Integer; Alinha: Char):STRING;
  function PadC(S:string;Len:byte):string;
  procedure MudaComEnter(pKey:Word);
  Function SerialNum(FDrive:String) :String;
  function RemoveZeros(S: string): string;
  procedure percorreArquivoTexto ( nomeDoArquivo: String );
  function percorreArquivoTextoValidaBancodeDados ( nomeDoArquivo: String ):string;
  function percorreArquivoTextoBuscaNome ( nomeDoArquivo, tipo: String ):string;
  function Mascara(Tipo:string):string;
  Function DataMesExtensoDE (dData : TDateTime) : string;
  Function MesExtenso (xMes : Variant) : string;
  Function DataExtenso (dData : TDateTime) : string;
  Function DiaExtenso (xDia : Variant) : string;
  Function AnoExtenso (xAno : Variant) : string;
  procedure AGUARDE;
  procedure TelaSenha;
  procedure AbreConf_Padrao;
  Function DefineDiretorioArquivoSalvo(NomeDoArquivoFuncao,MesAnoFuncao,PDFTXT:string): string;
  function AnoBiSexto(Ayear: Integer): Boolean;


var
  AExpandido, DExpandido, ACondensa2, DCondensa2, ACondensa3,
  DCondensa3, ACondensa4, DCondensa4, ACondensa5, DCondensa5,
  ACondensa6, DCondensa6, ACondensa7, DCondensa7,
  ASaltLinha, ASaltPoleg, AReduEntr1, DReduEntr1, AReduEntr2,
  DReduEntr2, ASublinhad, DSublinhad, ASupScript, ASubScript,
  DSupScript, AEnfatizad, DEnfatizad, DTudo, DiretorioDados,
  NomeDoArquivo
  : string;
  hPrinter: THandle;
  BytesWritten: DWORD;

  // procedure Imp_InicializaPagina;
  // procedure Imp_Linha(SaltaLin, EspacoCol: Integer; Texto: String; TamTotal: Integer; Alinha: Char);


implementation

uses PRINCIPAL, GERAL2, CAD_MANUTENCAO;

// uses DADOS, MENSPROC;

function StrZero(Num : Real ; Zeros,Deci: integer): string;
var tam,z : integer;
    res,zer : string;
begin
  Str(Num:Zeros:Deci, res);
  res := Alltrim(res);
  tam := length(res);
  zer := '';
  for z := 1 to (Zeros-tam) do
      zer := zer + '0';
  Result := zer+res;
  // RODAPEV:='            ALL INFORMATICA -  Av. OSWALDO CRUZ, 1049, CENTRO, CEP 37.190-000, TRES PONTAS, MG - FONE/FAX: 35-3265-2699';
end;

function Alltrim(Text : string) : string;
begin
while Pos(' ',Text) > 0 do
  Delete(Text,Pos(' ',Text),1);
  Result := Text;
end;

procedure MudaComEnter(pKey:Word);
begin
 if not (Screen.ActiveControl is TBitBtn) then begin
   if pKey = VK_RETURN then
      Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0); ///requer uni Messages
 end;
end;

function Replicate( Caracter:String; Quant:Integer ): String;
{Repete o mesmo caractere várias vezes}
var I : Integer;
begin
Result := '';
  for I := 1 to Quant do
  Result := Result + Caracter;
end;

function DireiraEsquera(EspacoCol: Integer; Texto: String; TamTotal: Integer; Alinha: Char):STRING;
var
  i: integer;
  Espaco: string;
begin
  Espaco := StringOfChar(' ', TamTotal-Length(Texto));
  if Alinha = 'E' then
    Texto := Texto+Espaco
  else if Alinha = 'D' then
    Texto := Espaco+Texto;
  Texto := StringOfChar(' ', EspacoCol)+Texto;
  Result := Texto;
end;

function PadC(S:string;Len:byte):string;
// Centraliza uma string em um espaço determinado
var
 Str:String;
 L:byte;
begin
  str :='';
  if len < Length(s) then begin
    Result := '';
    Exit;
  end;
  l:=(Len-Length(S)) div 2;
  while l > 0 do begin
    str:=str+' ';
    dec(l);
  end;
  for l:=1 to length(S) do begin
    str := str+s[L];
  end;
  Result := str;
end;

Function SerialNum(FDrive:String) :String;
Var
Serial:DWord;
DirLen,Flags: DWord;
DLabel : Array[0..11] of Char;
begin
Try GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
Result := IntToHex(Serial,8);
Except Result :='';
end;
end;

function RemoveZeros(S: string): string;
var
  I, J : Integer;
begin
  I := Length(S);
  while (I > 0) and (S[I] <= ' ') do begin
    Dec(I);
  end;
  J := 1;
  while (J < I) and ((S[J] <= ' ') or (S[J] = '0')) do begin
    Inc(J);
  end;
  Result := Copy(S, J, (I-J)+1);
end;


procedure percorreArquivoTexto ( nomeDoArquivo: String );
var arq: TextFile;
    linha: String;
begin
  AssignFile ( arq, nomeDoArquivo );
  Reset ( arq );
  ReadLn ( arq, linha );
  while not Eof ( arq ) do begin
    { Processe a linha lida aqui. }
    { Para particionar a linha lida em pedaços, use a função Copy. }
    ReadLn ( arq, linha );
  end;
  CloseFile ( arq );
end;

function percorreArquivoTextoValidaBancodeDados ( nomeDoArquivo: String ):string;
var arq: TextFile;
    linha, BancodeDados: String;
begin
  AssignFile ( arq, nomeDoArquivo );
  Reset ( arq );
  ReadLn ( arq, linha );
  while not Eof ( arq ) do begin
    { Processe a linha lida aqui. }
    { Para particionar a linha lida em pedaços, use a função Copy. }
    ReadLn ( arq, linha );
    if Copy(linha,1,7)='Caminho' then begin
      // ShowMessage(linha);
      BancodeDados:=Copy(linha,9,100);
    end;

    if Copy(linha,1,9)='Diretorio' then begin
      // ShowMessage(linha);
      //  ShowMessage(Copy(linha,11,100));
      DiretorioDados:=Copy(linha,11,100);
    end;

    {if Copy(linha,1,9)='Diretorio' then
      ShowMessage(linha);}
  end;
  CloseFile ( arq );
  Result:=BancodeDados
end;

function percorreArquivoTextoBuscaNome ( nomeDoArquivo, tipo: String ):string;
var arq: TextFile;
    linha, NomedaLinha: String;
begin
  {
  if fileexists('BASE.INI') then begin
    AssignFile ( arq, nomeDoArquivo );
    Reset ( arq );
    ReadLn ( arq, linha );
    while not Eof ( arq ) do begin
      ReadLn ( arq, linha );

      if Copy(linha,1,3)=tipo then begin
        NomedaLinha:=Copy(linha,5,100)
      end;

    end;
    CloseFile ( arq );
    Result:=NomedaLinha
  end;
  }
end;


function Mascara(Tipo:string):string;
begin
  if tipo='CNPJ' then
    Mascara:='99.999.999/9999-99;0;_';
  if tipo='CPF' then
    Mascara:='999.999.999-99;0;_';
  if tipo='CEP' then
    Mascara:='99999-999;0;_';
  if tipo='FONE' then
    Mascara:='99999999999999;0;_';
  if tipo='IBGE' then
    Mascara:='9999999;0;_';
end;

function RetZero(ZEROS:string;QUANT:integer):String;
var
 I, Tamanho : integer;
 aux : string;
begin
  aux := zeros;
  Tamanho := length(ZEROS);
  ZEROS := '';
  for I := 1 to quant-tamanho do
    ZEROS := ZEROS+'0';
  aux := zeros + aux;
  RetZero := aux;
end;

Function DataExtenso (dData : TDateTime) : string;
var Ano, Mes, Dia : word;
begin
  DecodeDate(dData, Ano, Mes, Dia);
  DataExtenso := DiaExtenso(Dia)  + ' dias de ' + MesExtenso(Mes) + ' de ' + AnoExtenso(Ano) ;
end;

Function DiaExtenso (xDia : Variant) : string;
Var Dia, Mes, Ano : Word;
begin
  Dia := 0;
  Case VarType (xDia) of
  VarDate : DecodeDate (xDia, Ano, Mes, Dia);
  VarString :
  Try
  Dia := StrToInt (xDia);
  Except
  End;
  else
  Try
  Dia := Round (xDia);
  Except
  End;
  end;
  case Dia of
    1: Result := 'um';
    2: Result := 'dois';
    3: Result := 'três';
    4: Result := 'quatro';
    5: Result := 'cinco';
    6: Result := 'seis';
    7: Result := 'sete';
    8: Result := 'oito';
    9: Result := 'nove';
    10: Result := 'dez';
    11: Result := 'onze';
    12: Result := 'doze';
    13: Result := 'treze';
    14: Result := 'quatorze';
    15: Result := 'quinze';
    16: Result := 'dezesseis';
    17: Result := 'dezessete';
    18: Result := 'dezoito';
    19: Result := 'dezenove';
    20: Result := 'vinte';
    21: Result := 'vinte e um';
    22: Result := 'vinte e dois';
    23: Result := 'vinte e três';
    24: Result := 'vinte e quatro';
    25: Result := 'vinte e cinco';
    26: Result := 'vinte e seis';
    27: Result := 'vinte e sete';
    28: Result := 'vinte e oito';
    29: Result := 'vinte e nove';
    30: Result := 'trinta';
    31: Result := 'trinta e um';
  else
  Result := '';
  end;
end;

Function AnoExtenso (xAno : Variant) : string;
Var Dia, Mes, Ano : Word;
begin
  Ano := 0;
  Case VarType (xAno) of
    VarDate : DecodeDate (xAno, Ano, Mes, Dia);
    VarString :
  Try
    Ano := StrToInt (xAno);
  Except
  end;
  else
  Try
  Ano := Round (xAno);
  Except
  end;
  end;
  case Ano of
    2005: Result := 'dois mil e cinco';
    2006: Result := 'dois mil e seis';
    2007: Result := 'dois mil e sete';
    2008: Result := 'dois mil e oito';
    2009: Result := 'dois mil e nove';
    2010: Result := 'dois mil e dez';
    2011: Result := 'dois mil e onze';
    2012: Result := 'dois mil e doze';
    2013: Result := 'dois mil e treze';
    2014: Result := 'dois mil e quatorze';
    2015: Result := 'dois mil e quinze';
    2016: Result := 'dois mil e dezesseis';
    2017: Result := 'dois mil e dezessete';
    2018: Result := 'dois mil e dezoito';
    2019: Result := 'dois mil e dezenove';
    2020: Result := 'dois mil e vinte';
  else
    Result := '';
  end;
end;

Function DataMesExtensoDE (dData : TDateTime) : string;
var Ano, Mes, Dia : word;
begin
  DecodeDate(dData, Ano, Mes, Dia);
  DataMesExtensoDE := StrZero(Dia,2,0) + ' de ' + MesExtenso(Mes) + ' de ' + IntToStr(Ano);
end;

Function MesExtenso (xMes : Variant) : string;
Var Dia, Mes, Ano : Word;
begin
  Mes := 0;
  Case VarType (xMes) of
  VarDate : DecodeDate (xMes, Ano, Mes, Dia);
  VarString :
  Try
  Mes := StrToInt (xMes);
  Except
  end;
  else
  Try
  Mes := Round (xMes);
  Except
  end;
  end;
  case Mes of
    1: Result := 'janeiro';
    2: Result := 'fevereiro';
    3: Result := 'março';
    4: Result := 'abril';
    5: Result := 'maio';
    6: Result := 'junho';
    7: Result := 'julho';
    8: Result := 'agosto';
    9: Result := 'setembro';
    10: Result := 'outubro';
    11: Result := 'novembro';
    12: Result := 'dezembro';
  else
    Result := '';
  end;
end;

procedure AGUARDE;
begin
end;  

Function DefineDiretorioArquivoSalvo(NomeDoArquivoFuncao,MesAnoFuncao,PDFTXT:string): string;
var Data,hora,DataHora,DiretorioNovo:string;
begin
  Data:=DateToStr(Date);
  hora:=TimeToStr(time);
  DataHora:=Copy(Data,1,2)+'-'+Copy(Data,4,2)+'-'+Copy(Data,7,4)+'-'+Copy(hora,1,2)+Copy(hora,4,2)+Copy(hora,7,2);
  if MesAnoFuncao<>'' then begin
    DataHora:=percorreArquivoTextoBuscaNome ( 'C:\DigiSat\GG4\BASE.INI' , 'PDF' )+'\'+MesAnoFuncao+'\'+NomeDoArquivoFuncao+'-'+DataHora+PDFTXT;
    DiretorioNovo:=percorreArquivoTextoBuscaNome ( 'C:\DigiSat\GG4\BASE.INI' , 'PDF' )+'\'+MesAnoFuncao;
    if not DirectoryExists(DiretorioNovo) then
      ForceDirectories(DiretorioNovo);
  end
  else
    DataHora:=percorreArquivoTextoBuscaNome ( 'C:\DigiSat\GG4\BASE.INI' , 'PDF' )+'\'+NomeDoArquivoFuncao+'-'+DataHora+PDFTXT;
  Result := DataHora;
end;

procedure TelaSenha;
begin
  senha:='';
  with TGeral2f.Create(nil) do begin
    Width:=Panel4.Width;
    Height:=Panel4.Height;
    NxNotebook61.ActivePageIndex:=0;
    ShowModal;
  end;
end;

procedure AbreConf_Padrao;
begin
end;

function TiraZerosAEsquera(VariavelZerada:string):string;
var z:integer;
begin
  if VariavelZerada<>'' then begin
    for z := 1 to 13 do begin
      if Copy(VariavelZerada,z,1)<>'0' then
        break;
    end;
    Result:=Copy(VariavelZerada,z,15-Z);
  end;
  // Result:='';
end;

function AnoBiSexto(Ayear: Integer): Boolean;
begin
  Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or
  (AYear mod 400 = 0));
end;

end.
