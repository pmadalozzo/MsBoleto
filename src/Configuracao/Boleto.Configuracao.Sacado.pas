unit Boleto.Configuracao.Sacado;

interface

uses
 Boleto.Interfaces,
 ACBrBoletoConversao,
 ACBrBoleto;

type
 TSacado = class(TInterfacedObject, iSacado)
 private
  [weak]
  FParent: iNovoTitulo;
  FTitulo: TACBrTitulo;
 public
  constructor Create(Parent: iNovoTitulo);
  destructor Destroy; override;
  class function New(Parent: iNovoTitulo): iSacado;
  function Nome(aValue: string): iSacado;
  function CNPJCPF(aValue: string): iSacado;
  function Logradouro(aValue: string): iSacado;
  function Numero(aValue: string): iSacado;
  function Bairro(aValue: string): iSacado;
  function Cidade(aValue: string): iSacado;
  function UF(aValue: string): iSacado;
  function CEP(aValue: string): iSacado;
  function TipoAvalista(aValue: TACBrPessoa): iSacado;
  function &End: iNovoTitulo;
  function Titulo(aTitulo: TACBrTitulo): iSacado;
 end;

implementation

{ TSacado }

function TSacado.Bairro(aValue: string): iSacado;
begin
 Result := Self;
 FTitulo.Sacado.Bairro := aValue;
end;

function TSacado.CEP(aValue: string): iSacado;
begin
 Result := Self;
 FTitulo.Sacado.CEP := aValue;
end;

function TSacado.Cidade(aValue: string): iSacado;
begin
 Result := Self;
 FTitulo.Sacado.Cidade := aValue;
end;

function TSacado.CNPJCPF(aValue: string): iSacado;
begin
 Result := Self;
 FTitulo.Sacado.CNPJCPF := aValue;
end;

function TSacado.Titulo(aTitulo: TACBrTitulo): iSacado;
begin
 Result := Self;
 FTitulo := aTitulo;
end;

function TSacado.&End: iNovoTitulo;
begin
 Result := FParent;
end;

constructor TSacado.Create(Parent: iNovoTitulo);
begin
 FParent := Parent;
end;

destructor TSacado.Destroy;
begin

 inherited;
end;

function TSacado.Logradouro(aValue: string): iSacado;
begin
 Result := Self;
 FTitulo.Sacado.Logradouro := aValue;
end;

class function TSacado.New(Parent: iNovoTitulo): iSacado;
begin
 Result := Self.Create(Parent);
end;

function TSacado.Nome(aValue: string): iSacado;
begin
 Result := Self;
 FTitulo.Sacado.NomeSacado := aValue;
end;

function TSacado.Numero(aValue: string): iSacado;
begin
 Result := Self;
 FTitulo.Sacado.Numero := aValue;
end;

function TSacado.TipoAvalista(aValue: TACBrPessoa): iSacado;
begin
 Result := Self;
 FTitulo.Sacado.SacadoAvalista.Pessoa := aValue;
end;

function TSacado.UF(aValue: string): iSacado;
begin
 Result := Self;
 FTitulo.Sacado.UF := aValue;
end;

end.
