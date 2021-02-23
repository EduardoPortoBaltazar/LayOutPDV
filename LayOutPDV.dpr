program LayOutPDV;

uses
  Vcl.Forms,
  FPdv in 'Source\FPdv.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
