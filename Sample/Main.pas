unit Main;

interface

uses
 Winapi.Windows,
 Winapi.Messages,
 System.SysUtils,
 System.Variants,
 System.Classes,
 Vcl.Graphics,
 Vcl.Controls,
 Vcl.Forms,
 Vcl.Dialogs,
 Vcl.StdCtrls,
 Boleto.Interfaces;

type
 TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
 private
  FBoleto : iBoleto;
 public
  { Public declarations }
 end;

var
 Form1: TForm1;

implementation

{$R *.dfm}

uses Services,
 Boleto,
 ACBrBoleto,
 ACBrBoletoConversao;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FBoleto
   .Banco
    .TipoCobranca(cobSantander)
    .LocalPagamento('Pagar em qualquer agencia até o vencimento')
   .&End
   .Cedente
    .CNPJCPF('99999999999999')
    .Conta('1234')
    .ContaDigito('0')
    .Agencia('5555')
    .AgenciaDigito('1')
    .Telefone('(42) 9 9992-1514')
    .FantasiaCedente('NOME DO CEDENTE')
   .&End
   .Titulo
    .LimparListaBoletos
    .Novo
     .add
      .Carteira('A')
      .CodigoGeracao('1')
      .Vencimento(date)
      .ValorDocumento(1500)
      .Aceite(atSim)
      .DataProcessamento(Date)
      .DataDocumento(Date)
      .NumeroDocumento('1025')
      .ValorAbatimento(1500)
      .NossoNumero('878787')
      .SeuNumero('1234')
      .Sacado
       .Nome('Nome Completo')
       .CNPJCPF('99999999999')
       .Logradouro('Rua Pedro Santos')
       .Numero('99')
       .CEP('9999999')
       .Cidade('Nome da Cidade')
       .UF('PR')
       .TipoAvalista(pNenhum)
      .&End
     .&End
   .&End
  .Imprimir
  .GerarRemessa;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FBoleto:= aService.Boleto;
end;

end.
