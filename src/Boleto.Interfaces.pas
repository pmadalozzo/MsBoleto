unit Boleto.Interfaces;

interface

uses
  Boleto.Component.Interfaces,
  ACBrBoleto,
  ACBrBoletoConversao,
  System.Classes;


type
  iCredential = interface;
  iBanco = interface;
  iCedente = interface;
  iConfiguracao = interface;
  iTitulo = interface;
  iNovoTitulo = interface;
  iSacado = interface;

  iBoleto = interface
   ['{ADDD90E7-117A-46F8-B687-14AABA5BA0B8}']
   function Component : iComponent;
   function Configuracao : iConfiguracao;
   function Credential : iCredential;
   function Banco : iBanco;
   function Cedente : iCedente;
   function GerarPDF : iBoleto;
   function Imprimir : iBoleto;
   function GerarRemessa : iBoleto;
   function Titulo : iTitulo;
  end;

  iConfiguracao = interface
   ['{6743C0F4-DBDC-4420-AB88-2360535E0B92}']
   function PathRemessa(aValue : string) : iConfiguracao;
   function PathRetorno(aValue : string) : iConfiguracao;
   function PathLogoBanco(aValue : string) : iConfiguracao;
   function SoftwareHouse(aValue : string) : iConfiguracao;
   function TituloPreview(aValue : string) : iConfiguracao;
   function NomeArquivoRemessa(aValue : string) : iConfiguracao;
   function MostrarPreview(aValue : boolean) : iConfiguracao;
   function MostrarSetup(aValue : boolean) : iConfiguracao;
   function MostrarProgresso(aValue : boolean) : iConfiguracao;
   function LayOutRemessa(aValue : TACBRLayoutRemessa) : iConfiguracao;
   function &End : iBoleto;
  end;

  iBanco = interface
   ['{2ECE14ED-1535-45B9-85C4-A4F13FB95C9E}']
   function TipoCobranca(aValue : TACBRTipoCobranca) : iBanco;
   function LocalPagamento(aValue : string) : iBanco;
   function OrientacoesBanco(aValue : TStringList) : iBanco;
   function &End : iBoleto;
  end;

  iCedente = interface
   ['{386AE15B-1736-455A-8436-D7A42D342ABE}']
   function Agencia(aValue : string) : iCedente;
   function AgenciaDigito(aValue : string) : iCedente;
   function Bairro(aValue : string) : iCedente;
   function CaracTitulo(aValue : TACBRCaracTitulo) : iCedente;
   function CEP(aValue : string) : iCedente;
   function Cidade(aValue : string) : iCedente;
   function CNPJCPF(aValue : string) : iCedente;
   function CodigoCedente(aValue : string) : iCedente;
   function CodigoTransmissao(aValue : string) : iCedente;
   function Complemento(aValue : string) : iCedente;
   function Conta(aValue : string) : iCedente;
   function ContaDigito(aValue : string) : iCedente;
   function Convenio(aValue : string) : iCedente;
   function DigitoVerificadorAgenciaConta(aValue : string) : iCedente;
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

  iTitulo = interface
   ['{3C318A73-C5AC-4E69-8403-599FABF3EC0C}']
   function LimparListaBoletos : iTitulo;
   function Novo : iNovoTitulo;
   function &End : iBoleto;
  end;

  iNovoTitulo = interface
   ['{9CE89EE0-A8E6-44BF-A975-7857BC2CF9F7}']
   function Component(aComponent : iBoleto) : iNovoTitulo;
   function Carteira(aValue : string) : iNovoTitulo;
   function CodigoGeracao(aValue : string) : iNovoTitulo;
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
   function Sacado : iSacado;
   function add : iNovoTitulo;
   function &End : iTitulo;
  end;

  iSacado = interface
   ['{272D20D7-50D8-4669-A70C-9F43BA556F6E}']
   function Titulo(aTitulo : TACBrTitulo) : iSacado;
   function Nome(aValue : string) : iSacado;
   function CNPJCPF(aValue : string) : iSacado;
   function Logradouro(aValue : string) : iSacado;
   function Numero(aValue : string) : iSacado;
   function Bairro(aValue : string) : iSacado;
   function Cidade(aValue : string) : iSacado;
   function UF(aValue : string) : iSacado;
   function CEP(aValue : string) : iSacado;
   function TipoAvalista(aValue : TACBrPessoa) : iSacado;
   function &End : iNovoTitulo;
  end;

  iCredential = interface
   ['{8D2CEB8E-6AB5-423A-A31E-397F7FBAD8E1}']
   function &End : iBoleto;
  end;
implementation

end.
