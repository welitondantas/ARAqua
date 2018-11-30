unit UnitSobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.ComCtrls, ShellApi;

type
  TFmSobre = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label4Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSobre: TFmSobre;

implementation

{$R *.dfm}

procedure TFmSobre.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TFmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FmSobre := nil;
Action := caFree;
end;

procedure TFmSobre.Label10Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', pchar(label10.Caption), nil,nil,SW_SHOWDEFAULT);
end;

procedure TFmSobre.Label4Click(Sender: TObject);
begin
ShellExecute(handle, 'open', pchar('mailto:' + label4.Caption), nil, nil, sw_ShowNormal);
end;

procedure TFmSobre.Label6Click(Sender: TObject);
begin
ShellExecute(handle, 'open', pchar('mailto:' + label6.Caption), nil, nil, sw_ShowNormal);
end;

end.
