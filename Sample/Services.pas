unit Services;

interface

uses
 Boleto.Interfaces,
 ACBRBoleto;

type
 TService = class
 private
  FBoleto: iBoleto;
 public
  constructor Create;
  destructor Destroy; override;
  function Boleto : iBoleto;
  procedure LoadConfiguracao;
 end;

var
 aService: TService;

implementation

{ TService }

uses
 Boleto;

function TService.Boleto : iBoleto;
begin
  Result:= FBoleto;
end;

constructor TService.Create;
begin
 if not Assigned(FBoleto) then
  begin
    FBoleto := TBoleto.New;
    LoadConfiguracao;
  end;
end;

destructor TService.Destroy;
begin

 inherited;
end;

procedure TService.LoadConfiguracao;
begin
  FBoleto
   .Configuracao
    .NomeArquivoRemessa('remessa.txt')
    .PathRemessa('D:\Remessa\')
    .LayOutRemessa(c240)
    .PathLogoBanco('D:\Software\Carbon\cGestao\Exe\LogoBanco')
  .&End;
end;

initialization

aService := TService.Create;

finalization

aService.Free;

end.
