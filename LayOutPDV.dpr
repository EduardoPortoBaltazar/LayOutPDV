program LayOutPDV;

uses
  Vcl.Forms,
  FPdv in 'Source\FPdv.pas' {FPdvPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPdvPrincipal, FPdvPrincipal);
  Application.Run;
end.
