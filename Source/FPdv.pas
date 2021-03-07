unit FPdv;

//Cores do card inferior cinza claro
//$00717171

//Cores do card inferior Azul
//$00FFAA55


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.WinXPanels, Vcl.StdCtrls;

type
  TFPdvPrincipal = class(TForm)
    imgFundo: TImage;
    imgMascaraNegra: TImage;
    pnl_topo: TPanel;
    img_logo: TImage;
    Image2: TImage;
    pnl_inferior: TPanel;
    Image1: TImage;
    pnl_barraAzul: TPanel;
    img_barraAzul: TImage;
    pnl_fundo: TPanel;
    pnl_fundo_esquerdo: TPanel;
    pnl_fundo_direito: TPanel;
    cardPanel_fundo_esquerdo: TCardPanel;
    cardPanel_direita: TCardPanel;
    Card1: TCard;
    Panel1: TPanel;
    Card2: TCard;
    Panel2: TPanel;
    img_logo_empresa: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lblLocal: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Image3: TImage;
    Panel4: TPanel;
    Label5: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Image4: TImage;
    Label15: TLabel;
    Label16: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPdvPrincipal: TFPdvPrincipal;

implementation

{$R *.dfm}

procedure TFPdvPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

end.
