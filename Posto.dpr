program Posto;

uses
  Forms,
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  CHILDWIN in 'CHILDWIN.PAS' {MDIChild},
  about in 'about.pas' {AboutBox},
  unDM in 'unDM.pas' {DM: TDataModule},
  unCadastros in 'unCadastros.pas' {frmCadastros};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
