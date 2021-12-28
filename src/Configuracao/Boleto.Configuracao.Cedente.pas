unit Boleto.Configuracao.Cedente;

interface

uses
 Boleto.Interfaces,
 ACBrBoletoConversao,
 ACBrBoleto;

type
  TCedente = class(TInterfacedObject, iCedente)
   private
     FParent : iBoleto;
   public
    constructor Create(Parent : iBoleto);
    destructor Destroy; override;
    class function New(Parent : iBoleto) : iCedente;
    function Agencia(aValue: string): iCedente;
    function AgenciaDigito(aValue: string): iCedente;
    function Bairro(aValue : string) : iCedente;
    function CaracTitulo(aValue : TACBRCaracTitulo) : iCedente;
    function CEP(aValue : string) : iCedente;
    function Cidade(aValue : string) : iCedente;
    function CNPJCPF(aValue : string) : iCedente;
    function CodigoCedente(aValue: string): iCedente;
    function CodigoTransmissao(aValue: string): iCedente;
    function Complemento(aValue : string) : iCedente;
    function Conta(aValue: string): iCedente;
    function ContaDigito(aValue: string): iCedente;
    function Convenio(aValue : string) : iCedente;
    function DigitoVerificadorAgenciaConta(aValue: string): iCedente;
    function FantasiaCedente(aValue : string) : iCedente;
    function IdenDistribuicao(aValue : TACBrIdentDistribuicao) : iCedente;
    function Logradouro(aValue : string) : iCedente;
    function Modalidade(aValue : string) : iCedente;
    function Nome(aValue : string) : iCedente;
    function NumeroRes(aValue : string) : iCedente;
    function Operacao(aValue : string) : iCedente;
    function ResponEmissao(aValue : TACBrResponEmissao) : iCedente;
    function Telefone(aValue : string) : iCedente;
    function TipoCarteira(aValue : TACBrTipoCarteira) : iCedente;
    function TipoInscricao(aValue : TACBrPessoaCedente) : iCedente;
    function UF(aValue : string) : iCedente;
    function &End : iBoleto;
  end;

implementation


{ TCedente }

uses
  SysUtils;

function TCedente.&End: iBoleto;
begin
  Result:= FParent;
end;

function TCedente.FantasiaCedente(aValue : string) : iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Nome:= aValue;
end;

function TCedente.Agencia(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Agencia:= aValue;
end;

function TCedente.AgenciaDigito(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .AgenciaDigito:= aValue;
end;

function TCedente.Bairro(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Bairro:= aValue;
end;

function TCedente.CaracTitulo(aValue: TACBRCaracTitulo): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .CaracTitulo:= aValue;
end;

function TCedente.CEP(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .CEP:= aValue;
end;

function TCedente.Cidade(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Cidade:= aValue;
end;

function TCedente.CNPJCPF(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .CNPJCPF:= aValue;
end;

function TCedente.CodigoCedente(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .CodigoCedente:= aValue;
end;

function TCedente.CodigoTransmissao(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .CodigoTransmissao:= aValue;
end;

function TCedente.Complemento(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Complemento:= aValue;
end;

function TCedente.Conta(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Conta:= aValue;
end;

function TCedente.ContaDigito(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .ContaDigito:= aValue;
end;

function TCedente.Convenio(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Convenio:= aValue;
end;

function TCedente.IdenDistribuicao(aValue: TACBrIdentDistribuicao): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .IdentDistribuicao:= aValue;
end;

function TCedente.Logradouro(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Logradouro:= aValue;
end;

function TCedente.Modalidade(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Modalidade:= aValue;
end;

constructor TCedente.Create(Parent: iBoleto);
begin
  FParent:= Parent;
end;

destructor TCedente.Destroy;
begin

  inherited;
end;

function TCedente.DigitoVerificadorAgenciaConta(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .DigitoVerificadorAgenciaConta:= aValue;
end;

class function TCedente.New(Parent: iBoleto): iCedente;
begin
  Result:= Self.Create(Parent);
end;


function TCedente.Nome(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Nome:= aValue;
end;

function TCedente.NumeroRes(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .NumeroRes:= aValue;
end;

function TCedente.Operacao(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Operacao:= aValue;
end;

function TCedente.ResponEmissao(aValue: TACBrResponEmissao): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .ResponEmissao:= aValue;
end;

function TCedente.Telefone(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .Telefone:= aValue;
end;

function TCedente.TipoCarteira(aValue: TACBrTipoCarteira): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .TipoCarteira:= aValue;
end;

function TCedente.TipoInscricao(aValue: TACBrPessoaCedente): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .TipoInscricao:= aValue;
end;

function TCedente.UF(aValue: string): iCedente;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Cedente
      .UF:= aValue;
end;

end.
