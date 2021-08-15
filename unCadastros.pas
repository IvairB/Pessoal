unit unCadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls;

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
    lblNomeCombustiveis: TLabel;
    edNomeCombustiveis: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtivaTab(pAba : Integer);
  end;

var
  frmCadastros: TfrmCadastros;

implementation

{$R *.dfm}

uses unDM;

procedure TfrmCadastros.AtivaTab(pAba: Integer);
var
  i : integer;
begin
  for i := 0 to pgCadastros.PageCount - 1 do
    pgCadastros.Pages[i].TabVisible := False;

  pgCadastros.Pages[pAba].TabVisible := True;
  pgCadastros.ActivePageIndex := pAba;
end;

procedure TfrmCadastros.FormActivate(Sender: TObject);
begin
  AbrirDados;
end;

procedure TfrmCadastros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmCadastros.Free;
end;

end.
