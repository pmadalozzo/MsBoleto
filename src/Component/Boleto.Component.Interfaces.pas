unit Boleto.Component.Interfaces;

interface

uses
  ACBrBoleto;

type
  iComponent = interface
   ['{2E0DB280-DC3C-499B-B4F5-968E803E50E3}']
   function Boleto : TACBrBoleto;
  end;

implementation

end.
