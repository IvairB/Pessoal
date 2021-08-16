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
    qryCombustiveis: TFDQuery;
    updCombustiveis: TFDUpdateSQL;
    dsCombustiveis: TDataSource;
    qryTanques: TFDQuery;
    updTanques: TFDUpdateSQL;
    dsTanques: TDataSource;
    qryBombas: TFDQuery;
    updBombas: TFDUpdateSQL;
    dsBombas: TDataSource;
    qryAbastecimentos: TFDQuery;
    IntegerField4: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    updAbastecimentos: TFDUpdateSQL;
    dsAbastecimentos: TDataSource;
    qryBombasID_BOMBA: TIntegerField;
    qryBombasNUMERO: TIntegerField;
    qryBombasID_TANQUE: TIntegerField;
    qryTanquesID_TANQUE: TIntegerField;
    qryTanquesNUMERO: TIntegerField;
    qryTanquesID_COMBUSTIVEL: TIntegerField;
    qryTanquesCAPACIDADE: TBCDField;
    qryCombustiveisID_COMBUSTIVEL: TIntegerField;
    qryCombustiveisTIPO: TStringField;
    qryCombustiveisVALOR_COMPRA: TBCDField;
    qryCombustiveisVALOR_VENDA: TBCDField;
    qryCombustiveisPERC_IMPOSTO: TBCDField;
    qryTanquesCOMBUSTIVEL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirUsuarios;
    procedure AbrirTanques;
    procedure AbrirBombas;
    procedure AbrirCombustiveis;
    procedure AbrirAbastecimento;
    function Acesso(pUsuario, pSenha : String) : Boolean;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

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

function TDM.Acesso(pUsuario, pSenha: String): Boolean;
begin
  Result := False;
  AbrirUsuarios;
  if (UpperCase(qryUsuariosNOME.AsString) = UpperCase(pUsuario)) and
     (UpperCase(qryUsuariosSENHA.AsString) = UpperCase(pSenha)) then
     Result := True;
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

end.
