unit UnitCalculoResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormCalculoResultado = class(TForm)
    PanelFundo: TPanel;
    PageControl1: TPageControl;
    TabSheetLixiviacao: TTabSheet;
    TabSheetCarreamento: TTabSheet;
    PanelTabLixiviacao: TPanel;
    PanelTabCarreamento: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel5: TPanel;
    btnCalcular: TButton;
    btnLimpar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalculoResultado: TFormCalculoResultado;

implementation

{$R *.dfm}

procedure TFormCalculoResultado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormCalculoResultado := NIL;
  Action := caFree;
end;

end.
