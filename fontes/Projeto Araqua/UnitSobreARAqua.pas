unit UnitSobreARAqua;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, ShellAPI;

type
  TFmSobre = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
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

procedure TFmSobre.Label7Click(Sender: TObject);
begin
//showmessage('git');
  ShellExecute(0, 'open', PChar('open'), PWideChar('https://github.com/alessandrojv/ARAqua'), nil, SW_SHOWNORMAL) ;
end;

end.
