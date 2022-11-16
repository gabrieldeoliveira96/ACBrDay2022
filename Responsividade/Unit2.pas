unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  uGosBase, uGosStandard, uGosObjects, uGosEditTitle, FMX.Objects, FMX.Effects,
  uFrameItem, FMX.Controls.Presentation, FMX.StdCtrls, ksTypes, ksSegmentButtons;

type
  TForm2 = class(TForm)
    GridPanelLayout1: TGridPanelLayout;
    recTopo: TRectangle;
    GosEditTitle1: TGosEditTitle;
    GosEditTitle2: TGosEditTitle;
    btnBuscar: TGosButtonView;
    ShadowEffect1: TShadowEffect;
    recLeft: TRectangle;
    GosButtonView1: TGosButtonView;
    Layout1: TLayout;
    Layout2: TLayout;
    GosButtonView2: TGosButtonView;
    GosButtonView3: TGosButtonView;
    GosButtonView4: TGosButtonView;
    Image1: TImage;
    HorzScrollBox1: THorzScrollBox;
    Label1: TLabel;
    GosButtonView6: TGosButtonView;
    GosButtonView7: TGosButtonView;
    GosButtonView5: TGosButtonView;
    GosButtonView8: TGosButtonView;
    FlowLayout1: TFlowLayout;
    ksSegmentButtons1: TksSegmentButtons;
    recFooter: TRectangle;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.btnBuscarClick(Sender: TObject);
var
 LFrame:TFrameItem;
begin
  FlowLayout1.BeginUpdate;
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
      LFrame.Width:= (FlowLayout1.Width/1)-16
    else
    LFrame.Width:= (FlowLayout1.Width/3)-16;

    FlowLayout1.AddObject(LFrame);

  end;

  FlowLayout1.EndUpdate;
  FlowLayout1.RecalcSize;

end;

procedure TForm2.FormResize(Sender: TObject);
begin
  Label1.Text:= 'w: '+self.Width.ToString+' x h: '+self.Height.ToString;

  if self.Width < 768 then
  begin
    GridPanelLayout1.ColumnCollection[1].SizeStyle:= TGridPanelLayout.TSizeStyle.Absolute;
    GridPanelLayout1.ColumnCollection[1].Value:= 0;

    GridPanelLayout1.RowCollection[6].Value:= 50;


  end else
  begin
    GridPanelLayout1.ColumnCollection[1].SizeStyle:= TGridPanelLayout.TSizeStyle.Percent;
    GridPanelLayout1.ColumnCollection[1].Value:= 22;
    GridPanelLayout1.RowCollection[6].Value:= 0;

  end;

end;

end.
