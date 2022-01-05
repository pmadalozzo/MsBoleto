unit Boleto.Component;

interface

uses
  ACBrBoleto,
  ACBrBoletoFCFortesFr,
  Boleto.Component.Interfaces,
  Boleto.Interfaces;

type
  TComponent = class(TInterfacedObject, iComponent)
   private
     FParent : iBoleto;
     FACBRBoleto : TACBrBoleto;
     FACBRBoletoFC : TACBrBoletoFCFortes;
   public
     constructor Create(Parent : iBoleto);
     destructor Destroy; override;
     class function New(Parent : iBoleto) : iComponent;
     function Boleto : TACBrBoleto;
  end;

implementation

uses
  ACBrBoletoConversao;

{ TComponent }

function TComponent.Boleto: TACBrBoleto;
begin
  if not Assigned(FACBRBoleto) then
    FACBRBoleto:= TACBrBoleto.Create(nil);

  FACBRBoleto.ACBrBoletoFC:= FACBRBoletoFC;
  FACBRBoleto.ACBrBoletoFC.Filtro:= fiNenhum;
  FACBRBoleto.ACBrBoletoFC.LayOut:= lPadrao;

  Result:= FACBRBoleto;
end;

constructor TComponent.Create(Parent : iBoleto);
begin
  FParent:= Parent;
  FACBRBoletoFC:= TACBrBoletoFCFortes.Create(nil);
end;

destructor TComponent.Destroy;
begin
  FACBRBoletoFC.Free;
  inherited;
end;

class function TComponent.New(Parent : iBoleto) : iComponent;
begin
  Result:= Self.Create(Parent);
end;

end.
