unit Boleto.Configuracao.Config;

interface

uses
  Boleto.Interfaces, ACBrBoleto;

type
  TConfig = class(TInterfacedObject, iConfiguracao)
   private
     FParent : iBoleto;
   public
     Constructor Create(Parent : iBoleto);
     destructor Destroy; override;
     class function New(Parent : iBoleto) : iConfiguracao;
     function PathRemessa(aValue : string) : iConfiguracao;
     function PathRetorno(aValue : string) : iConfiguracao;
     function SoftwareHouse(aValue : string) : iConfiguracao;
     function TituloPreview(aValue : string) : iConfiguracao;
     function NomeArquivoRemessa(aValue : string) : iConfiguracao;
     function MostrarPreview(aValue : boolean) : iConfiguracao;
     function MostrarSetup(aValue : boolean) : iConfiguracao;
     function MostrarProgresso(aValue : boolean) : iConfiguracao;
     function PathLogoBanco(aValue : string) : iConfiguracao;
     function LayOutRemessa(aValue : TACBRLayoutRemessa) : iConfiguracao;
     function &End : iBoleto;
  end;

implementation

{ TConfig }

function TConfig.&End: iBoleto;
begin
  Result:= FParent;
end;

function TConfig.LayOutRemessa(aValue: TACBRLayoutRemessa): iConfiguracao;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .LayoutRemessa:= aValue;
end;

constructor TConfig.Create(Parent: iBoleto);
begin
  FParent:= Parent;
end;

destructor TConfig.Destroy;
begin

  inherited;
end;

function TConfig.MostrarPreview(aValue: boolean): iConfiguracao;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .ACBrBoletoFC
      .MostrarPreview:= aValue;
end;

function TConfig.MostrarProgresso(aValue: boolean): iConfiguracao;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .ACBrBoletoFC
      .MostrarProgresso:= aValue;
end;

function TConfig.MostrarSetup(aValue: boolean): iConfiguracao;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .ACBrBoletoFC
      .MostrarSetup:= aValue;
end;

class function TConfig.New(Parent: iBoleto): iConfiguracao;
begin
  Result:= Self.Create(Parent);
end;


function TConfig.NomeArquivoRemessa(aValue: string): iConfiguracao;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .NomeArqRemessa:= aValue;
end;

function TConfig.PathRetorno(aValue: string): iConfiguracao;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .DirArqRetorno:= aValue;
end;

function TConfig.PathLogoBanco(aValue: string): iConfiguracao;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .ACBrBoletoFC
      .DirLogo:= aValue;
end;

function TConfig.PathRemessa(aValue: string): iConfiguracao;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .DirArqRemessa:= aValue;
end;

function TConfig.TituloPreview(aValue: string): iConfiguracao;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .ACBrBoletoFC
      .TituloPreview:= aValue;
end;

function TConfig.SoftwareHouse(aValue: string): iConfiguracao;
begin
  Result:= Self;
  FParent
   .Component
    .Boleto
     .ACBrBoletoFC
      .SoftwareHouse:= aValue;
end;

end.
