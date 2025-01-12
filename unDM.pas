unit unDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.ADSDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.ADS, FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    Con: TFDConnection;
    WaitCursor: TFDGUIxWaitCursor;
    DriverLink: TFDPhysADSDriverLink;
    qryUsuarios: TFDQuery;
    qryUsuariosID_USUARIO: TIntegerField;
    qryUsuariosNOME: TStringField;
    qryUsuariosUSUARIO: TStringField;
    qryUsuariosSENHA: TStringField;
    qryUsuariosATIVO: TStringField;
    updUsuarios: TFDUpdateSQL;
    dsUsuarios: TDataSource;
    qryTanques: TFDQuery;
    updTanques: TFDUpdateSQL;
    dsTanques: TDataSource;
    qryBombas: TFDQuery;
    updBombas: TFDUpdateSQL;
    dsBombas: TDataSource;
    qryAbastecimentos: TFDQuery;
    updAbastecimentos: TFDUpdateSQL;
    dsAbastecimentos: TDataSource;
    qryBombasID_BOMBA: TIntegerField;
    qryBombasNUMERO: TIntegerField;
    qryBombasID_TANQUE: TIntegerField;
    qryTanquesID_TANQUE: TIntegerField;
    qryTanquesNUMERO: TIntegerField;
    qryTanquesID_COMBUSTIVEL: TIntegerField;
    qryTanquesCAPACIDADE: TBCDField;
    qryCombustiveis: TFDQuery;
    dsCombustiveis: TDataSource;
    updCombustiveis: TFDUpdateSQL;
    qryCombustiveisID_COMBUSTIVEL: TIntegerField;
    qryCombustiveisTIPO: TStringField;
    qryCombustiveisVALOR_COMPRA: TBCDField;
    qryCombustiveisVALOR_VENDA: TBCDField;
    qryCombustiveisPERC_IMPOSTO: TBCDField;
    qryTanquesCOMBUSTIVEL: TStringField;
    qryBombasTANQUE: TIntegerField;
    qryAbastecimentosUSUARIO: TStringField;
    qryAbastecimentosBOMBA: TIntegerField;
    qryAcesso: TFDQuery;
    qryAcessoID_USUARIO: TFDAutoIncField;
    qryAcessoNOME: TStringField;
    qryAcessoUSUARIO: TStringField;
    qryAcessoSENHA: TStringField;
    qryAcessoATIVO: TStringField;
    qryDadosAbastecimento: TFDQuery;
    qryDadosAbastecimentoID_COMBUSTIVEL: TIntegerField;
    qryDadosAbastecimentoTIPO: TStringField;
    qryDadosAbastecimentoVALOR_COMPRA: TBCDField;
    qryDadosAbastecimentoVALOR_VENDA: TBCDField;
    qryDadosAbastecimentoPERC_IMPOSTO: TBCDField;
    qryDadosAbastecimentoDATA: TDateField;
    qryDadosAbastecimentoHORA: TTimeField;
    dsDadosAbastecimento: TDataSource;
    qryAbastecimentosID_ABASTECIMENTO: TFDAutoIncField;
    qryAbastecimentosID_BOMBA: TIntegerField;
    qryAbastecimentosID_USUARIO: TIntegerField;
    qryAbastecimentosVALOR_LIQUIDO: TFMTBCDField;
    qryAbastecimentosLITROS: TFMTBCDField;
    qryAbastecimentosDATA: TDateField;
    qryAbastecimentosHORA: TTimeField;
    qryAbastecimentosVALOR_IMPOSTO: TBCDField;
    qryAbastecimentosVALOR_TOTAL: TBCDField;
    qryDadosAbastecimentoVALOR_IMPOSTO: TFMTBCDField;
    qryDadosAbastecimentoVALOR_VENDA_IMPOSTO: TFMTBCDField;
    qryRelatorioGeral: TFDQuery;
    dsRelatorioGeral: TDataSource;
    qryRelatorioGeralCOMBUSTIVEL: TStringField;
    qryRelatorioGeralBOMBA: TIntegerField;
    qryRelatorioGeralTANQUE: TIntegerField;
    qryRelatorioGeralVALOR_IMPOSTO: TBCDField;
    qryRelatorioGeralVALOR_TOTAL: TBCDField;
    qryRelatorioGeralDATA: TDateField;
    qryRelatorioGeralVALOR_LIQUIDO: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryUsuariosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    vgIdUsuario : Integer;
    procedure AbrirUsuarios;
    procedure AbrirTanques;
    procedure AbrirBombas;
    procedure AbrirCombustiveis;
    procedure AbrirAbastecimento;
    function Acesso(pUsuario, pSenha : String) : String;
    procedure BuscarDadosAbastecimento(pIdBomba : Integer);
    procedure verificacampospreenchidos(DataSet: TDataSet);
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses Forms;

procedure TDM.AbrirAbastecimento;
begin
  with qryAbastecimentos do
  begin
    Close;
    Open;
  end;
end;

procedure TDM.AbrirBombas;
begin
  with qryBombas do
  begin
    Close;
    Open;
  end;
end;

procedure TDM.AbrirCombustiveis;
begin
  with qryCombustiveis do
  begin
    Close;
    Open;
  end;
end;

procedure TDM.AbrirTanques;
begin
  with qryTanques do
  begin
    Close;
    Open;
  end;
end;

procedure TDM.AbrirUsuarios;
begin
  with qryUsuarios do
  begin
    Close;
    Open;
  end;
end;

function TDM.Acesso(pUsuario, pSenha: String): String;
begin
  Result := 'SEM ACESSO';
  with qryAcesso do
  begin
    Close;
    ParamByName('USUARIO').AsString := pUsuario;
    Open;
    if RecordCount > 0 then
      if (UpperCase(qryAcessoSENHA.AsString) = UpperCase(pSenha)) then
        if (UpperCase(qryAcessoATIVO.AsString) = UpperCase('S')) then
        begin
          vgIdUsuario := qryAcessoID_USUARIO.AsInteger;
          Result := '';
        end
        else
          Result := 'Usu�rio inativo.'
      else
        Result := 'Senha Incorreta.'
    else
      Result := 'Usu�rio n�o existe.';
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  with DM.Con do
  begin
    if Connected then
      Connected := False;
    Connected := True;
  end;
end;

procedure TDM.qryUsuariosBeforePost(DataSet: TDataSet);
begin
  verificacampospreenchidos(DataSet);
end;

procedure TDM.verificacampospreenchidos(DataSet: TDataSet);
var
  I: Integer;
begin
  for I := 0 to DataSet.FieldCount -1 do
  begin
    if DataSet.Fields[i].AsString = '' then
    begin
      Application.MessageBox(PChar(DataSet.Fields[i].DisplayName), PChar('Obrigat�rio'));
      Abort;
    end;
  end;
end;

procedure TDM.BuscarDadosAbastecimento(pIdBomba : Integer);
begin
  with qryDadosAbastecimento do
  begin
    Close;
    ParamByName('id_bomba').AsInteger := pIdBomba;
    Open;
  end;
end;

end.
