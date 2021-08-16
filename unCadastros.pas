unit unCadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastros = class(TForm)
    pgCadastros: TPageControl;
    tsUsuarios: TTabSheet;
    nvUsuarios: TDBNavigator;
    tsTanques: TTabSheet;
    edIDUsuarios: TDBEdit;
    edNomeUsuarios: TDBEdit;
    edUsuario: TDBEdit;
    edSenha: TDBEdit;
    cbAtivo: TDBCheckBox;
    lblIDUsuarios: TLabel;
    lblNomeUsuarios: TLabel;
    lblSenha: TLabel;
    lblUsuario: TLabel;
    tsCombustiveis: TTabSheet;
    tsBombas: TTabSheet;
    nvCombustiveis: TDBNavigator;
    lblIDCombustiveis: TLabel;
    edIDCombustiveis: TDBEdit;
    lblTipoCombustiveis: TLabel;
    edNomeCombustiveis: TDBEdit;
    grdCombustiveis: TDBGrid;
    grdUsuarios: TDBGrid;
    lblPercImposto: TLabel;
    lblValorCompra: TLabel;
    lblValorVenda: TLabel;
    edPerc_Imposto: TDBEdit;
    edValorCompra: TDBEdit;
    edValorVenda: TDBEdit;
    lblIdTanques: TLabel;
    lblNumero: TLabel;
    DBNavigator1: TDBNavigator;
    edIdTanques: TDBEdit;
    edNumero: TDBEdit;
    DBGrid1: TDBGrid;
    lblCapacidade: TLabel;
    lblCombustivel: TLabel;
    edCapacidade: TDBEdit;
    cbCombustivel: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsUsuariosShow(Sender: TObject);
    procedure tsCombustiveisShow(Sender: TObject);
    procedure tsTanquesShow(Sender: TObject);
    procedure tsBombasShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtivaTab(pTs : TTabSheet);
  end;

var
  frmCadastros: TfrmCadastros;

implementation

{$R *.dfm}

uses unDM;

procedure TfrmCadastros.AtivaTab(pTs : TTabSheet);
var
  i : integer;
begin
  for i := 0 to pgCadastros.PageCount - 1 do
  begin
    pgCadastros.Pages[i].TabVisible := False;
    if pgCadastros.Pages[i].Name = pTs.Name then
    begin
      pgCadastros.Pages[i].TabVisible := True;
      pgCadastros.ActivePage := pTs;
    end;
  end;

end;

procedure TfrmCadastros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmCadastros.Free;
  frmCadastros := nil;
end;

procedure TfrmCadastros.tsBombasShow(Sender: TObject);
begin
  dm.AbrirBombas;
end;

procedure TfrmCadastros.tsCombustiveisShow(Sender: TObject);
begin
  dm.AbrirCombustiveis;
end;

procedure TfrmCadastros.tsTanquesShow(Sender: TObject);
begin
  dm.AbrirCombustiveis;
  dm.AbrirTanques;
end;

procedure TfrmCadastros.tsUsuariosShow(Sender: TObject);
begin
  dm.AbrirUsuarios;
end;

end.
