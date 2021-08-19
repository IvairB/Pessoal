unit unRelatorioGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, RLReport;

type
  TfrmRelatorioGeral = class(TForm)
    lblCombustivel: TLabel;
    cbCombustivel: TDBLookupComboBox;
    lblTanqueBombas: TLabel;
    cbTanque: TDBLookupComboBox;
    lblBomba: TLabel;
    cbBomba: TDBLookupComboBox;
    edDataIni: TMaskEdit;
    edDataFin: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnPesquisar: TButton;
    grdRelatorioGeral: TDBGrid;
    rgTipo: TRadioGroup;
    rpSintetico: TRLReport;
    RLBand4: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLBand6: TRLBand;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    rpAnalitico: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand2: TRLBand;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLSystemInfo1: TRLSystemInfo;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand5: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult4: TRLDBResult;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vgSql : String;
  public
    { Public declarations }
  end;

var
  frmRelatorioGeral: TfrmRelatorioGeral;

implementation

{$R *.dfm}

uses unDM;

procedure TfrmRelatorioGeral.btnPesquisarClick(Sender: TObject);
var
  vSelect, vGroup : String;
begin
  if edDataIni.EditText = '__/__/____' then
  begin
    ShowMessage('Data Inicial é obrigatória');
    edDataIni.SetFocus;
  end;

  if edDataFin.EditText = '__/__/____' then
  begin
    ShowMessage('Data Final é obrigatória');
    edDataFin.SetFocus;
  end;

  vSelect := 'select data, combustivel, bomba, tanque, sum(valor_liquido) valor_liquido, ' +
             '  sum(valor_imposto) valor_imposto, sum(valor_total) valor_total from (';

  vGroup := ' ) group by data, combustivel, bomba, tanque ';

  with dm.qryRelatorioGeral, sql do
  begin
    Close;
    Text := vgSql;

    if rgTipo.ItemIndex = 1 then
      Text := vSelect + Text;

    if cbCombustivel.KeyValue <> null then
      Text := Text + ' and c.id_combustivel = ' + VarToStr(cbCombustivel.KeyValue);

    if cbBomba.KeyValue <> null then
      Text := Text + ' and b.id_bomba = ' + VarToStr(cbBomba.KeyValue);

    if cbTanque.KeyValue <> null then
      Text := Text + ' and t.id_tanque = ' + VarToStr(cbTanque.KeyValue);

    if rgTipo.ItemIndex = 1 then
      Text := Text + vGroup;

    Text := Text + ' order by data, combustivel, bomba, tanque';

    ParamByName('dataini').AsDate := StrToDate(edDataIni.EditText);
    ParamByName('datafin').AsDate := StrToDate(edDataFin.EditText);
    Open;
        if RecordCount > 0 then
      if rgTipo.ItemIndex = 0 then
        rpAnalitico.PreviewModal
      else
        rpSintetico.PreviewModal;
  end;

end;

procedure TfrmRelatorioGeral.FormCreate(Sender: TObject);
begin
  dm.AbrirCombustiveis;
  dm.AbrirTanques;
  dm.AbrirBombas;
  vgSql := dm.qryRelatorioGeral.SQL.Text;
  edDataIni.Text := DateToStr(now);
  edDataFin.Text := DateToStr(now);
end;

end.
