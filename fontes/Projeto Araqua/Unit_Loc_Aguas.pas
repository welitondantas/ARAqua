unit Unit_Loc_Aguas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TForm_Localidade = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    PageControl1: TPageControl;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    TabSheet1: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Localidade: TForm_Localidade;

implementation

{$R *.dfm}

end.
