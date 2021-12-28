unit Boleto;

interface

uses
 Boleto.Interfaces,
 Boleto.Component.Interfaces;

type
 TBoleto = class(TInterfacedObject, iBoleto)
 private
  FComponent : iComponent;
  FConfiguracao: iConfiguracao;
  FCredential: iCredential;
  FBanco : iBanco;
  FCedente: iCedente;
  FTitulo : iTitulo;
 public
  constructor Create;
  destructor Destroy; override;
  class function New: iBoleto;
  function Component : iComponent;
  function Configuracao: iConfiguracao;
  function Credential: iCredential;
  function Banco : iBanco;
  function Cedente: iCedente;
  function Titulo : iTitulo;
  function GerarPDF: iBoleto;
  function Imprimir : iBoleto;
  function GerarRemessa : iBoleto;
 end;

implementation

uses
 Services.Credential,
 Boleto.Configuracao.Cedente,
 Boleto.Configuracao.Config,
 Boleto.Component,
 Boleto.Configuracao.Banco,
 Boleto.Configuracao.Titulo;

{ TBoleto }

function TBoleto.Banco: iBanco;
begin
 if not Assigned(Fbanco) then
  Fbanco := TBanco.New(Self);

 Result := Fbanco;
end;

function TBoleto.Cedente: iCedente;
begin
 if not Assigned(FCedente) then
  FCedente := TCedente.New(Self);

 Result := FCedente;
end;

function TBoleto.Component: iComponent;
begin
 if not Assigned(FComponent) then
  FComponent := TComponent.New(Self);

 Result := FComponent;
end;

function TBoleto.Configuracao: iConfiguracao;
begin
 if not Assigned(FConfiguracao) then
  FConfiguracao := TConfig.New(Self);

 Result := FConfiguracao;
end;

constructor TBoleto.Create;
begin

end;

function TBoleto.Credential: iCredential;
begin
 if not Assigned(FCredential) then
  FCredential := TCredential.New(Self);

 Result := FCredential;
end;

destructor TBoleto.Destroy;
begin

 inherited;
end;

function TBoleto.GerarPDF: iBoleto;
begin
  Result:= Self;
  FComponent.boleto.GerarPDF;
end;

function TBoleto.GerarRemessa: iBoleto;
begin
  Result:= Self;
  FComponent.Boleto.GerarRemessa(1);
end;

function TBoleto.Imprimir: iBoleto;
begin
  Result:= Self;
  FComponent.Boleto.Imprimir;
end;

class function TBoleto.New: iBoleto;
begin
  Result := Self.Create;
end;

function TBoleto.Titulo: iTitulo;
begin
  if not Assigned(FTitulo) then
    FTitulo:= TTitulo.New(Self);

  Result:= FTitulo;
end;

end.
