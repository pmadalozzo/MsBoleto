unit Boleto.Configuracao.Banco;

interface

uses
 Boleto.Interfaces,
 ACBrBoleto,
 System.Classes;

type
 TBanco = class(TInterfacedObject, iBanco)
 private
  [weak]
  FParent: iBoleto;
 public
  constructor Create(Parent: iBoleto);
  destructor Destroy; override;
  class function New(Parent: iBoleto): iBanco;
  function TipoCobranca(aValue: TACBRTipoCobranca): iBanco;
  function LocalPagamento(aValue: string): iBanco;
  function OrientacoesBanco(aValue: TStringList): iBanco;
  function &End: iBoleto;
 end;

implementation

{ TBanco }

function TBanco.&End: iBoleto;
begin
  Result:= FParent;
end;

constructor TBanco.Create(Parent : iBoleto);
begin
  FParent:= Parent;
end;

destructor TBanco.Destroy;
begin

 inherited;
end;

function TBanco.LocalPagamento(aValue: string): iBanco;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Banco
      .LocalPagamento:= aValue;
end;

class function TBanco.New(Parent : iBoleto): iBanco;
begin
 Result := Self.Create(Parent);
end;

function TBanco.OrientacoesBanco(aValue: TStringList): iBanco;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Banco
      .OrientacoesBanco:= aValue;
end;

function TBanco.TipoCobranca(aValue: TACBRTipoCobranca): iBanco;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .Banco
      .TipoCobranca:= aValue;
end;

end.
