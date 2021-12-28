unit Services.Credential;

interface

uses
  Boleto.Interfaces;

type
  TCredential = class(TInterfacedObject, iCredential)
   private
     FParent : iBoleto;
   public
     constructor Create(Parent : iBoleto);
     destructor Destroy; override;
     class function New(Parent : iBoleto) : iCredential;
     function &End : iBoleto;
   end;

implementation

{ TCredential }

function TCredential.&End: iBoleto;
begin
  Result:= FParent;
end;

constructor TCredential.Create(Parent : iBoleto);
begin
  FParent:= Parent;
end;

destructor TCredential.Destroy;
begin

  inherited;
end;

class function TCredential.New(Parent: iBoleto): iCredential;
begin
  Result:= Self.Create(Parent);
end;


end.
