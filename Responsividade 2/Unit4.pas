unit Unit4;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, ALFmxObjects, uGosBase, uGosStandard, FMX.TabControl,
  uFrameItem, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm4 = class(TForm)
    FlowLayout1: TFlowLayout;
    GosButtonView3: TGosButtonView;
    GosButtonView4: TGosButtonView;
    GosButtonView9: TGosButtonView;
    GosButtonView10: TGosButtonView;
    GosButtonView11: TGosButtonView;
    GosButtonView12: TGosButtonView;
    Rectangle1: TRectangle;
    ALCircle1: TALCircle;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    FlowLayout2: TFlowLayout;
    SpeedButton1: TSpeedButton;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
    procedure GosButtonView3Click(Sender: TObject);
    procedure GosButtonView10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

procedure TForm4.FormCreate(Sender: TObject);
begin
  TabControl1.ActiveTab:= TabItem1;
  TabControl1.TabPosition:= TTabPosition.None;
end;

procedure TForm4.GosButtonView10Click(Sender: TObject);
var
 LFrame:TFrameItem;
begin
  FlowLayout2.BeginUpdate;
  for var i := 0 to 10 do
  begin
    LFrame:= TFrameItem.Create(self);

    LFrame.Name:= 'Frame'+i.ToString+FormatDateTime('ddmmyyyyhhmmss',now);
    LFrame.Label1.Text:= 'Item '+i.ToString;
    LFrame.Align:= TAlignLayout.Client;
    LFrame.Margins.Left:= 8;
    LFrame.Margins.Right:= 8;
    LFrame.Margins.Top:= 8;
    LFrame.Margins.Bottom:= 8;

    if self.Width < 768 then
      LFrame.Width:= (FlowLayout2.Width/1)-16
    else
    LFrame.Width:= (FlowLayout2.Width/3)-16;

    FlowLayout2.AddObject(LFrame);

  end;

  FlowLayout2.EndUpdate;
  FlowLayout2.RecalcSize;
  TabControl1.ActiveTab:= TabItem2;
end;

procedure TForm4.GosButtonView3Click(Sender: TObject);
begin
  TabControl1.ActiveTab:= TabItem1;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
  TabControl1.ActiveTab:= TabItem1;
end;

end.
