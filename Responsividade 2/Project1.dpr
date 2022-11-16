program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit4 in 'Unit4.pas' {Form4},
  uFrameItem in '..\Responsividade\src\frame\uFrameItem.pas' {FrameItem: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
