unit Boleto.Configuracao.NovoTitulo;

interface

uses
  Boleto.Interfaces, ACBrBoleto, ACBrBoletoConversao;

type
  TNovoTitulo = class(TInterfacedObject, iNovoTitulo)
    private
     [weak]
     FParent : iTitulo;
     FComponent : iBoleto;
     FTitulo : TACBrTitulo;
     FSacado : iSacado;
    public
      constructor Create(Parent : iTitulo);
      destructor Destroy; override;
      class function New(Parent : iTitulo) : iNovoTitulo;
      function Component(aComponent : iBoleto) : iNovoTitulo;
      function Carteira(aValue : string) : iNovoTitulo;
      function CodigoGeracao(aValue: string): iNovoTitulo;
      function Sacado : iSacado;
      function Vencimento(aValue : TDate) : iNovoTitulo;
      function DataDocumento(aValue : TDate) : iNovoTitulo;
      function NumeroDocumento(aValue : string) : iNovoTitulo;
      function Especie(aValue : string) : iNovoTitulo;
      function Aceite(aValue : TACBRAceiteTitulo) : iNovoTitulo;
      function DataProcessamento(aValue : TDate) : iNovoTitulo;
      function NossoNumero(aValue : string) : iNovoTitulo;
      function SeuNumero(aValue : string) : iNovoTitulo;
      function ValorDocumento(aValue : Real) : iNovoTitulo;
      function LocalPagamento(aValue : string) : iNovoTitulo;
      function TipoOcorrenciaOriginal(aValue : TACBrTipoOcorrencia) : iNovoTitulo;
      function Instrucao1(aValue : string) : iNovoTitulo;
      function Instrucao2(aValue : string) : iNovoTitulo;
      function PercMulta(aValue : real) : iNovoTitulo;
      function ValorDesconto(aValue : real) : iNovoTitulo;
      function DataDesconto(aValue : TDate) : iNovoTitulo;
      function ValorAbatimento(aValue : real) : iNovoTitulo;
      function DataAbatimento(aValue : TDate) : iNovoTitulo;
      function ValorMoraJuros(aValue : real) : iNovoTitulo;
      function DataMoraJutos(aValue : TDate) : iNovoTitulo;
      function DataProtesto(aValue : TDate) : iNovoTitulo;
      function add : iNovoTitulo;
      function &End : iTitulo;
  end;
implementation

uses
  Boleto.Configuracao.Sacado;

{ TNovoTitulo }

function TNovoTitulo.Aceite(aValue: TACBRAceiteTitulo): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .Aceite:= aValue;
end;

function TNovoTitulo.add: iNovoTitulo;
begin
  Result:= Self;
  FTitulo:= FComponent.Component.Boleto.CriarTituloNaLista;
end;

function TNovoTitulo.Carteira(aValue: string): iNovoTitulo;
begin
  Result:= Self;
  FTitulo.Carteira:= aValue;
end;

function TNovoTitulo.CodigoGeracao(aValue: string): iNovoTitulo;
begin
  Result:= Self;
  FTitulo.CodigoGeracao:= aValue;
end;

function TNovoTitulo.Component(aComponent: iBoleto): iNovoTitulo;
begin
  Result:= Self;
  FComponent:= aComponent;
end;

function TNovoTitulo.&End: iTitulo;
begin
  Result:= FParent;
end;

function TNovoTitulo.Especie(aValue: string): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .EspecieDoc:= aValue;
end;

function TNovoTitulo.Instrucao1(aValue: string): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .Instrucao1:= aValue;
end;

function TNovoTitulo.Instrucao2(aValue: string): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .Instrucao2:= aValue;
end;

function TNovoTitulo.LocalPagamento(aValue: string): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .LocalPagamento:= aValue;
end;

constructor TNovoTitulo.Create(Parent : iTitulo);
begin
  FParent:= Parent;
end;

function TNovoTitulo.DataAbatimento(aValue: TDate): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .DataAbatimento:= aValue;
end;

function TNovoTitulo.DataDesconto(aValue: TDate): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .DataDesconto:= aValue;
end;

function TNovoTitulo.DataDocumento(aValue: TDate): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .DataDocumento:= aValue;
end;

function TNovoTitulo.DataMoraJutos(aValue: TDate): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .DataMoraJuros:= aValue;
end;

function TNovoTitulo.DataProcessamento(aValue: TDate): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .DataProcessamento:= aValue;
end;

function TNovoTitulo.DataProtesto(aValue: TDate): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .DataProtesto:= aValue;
end;

destructor TNovoTitulo.Destroy;
begin

  inherited;
end;

class function TNovoTitulo.New(Parent : iTitulo) : iNovoTitulo;
begin
  Result:= Self.Create(Parent);
end;

function TNovoTitulo.NossoNumero(aValue: string): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .NossoNumero:= aValue;
end;

function TNovoTitulo.NumeroDocumento(aValue: string): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .NumeroDocumento:= aValue;
end;

function TNovoTitulo.PercMulta(aValue: real): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .PercentualMulta:= aValue;
end;

function TNovoTitulo.Sacado : iSacado;
begin
  if not Assigned(FSacado) then
   FSacado:= TSacado.New(Self).Titulo(FTitulo);

  Result:= FSacado;
end;

function TNovoTitulo.SeuNumero(aValue: string): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .SeuNumero:= aValue;
end;

function TNovoTitulo.TipoOcorrenciaOriginal(
  aValue: TACBrTipoOcorrencia): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .OcorrenciaOriginal.Tipo:= aValue;
end;

function TNovoTitulo.ValorAbatimento(aValue: real): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .ValorAbatimento:= aValue;
end;

function TNovoTitulo.ValorDesconto(aValue: real): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .ValorDesconto:= aValue;
end;

function TNovoTitulo.ValorDocumento(aValue: Real): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .ValorDocumento:= aValue;
end;

function TNovoTitulo.ValorMoraJuros(aValue: real): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .ValorMoraJuros:= aValue;
end;

function TNovoTitulo.Vencimento(aValue: TDate): iNovoTitulo;
begin
  Result:= Self;
  FTitulo
   .Vencimento:= aValue;
end;

end.
