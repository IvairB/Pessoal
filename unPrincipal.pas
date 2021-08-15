unit unPrincipal;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.Menus, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Buttons, Winapi.Messages,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin,
  Vcl.ImgList, System.ImageList, System.Actions, Vcl.Mask;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    imnCadastro: TMenuItem;
    imnCadUsuario: TMenuItem;
    imnCadTanque: TMenuItem;
    imnCadBomba: TMenuItem;
    imnAjuda: TMenuItem;
    imnSobre: TMenuItem;
    OpenDialog: TOpenDialog;
    imnCadCombustivel: TMenuItem;
    imnRelatorios: TMenuItem;
    imnGeral: TMenuItem;
    StatusBar: TStatusBar;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    FileNew1: TAction;
    FileSave1: TAction;
    FileExit1: TAction;
    FileOpen1: TAction;
    FileSaveAs1: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout1: TAction;
    FileClose1: TWindowClose;
    WindowTileVertical1: TWindowTileVertical;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ImageList1: TImageList;
    pnAcesso: TPanel;
    edUsuario: TMaskEdit;
    lblUsuario: TLabel;
    lbSenha: TLabel;
    btEntrar: TBitBtn;
    imnSair: TMenuItem;
    edSenha: TEdit;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure btEntrarClick(Sender: TObject);
    procedure edUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure imnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure imnSobreClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
    procedure MenuVisivel(pVisivel : Boolean);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses CHILDWIN, About, unCadastros;

procedure TfrmPrincipal.btEntrarClick(Sender: TObject);
begin
  pnAcesso.Visible := False;
  MenuVisivel(True);
end;

procedure TfrmPrincipal.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { create a new MDI child window }
  Child := TMDIChild.Create(Application);
  Child.Caption := Name;
  if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
end;

procedure TfrmPrincipal.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btEntrar.Click;
end;

procedure TfrmPrincipal.edUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edSenha.SetFocus;
end;

procedure TfrmPrincipal.FileNew1Execute(Sender: TObject);
begin
  if frmCadastros = nil then
  begin
    frmCadastros := TfrmCadastros.Create(Self);
    frmCadastros.Show;
    frmCadastros.AtivaTab(0);
  end;
end;

procedure TfrmPrincipal.FileOpen1Execute(Sender: TObject);
begin
  if OpenDialog.Execute then
    CreateMDIChild(OpenDialog.FileName);
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  MenuVisivel(False);
  edUsuario.SetFocus;
end;

procedure TfrmPrincipal.imnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.imnSobreClick(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TfrmPrincipal.MenuVisivel(pVisivel: Boolean);
begin
  imnCadastro.Visible := pVisivel;
  imnRelatorios.Visible := pVisivel;
  imnAjuda.Visible := pVisivel;
  imnSair.Visible := pVisivel
end;

end.
