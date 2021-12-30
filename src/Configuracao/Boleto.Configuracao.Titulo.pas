unit Boleto.Configuracao.Titulo;

interface

uses
  Boleto.Interfaces,
  ACBrBoleto;

type
  TTitulo = class(TInterfacedObject, iTitulo)
    private
     [weak]
     FParent : iBoleto;
     FNovoTitulo : iNovoTitulo;
    public
      constructor Create(Parent : iBoleto);
      destructor Destroy; override;
      class function New(Parent : iBoleto) : iTitulo;
      function LimparListaBoletos : iTitulo;
      function Novo : iNovoTitulo;
      function &End : iBoleto;
  end;
implementation

uses
  Boleto.Configuracao.NovoTitulo;

{ TTitulo }

function TTitulo.&End: iBoleto;
begin
  Result:= FParent;
end;

constructor TTitulo.Create(Parent : iBoleto);
begin
  FParent:= Parent;
end;

function TTitulo.Novo: iNovoTitulo;
begin
  if not Assigned(FNovoTitulo) then
    FNovoTitulo:= TNovoTitulo.New(Self).Component(FParent);

  Result:= FNovoTitulo;
end;

destructor TTitulo.Destroy;
begin

  inherited;
end;

function TTitulo.LimparListaBoletos: iTitulo;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .ListadeBoletos
      .Clear;
end;

class function TTitulo.New(Parent : iBoleto) : iTitulo;
begin
  Result:= Self.Create(Parent);
end;

end.
