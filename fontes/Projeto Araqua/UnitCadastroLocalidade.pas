unit UnitCadastroLocalidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TFormCadastroLocalidade = class(TForm)
    DataSourceLocalidade: TDataSource;
    FDQueryLocalidade: TFDQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    panelFundoLocal: TPanel;
    PanelDescricao: TPanel;
    Label1: TLabel;
    GroupBoxClima: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditPrecipitacao: TDBEdit;
    DBEditIrrigacao: TDBEdit;
    DBEditEvapotranspiracao: TDBEdit;
    GroupBoxAquifero: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEditPorosidade: TDBEdit;
    DBEditProfundidade: TDBEdit;
    PanelBotoes: TPanel;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    DBNavigator1: TDBNavigator;
    btnNovo: TButton;
    GroupBoxBuscaLocal: TGroupBox;
    DBGridLocalidade: TDBGrid;
    EditBuscaLocal: TEdit;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Label7: TLabel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBNavigator2: TDBNavigator;
    Button5: TButton;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    FDQuery2: TFDQuery;
    FDQuery_superficial: TFDQuery;
    DataSource_superficial: TDataSource;
    Button6: TButton;
    Button7: TButton;
    Panel4: TPanel;
    Splitter1: TSplitter;
    DBEditDescricao: TDBEdit;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    Panel5: TPanel;
    Edit1: TEdit;
    Label13: TLabel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit_Declividade: TDBEdit;
    DBEdit_InterceptacaoPlantas: TDBEdit;
    DBEdit_LarguraContencao: TDBEdit;
    DBEdit_CoeficienteSuper: TDBEdit;
    Splitter2: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FDQueryLocalidadeBeforePost(DataSet: TDataSet);
    procedure FDQueryLocalidadeAfterPost(DataSet: TDataSet);
    procedure EditBuscaLocalChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroLocalidade: TFormCadastroLocalidade;

implementation

{$R *.dfm}

uses UnitDataModule, UnitLocalidade, UnitPrincipal;

procedure TFormCadastroLocalidade.btnCancelarClick(Sender: TObject);
begin
  FDQueryLocalidade.Cancel;
  DBEditDescricao.Enabled := false;
  DBEditPrecipitacao.Enabled := false;
  DBEditIrrigacao.Enabled := false;
  DBEditEvapotranspiracao.Enabled := false;
  DBEditPorosidade.Enabled := false;
  DBEditProfundidade.Enabled := false;
  btnEditar.Enabled := true;
  btnNovo.Enabled := true;
  btnSalvar.Enabled := false;
  btnExcluir.Enabled := false;
  btnCancelar.Enabled := false;
end;

procedure TFormCadastroLocalidade.btnEditarClick(Sender: TObject);
begin
  FDQueryLocalidade.Edit;
  DBEditDescricao.Enabled := true;
  DBEditPrecipitacao.Enabled := true;
  DBEditIrrigacao.Enabled := true;
  DBEditEvapotranspiracao.Enabled := true;
  DBEditPorosidade.Enabled := true;
  DBEditProfundidade.Enabled := true;
  btnEditar.Enabled := false;
  btnNovo.Enabled := false;
  btnSalvar.Enabled := true;
  btnExcluir.Enabled := true;
  btnCancelar.Enabled := true;
end;

procedure TFormCadastroLocalidade.btnExcluirClick(Sender: TObject);
begin
  if (messageBox(HANDLE, 'Deseja realmente excluir esse registro?', 'Excluir',
                        MB_YESNO + MB_ICONQUESTION) = ID_YES) then
    begin
      FDQueryLocalidade.Delete;
    end;
  btnEditar.Enabled := true;
  btnNovo.Enabled := true;
  btnSalvar.Enabled := false;
  btnExcluir.Enabled := false;
  btnCancelar.Enabled := false;
end;

procedure TFormCadastroLocalidade.btnNovoClick(Sender: TObject);
begin
  FDQueryLocalidade.Insert;
  DBEditDescricao.Enabled := true;
  DBEditPrecipitacao.Enabled := true;
  DBEditIrrigacao.Enabled := true;
  DBEditEvapotranspiracao.Enabled := true;
  DBEditPorosidade.Enabled := true;
  DBEditProfundidade.Enabled := true;
  btnEditar.Enabled := false;
  btnNovo.Enabled := false;
  btnSalvar.Enabled := true;
  btnExcluir.Enabled := false;
  btnCancelar.Enabled := true;
end;

procedure TFormCadastroLocalidade.btnSalvarClick(Sender: TObject);
begin
  FDQueryLocalidade.Post;
  DBEditDescricao.Enabled := false;
  DBEditPrecipitacao.Enabled := false;
  DBEditIrrigacao.Enabled := false;
  DBEditEvapotranspiracao.Enabled := false;
  DBEditPorosidade.Enabled := false;
  DBEditProfundidade.Enabled := false;
  btnEditar.Enabled := true;
  btnNovo.Enabled := true;
  btnSalvar.Enabled := false;
  btnExcluir.Enabled := false;
  btnCancelar.Enabled := false;
end;

procedure TFormCadastroLocalidade.Button6Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroLocalidade.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroLocalidade.EditBuscaLocalChange(Sender: TObject);
begin
  with FDQueryLocalidade do
    begin
      Close;
      SQL.Text := 'select * from localidade where descricao like :descricao';
      ParamByName('descricao').Value := '%' + EditBuscaLocal.Text + '%';
      Open;
    end;
end;

procedure TFormCadastroLocalidade.FDQueryLocalidadeAfterPost(DataSet: TDataSet);
begin
  Application.MessageBox('Local salvo com sucesso!', 'Local salvo');
end;

procedure TFormCadastroLocalidade.FDQueryLocalidadeBeforePost(
  DataSet: TDataSet);
  var local: TLocalidade;
begin
  local := TLocalidade.Create;
  local.Descricao := DBEditDescricao.Text;
  local.Precipitacao := StrToFloat(DBEditPrecipitacao.Text);
  local.Irrigacao := StrToFloat(DBEditIrrigacao.Text);
  local.Evapotranspiracao := StrToFloat(DBEditEvapotranspiracao.Text);
  local.PorosidadeAquifero := StrToFloat(DBEditPorosidade.Text);
  local.ProfundidadeAquifero := StrToInt(DBEditProfundidade.Text);
  FDQueryLocalidade.FieldByName('descricao').AsString := local.Descricao;
  FDQueryLocalidade.FieldByName('precipitacao').AsFloat := local.Precipitacao;
  FDQueryLocalidade.FieldByName('irrigacao').AsFloat := local.Irrigacao;
  FDQueryLocalidade.FieldByName('evapotranspiracao').AsFloat := local.Evapotranspiracao;
  FDQueryLocalidade.FieldByName('porosidadeAquifero').AsFloat := local.PorosidadeAquifero;
  FDQueryLocalidade.FieldByName('profundidadeAquifero').AsInteger := local.ProfundidadeAquifero;
end;

procedure TFormCadastroLocalidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormCadastroLocalidade := NIL;
  Action := caFree;
end;

procedure TFormCadastroLocalidade.FormCreate(Sender: TObject);
begin
  FDQueryLocalidade.Active := True;
end;

end.
