program Laba2;

uses
  Forms,
  ULaba2 in 'ULaba2.pas' {FMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
