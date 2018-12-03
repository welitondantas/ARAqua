unit UnitReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportPDF, frxDBSet, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportCSV;

type
  TFmReport = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    RadioButtonAS: TRadioButton;
    RadioButtonAB: TRadioButton;
    RadioButtonAT: TRadioButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    FDQueryRep: TFDQuery;
    DataSourceRep: TDataSource;
    frxReportRep: TfrxReport;
    frxDBDatasetRep: TfrxDBDataset;
    frxPDFExportRep: TfrxPDFExport;
    Edit1: TEdit;
    Label3: TLabel;
    Button2: TButton;
    frxCSVExport1: TfrxCSVExport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmReport: TFmReport;

implementation

{$R *.dfm}

uses UnitDataModule, UnitPrincipal;

procedure TFmReport.Button1Click(Sender: TObject);
begin
  FDQueryRep.Active := False;
  FDQueryRep.ParamByName('AGRO').AsString := '%'+Edit1.Text+'%';
  FDQueryRep.ParamByName('LOCAL').AsString := '%'+Edit1.Text+'%';
  FDQueryRep.ParamByName('SOLO').AsString := '%'+Edit1.Text+'%';
  FDQueryRep.ParamByName('ID').AsString := Edit1.Text;
  FDQueryRep.ParamByName('usuario').AsString := FormPrincipal.usuario;
  FDQueryRep.ParamByName('de').AsString := DateTimeToStr(DateTimePicker1.DateTime);
  FDQueryRep.ParamByName('ate').AsString := DateTimeToStr(DateTimePicker2.DateTime);
  FDQueryRep.ParamByName('filtro').AsString := Edit1.Text;
  if RadioButtonAS.Checked then FDQueryRep.SQL[18] := 'and r.tipo = 2';
  if RadioButtonAB.Checked then FDQueryRep.SQL[18] := 'and r.tipo = 1';
  if RadioButtonAT.Checked then FDQueryRep.SQL[18] := '';
  FDQueryRep.ParamByName('DATADE').AsString := DateToStr(DateTimePicker1.DateTime);;
  FDQueryRep.ParamByName('DATAATE').AsString := DateToStr(DateTimePicker2.DateTime);
  FDQueryRep.Active := True;
  if FDQueryRep.RecordCount > 0 then
    begin
      frxReportRep.PrepareReport();
//      TfrxMemoView(frxReportRep.FindObject('MemoUsuario')).Text := FormPrincipal.usuario;
//      TfrxMemoView(frxReportRep.FindObject('MemoFiltro')).Text := 'Data In�cio: '+DateTimeToStr(DateTimePicker1.DateTime) + 'Data Final: '+DateTimeToStr(DateTimePicker2.DateTime) + 'LSA: '+Edit1.Text;

      frxReportRep.ShowReport();
    end
    else
    begin
      ShowMessage('N�o existem dados para serem exibidos.'+#13+'Verifique os filtros selecionados.');
    end;
end;

procedure TFmReport.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFmReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FmReport := nil;
  Action := caFree;
end;

end.
