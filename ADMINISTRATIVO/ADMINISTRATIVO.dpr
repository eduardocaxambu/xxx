program ADMINISTRATIVO;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Principal_FRM},
  Mestre in '..\PADRAO\Mestre.pas' {Mestre_FRM},
  Mestre_Filho in '..\PADRAO\Mestre_Filho.pas' {Mestre_Filho_FRM},
  Vcl.Themes,
  Vcl.Styles,
  Cadastros in 'Cadastros.pas' {Cadastros_FRM},
  Movimentacoes in 'Movimentacoes.pas' {Movimentacoes_FRM},
  FUNCOES in '..\FUNCOES\FUNCOES.pas',
  DADOS_CADASTROS in '..\DataModule\DADOS_CADASTROS.pas' {DADOS_CADASTROSf: TDataModule},
  FUNCAORELATORIOS in '..\FUNCOES\FUNCAORELATORIOS.pas',
  FUNCOES_DADOS in '..\FUNCOES\FUNCOES_DADOS.pas',
  FUNCOES_LOCAIS in '..\FUNCOES\FUNCOES_LOCAIS.pas',
  FUNCOESUNIDAC in '..\FUNCOES\FUNCOESUNIDAC.pas',
  dadosOBJETOS in '..\DataModule\dadosOBJETOS.pas' {DataOBJETOSx: TDataModule},
  DADOS_CRIA in '..\DataModule\DADOS_CRIA.pas' {DataModule2: TDataModule},
  DADOSFRENTE in '..\DataModule\DADOSFRENTE.pas' {DADOSFRENTEf: TDataModule},
  DADOS_CONSULTAS in '..\DataModule\DADOS_CONSULTAS.pas' {DADOS_CONSULTASF: TDataModule},
  dadosFinaceiro in '..\DataModule\dadosFinaceiro.pas' {DataFinanceiro: TDataModule},
  DADOSVEICULOS in '..\DataModule\DADOSVEICULOS.pas' {DADOSVEICULOSf: TDataModule},
  DADOSMOVIMENTO in '..\DataModule\DADOSMOVIMENTO.pas' {DADOSMOVIMENTOF: TDataModule},
  EXTENSO in '..\PADRAO\EXTENSO.pas' {Extensof},
  FrentredeCaixa in 'FrentredeCaixa.pas' {FrentredeCaixaF},
  GERAL in 'GERAL.pas' {GERALF},
  CONSULTAS in 'CONSULTAS.pas' {CONSULTASF},
  CAD_MANUTENCAO in 'CAD_MANUTENCAO.pas' {CAD_MANUTENCAOf},
  PREVIEW in '..\PADRAO\PREVIEW.pas' {FrmPreview},
  MENSPROC in '..\PADRAO\MENSPROC.pas' {MENSPROCF},
  FUNCOESGERAIS in '..\FUNCOES\FUNCOESGERAIS.pas',
  GERAL3 in 'GERAL3.pas' {GERAL3F},
  GERAL2 in 'GERAL2.pas' {GERAL2F},
  mestre2 in '..\PADRAO\mestre2.pas' {mestre2_FRM},
  CONTASRECPAG in 'CONTASRECPAG.pas' {CONTASRECPAGf},
  CadastroMovimentos in 'CadastroMovimentos.pas' {CadastroMovimentosf},
  relatoriosantigos in '..\FUNCOES\relatoriosantigos.pas',
  VISUALIZACAO in '..\PADRAO\VISUALIZACAO.pas' {VISUALIZACAOF},
  TrocaPreco in 'TrocaPreco.pas' {TrocaPrecof},
  GERALCONTAS in 'GERALCONTAS.pas' {GERALCONTASF},
  GERALFRENTE in 'GERALFRENTE.pas' {GERALFRENTEF},
  ImportaDados in '..\DataModule\ImportaDados.pas' {ImportaDadosf: TDataModule},
  Importacao in '..\PADRAO\Importacao.pas' {Importacaof},
  ACESSO in '..\PADRAO\ACESSO.pas' {ACESSOF},
  acessoadados in '..\PADRAO\acessoadados.pas' {acessoadadosf},
  estoque in '..\PADRAO\estoque.pas' {estoquef},
  Relatorios in '..\PADRAO\Relatorios.pas' {Relatoriosf},
  GERALDADOS in '..\PADRAO\GERALDADOS.pas' {GERALDADOS_FRM},
  mapas in 'mapas.pas' {mapas_FRM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal_FRM, Principal_FRM);
  Application.CreateForm(TDADOS_CADASTROSf, DADOS_CADASTROSf);
  Application.CreateForm(TDataOBJETOSx, DataOBJETOSx);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TDADOSFRENTEf, DADOSFRENTEf);
  Application.CreateForm(TDADOS_CONSULTASF, DADOS_CONSULTASF);
  Application.CreateForm(TDataFinanceiro, DataFinanceiro);
  Application.CreateForm(TDADOSVEICULOSf, DADOSVEICULOSf);
  Application.CreateForm(TDADOSMOVIMENTOF, DADOSMOVIMENTOF);
  Application.CreateForm(TFrmPreview, FrmPreview);
  Application.CreateForm(TMENSPROCF, MENSPROCF);
  Application.CreateForm(TGERAL3F, GERAL3F);
  Application.CreateForm(TGERAL2F, GERAL2F);
  Application.CreateForm(TVISUALIZACAOF, VISUALIZACAOF);
  Application.CreateForm(TImportaDadosf, ImportaDadosf);
  Application.Run;
end.
