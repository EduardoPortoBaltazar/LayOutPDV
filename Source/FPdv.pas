unit FPdv;

//Cores do card inferior cinza claro
//$00717171

//Cores do card inferior Azul
//$00FFAA55


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Imaging.pngimage;

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
    card_itens_lancamento: TCard;
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
    Label15: TLabel;
    Label16: TLabel;
    Image9: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Image1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure addItem;
  public
    { Public declarations }
  end;

var
  FPdvPrincipal: TFPdvPrincipal;

implementation

{$R *.dfm}

procedure TFPdvPrincipal.addItem;
var
  cont: Integer;
begin

  cont := 1;
  with TControlCanvas.Create do
  begin
    Control := card_itens_lancamento;
    Font.Color := RGB(80, 80, 80);
    Font.Size := 11;
    Font.Name := 'Segoe UI Light';
    Font.Style := [fsBold];
    TextOut(10, cont, 'Código');
    Free;
  end;
  with TControlCanvas.Create do
  begin
    Control := card_itens_lancamento;
    Font.Color := RGB(80, 80, 80);
    Font.Size := 11;
    Font.Name := 'Segoe UI Light';
    //Font.Style := [fsBold];
    TextOut(140, cont, 'Descrição');
    Free;
  end;
  with TControlCanvas.Create do
  begin
    Control := card_itens_lancamento;
    Font.Color := RGB(80, 80, 80);
    Font.Size := 11;
    Font.Name := 'Segoe UI Light';
    //Font.Style := [fsBold];
    TextOut(card_itens_lancamento.Width - 230, cont, 'Qnt');
    Free;
  end;
  with TControlCanvas.Create do
  begin
    Control := card_itens_lancamento;
    Font.Color := RGB(80, 80, 80);
    Font.Size := 11;
    Font.Name := 'Segoe UI Light';
    //Font.Style := [fsBold];
    TextOut(card_itens_lancamento.Width - 170, cont, 'Vr.Unit');
    Free;
  end;
  with TControlCanvas.Create do
  begin
    Control := card_itens_lancamento;
    Font.Color := RGB(24, 127, 222);
    Font.Size := 11;
    Font.Name := 'Segoe UI Light';
    Font.Style := [fsBold];
    TextOut(card_itens_lancamento.Width - 100, cont, 'Total');
    Free;
  end;
  with TControlCanvas.Create do
  begin
    Control := card_itens_lancamento;
    Rectangle(10, cont + 30, card_itens_lancamento.Width - 10, cont + 31);
    Free;
  end;
  cont := cont + 40;

end;

procedure TFPdvPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFPdvPrincipal.Image1DblClick(Sender: TObject);
begin
 addItem;
end;

end.
