unit UnitTema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Styles, Vcl.Themes,
  Vcl.Imaging.pngimage, System.IOUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFmTema = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Shape1: TShape;
    DBImageTema: TDBImage;
    DBLookupComboBox1: TDBLookupComboBox;
    FDQueryUsuTema: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmTema: TFmTema;

implementation

{$R *.dfm}

uses UnitPrincipal, UnitDataModule;

procedure TFmTema.Button1Click(Sender: TObject);
var aplicado: integer;
begin
aplicado := 0;
  try
    TStyleManager.TrySetStyle( Datamodule1.FDQueryTema.FieldByName('NOMETEMA').AsString );
    FormPrincipal.StatusBar1.Panels[5].Text := 'Tema : '+ Datamodule1.FDQueryTema.FieldByName('NOMETEMA').AsString;
    FDQueryUsuTema.Active := False;
    FDQueryUsuTema.ParamByName('TEMA').AsString := Datamodule1.FDQueryTema.FieldByName('idTemas').AsString;
    FDQueryUsuTema.ParamByName('USUARIO').AsInteger := FormPrincipal.idUsuario;
    //showmessage(Datamodule1.FDQueryTema.FieldByName('idTemas').AsString+' '+inttostr(FormPrincipal.idUsuario));
    FDQueryUsuTema.ExecSQL;
    aplicado := 1;

    Sleep(500);
  except on E:Exception do
    ShowMessage('O tema selecionado não pode ser aplicado.'+#13+'Motivo: '+e.Message);
  end;
  if (aplicado = 1) then
  Close;
end;

procedure TFmTema.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFmTema.Button3Click(Sender: TObject);
begin
  TStyleManager.TrySetStyle('Windows');
  FormPrincipal.StatusBar1.Panels[3].Text := 'Tema : Windows';
  ShowMessage('Tema padrão aplicado.');
end;

procedure TFmTema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmTema := nil;
  Action := caFree;
end;

procedure TFmTema.FormCreate(Sender: TObject);
begin
  Datamodule1.FDQueryTema.Active := False;
  Datamodule1.FDQueryTema.SQL[2] := ' ';
  Datamodule1.FDQueryTema.Active := True;
  Datamodule1.FDQueryTema.Locate('IDTEMAS',FormPrincipal.idTema);
  DBLookupComboBox1.ListFieldIndex := StrToInt(FormPrincipal.idTema);
  end;

end.
