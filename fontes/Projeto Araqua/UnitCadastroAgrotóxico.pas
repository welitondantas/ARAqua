{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit UnitCadastroAgrotóxico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList;

type
  TFormAgrotoxico = class(TForm)
    panelAgro: TPanel;
    PanelDadosSimples: TPanel;
    DBGridAgro: TDBGrid;
    PanelBotoes: TPanel;
    btnSalvarAgro: TButton;
    btnCancelarAgro: TButton;
    DataSourceAgro: TDataSource;
    btnEditar: TButton;
    btnExcluir: TButton;
    DBNavigator1: TDBNavigator;
    btnNovo: TButton;
    FDQueryAgro: TFDQuery;
    GroupBoxBuscaAgro: TGroupBox;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Label8: TLabel;
    EditBuscaAgro: TEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEditKocCamada1: TDBEdit;
    DBEditMeiaVidaCam1: TDBEdit;
    Label9: TLabel;
    Label5: TLabel;
    DBEditKocCamada2: TDBEdit;
    DBEditMeiaVidaCam2: TDBEdit;
    DBEditMeiaVidaCam3: TDBEdit;
    DBEditKocCamada3: TDBEdit;
    Label7: TLabel;
    Label6: TLabel;
    DBEditKocCamada4: TDBEdit;
    DBEditMeiaVidaCam4: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBEditPrincipioAtivo: TDBEdit;
    DBEditDose: TDBEdit;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEditCE50Plantas: TDBEdit;
    DBEditCE50Animais: TDBEdit;
    GroupBox5: TGroupBox;
    DBEditPotabilidade: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarAgroClick(Sender: TObject);
    procedure btnCancelarAgroClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FDQueryAgroBeforePost(DataSet: TDataSet);
    procedure FDQueryAgroAfterPost(DataSet: TDataSet);
    procedure EditBuscaAgroChange(Sender: TObject);
    function VerificaPrimeiraCamada(campo: String): boolean;
    function VerificaCampos(campo: String): String;
    procedure FormCreate(Sender: TObject);
    function VerificaBrancos(): Boolean;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgrotoxico: TFormAgrotoxico;

implementation

{$R *.dfm}

uses UnitDataModule, UnitAgrotoxico, UnitPrincipal, UnitFuncoes;

procedure TFormAgrotoxico.btnCancelarAgroClick(Sender: TObject);
begin
  FDQueryAgro.Cancel;
  DBEditPrincipioAtivo.Enabled := false;
  DBEditDose.Enabled := false;
  DBEditKocCamada1.Enabled := false;
  DBEditKocCamada2.Enabled := false;
  DBEditKocCamada3.Enabled := false;
  DBEditKocCamada4.Enabled := false;
  DBEditMeiaVidaCam1.Enabled := false;
  DBEditMeiaVidaCam2.Enabled := false;
  DBEditMeiaVidaCam3.Enabled := false;
  DBEditMeiaVidaCam4.Enabled := false;
  DBEditPotabilidade.Enabled := false;
  DBEditCE50Plantas.Enabled := false;
  DBEditCE50Animais.Enabled := false;
  btnEditar.Enabled := true;
  btnNovo.Enabled := true;
  btnSalvarAgro.Enabled := false;
  btnExcluir.Enabled := false;
  btnCancelarAgro.Enabled := false;
end;

procedure TFormAgrotoxico.btnEditarClick(Sender: TObject);
begin
  FDQueryAgro.Edit;
  DBEditPrincipioAtivo.Enabled := true;
  DBEditDose.Enabled := true;
  DBEditKocCamada1.Enabled := true;
  DBEditKocCamada2.Enabled := true;
  DBEditKocCamada3.Enabled := true;
  DBEditKocCamada4.Enabled := true;
  DBEditMeiaVidaCam1.Enabled := true;
  DBEditMeiaVidaCam2.Enabled := true;
  DBEditMeiaVidaCam3.Enabled := true;
  DBEditMeiaVidaCam4.Enabled := true;
  DBEditPotabilidade.Enabled := true;
  DBEditCE50Plantas.Enabled := true;
  DBEditCE50Animais.Enabled := true;
  btnEditar.Enabled := false;
  btnNovo.Enabled := false;
  btnSalvarAgro.Enabled := true;
  btnExcluir.Enabled := true;
  btnCancelarAgro.Enabled := true;
end;

procedure TFormAgrotoxico.btnExcluirClick(Sender: TObject);
begin
  if (messageBox(HANDLE, 'Deseja realmente excluir esse registro?', 'Excluir',
                        MB_YESNO + MB_ICONQUESTION) = ID_YES) then
    begin
      FDQueryAgro.Delete;
    end;
  btnEditar.Enabled := true;
  btnNovo.Enabled := true;
  btnSalvarAgro.Enabled := false;
  btnExcluir.Enabled := false;
  btnCancelarAgro.Enabled := false;
end;

procedure TFormAgrotoxico.btnNovoClick(Sender: TObject);
begin
  FDQueryAgro.Insert;
  DBEditPrincipioAtivo.Enabled := true;
  DBEditDose.Enabled := true;
  DBEditKocCamada1.Enabled := true;
  DBEditKocCamada2.Enabled := true;
  DBEditKocCamada3.Enabled := true;
  DBEditKocCamada4.Enabled := true;
  DBEditMeiaVidaCam1.Enabled := true;
  DBEditMeiaVidaCam2.Enabled := true;
  DBEditMeiaVidaCam3.Enabled := true;
  DBEditMeiaVidaCam4.Enabled := true;
  DBEditPotabilidade.Enabled := true;
  DBEditCE50Plantas.Enabled := true;
  DBEditCE50Animais.Enabled := true;
  btnEditar.Enabled := false;
  btnNovo.Enabled := false;
  btnSalvarAgro.Enabled := true;
  btnExcluir.Enabled := false;
  btnCancelarAgro.Enabled := true;
end;

procedure TFormAgrotoxico.btnSalvarAgroClick(Sender: TObject);
begin
  if (VerificaBrancos) then
    begin
      FDQueryAgro.Post;
      DBEditPrincipioAtivo.Enabled := false;
      DBEditDose.Enabled := false;
      DBEditKocCamada1.Enabled := false;
      DBEditKocCamada2.Enabled := false;
      DBEditKocCamada3.Enabled := false;
      DBEditKocCamada4.Enabled := false;
      DBEditMeiaVidaCam1.Enabled := false;
      DBEditMeiaVidaCam2.Enabled := false;
      DBEditMeiaVidaCam3.Enabled := false;
      DBEditMeiaVidaCam4.Enabled := false;
      DBEditPotabilidade.Enabled := false;
      DBEditCE50Plantas.Enabled := false;
      DBEditCE50Animais.Enabled := false;
      btnEditar.Enabled := true;
      btnNovo.Enabled := true;
      btnSalvarAgro.Enabled := false;
      btnExcluir.Enabled := false;
      btnCancelarAgro.Enabled := false;
    end
  else
    begin
      ShowMessage('Preencha os campos corretamente!');
    end;

end;

procedure TFormAgrotoxico.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAgrotoxico.EditBuscaAgroChange(Sender: TObject);
begin
  with FDQueryAgro do
    begin
      Close;
      SQL.Text := 'select * from agrotoxico where principioAtivo like :nome';
      ParamByName('nome').Value := '%' + EditBuscaAgro.Text + '%';
      Open;
    end;
end;

procedure TFormAgrotoxico.FDQueryAgroAfterPost(DataSet: TDataSet);
begin
  Application.MessageBox('Agrotóxico salvo com sucesso!', 'Agrotóxico Salvo');
end;

procedure TFormAgrotoxico.FDQueryAgroBeforePost(DataSet: TDataSet);
var agro: TAgrotoxico;
begin
  agro :=  TAgrotoxico.Create;
  agro.PrincipioAtivo := DBEditPrincipioAtivo.Text;
  agro.Dose := StrToFloat(DBEditDose.Text);
  if (VerificaPrimeiraCamada(DBEditKocCamada1.Text)) then
    begin
      agro.CoeficienteSorcaoCamada1 := StrToFloat(DBEditKocCamada1.Text);
    end
  else
    begin
      Application.MessageBox('A primeira camada não pode ser 0 ou em branco.', 'Aviso');
      DBEditKocCamada1.SetFocus;
    end;
  agro.CoeficienteSorcaoCamada2 := StrToFloat(VerificaCampos(DBEditKocCamada2.Text));
  agro.CoeficienteSorcaoCamada3 := StrToFloat(VerificaCampos(DBEditKocCamada3.Text));
  agro.CoeficienteSorcaoCamada4 := StrToFloat(VerificaCampos(DBEditKocCamada4.Text));
  if (VerificaPrimeiraCamada(DBEditMeiaVidaCam1.Text)) then
    begin
        agro.MeiaVidaCamada1 := StrToInt(DBEditMeiaVidaCam1.Text);
    end
  else
    begin
      Application.MessageBox('A primeira camada não pode ser 0 ou em branco.', 'Aviso');
      DBEditMeiaVidaCam1.SetFocus;
    end;
  agro.MeiaVidaCamada2 := StrToInt(VerificaCampos(DBEditMeiaVidaCam2.Text));
  agro.MeiaVidaCamada3 := StrToInt(VerificaCampos(DBEditMeiaVidaCam3.Text));
  agro.MeiaVidaCamada4 := StrToInt(VerificaCampos(DBEditMeiaVidaCam4.Text));
  agro.Potabilidade := StrToInt(VerificaCampos(DBEditPotabilidade.Text));
  agro.Canimais := StrToFloat(VerificaCampos(DBEditCE50Animais.Text));
  agro.Cplantas := StrToFloat(VerificaCampos(DBEditCE50Plantas.Text));
  FDQueryAgro.FieldByName('principioAtivo').AsString := agro.PrincipioAtivo;
  FDQueryAgro.FieldByName('dose').AsFloat := agro.Dose;
  FDQueryAgro.FieldByName('coeficienteSorcaoCam1').AsFloat := agro.CoeficienteSorcaoCamada1;
  FDQueryAgro.FieldByName('coeficienteSorcaoCam2').AsFloat := agro.CoeficienteSorcaoCamada2;
  FDQueryAgro.FieldByName('coeficienteSorcaoCam3').AsFloat := agro.CoeficienteSorcaoCamada3;
  FDQueryAgro.FieldByName('coeficienteSorcaoCam4').AsFloat := agro.CoeficienteSorcaoCamada4;
  FDQueryAgro.FieldByName('meiaVidaCam1').AsInteger := agro.MeiaVidaCamada1;
  FDQueryAgro.FieldByName('meiaVidaCam2').AsInteger := agro.MeiaVidaCamada2;
  FDQueryAgro.FieldByName('meiaVidaCam3').AsInteger := agro.MeiaVidaCamada3;
  FDQueryAgro.FieldByName('meiaVidaCam4').AsInteger := agro.MeiaVidaCamada4;
  FDQueryAgro.FieldByName('potabilidade').AsInteger := agro.Potabilidade;
  FDQueryAgro.FieldByName('ce50_plantas').AsFloat := agro.CPlantas;
  FDQueryAgro.FieldByName('ce50_animais').AsFloat := agro.CAnimais;
end;

procedure TFormAgrotoxico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormAgrotoxico := nil;
  Action := caFree;
end;

procedure TFormAgrotoxico.FormCreate(Sender: TObject);
begin
  FDQueryAgro.Active := True;
end;

function TFormAgrotoxico.VerificaBrancos: Boolean;
begin
  if ((DBEditPrincipioAtivo.Text='') OR (DBEditDose.Text='') OR
      (DBEditKocCamada1.Text='') OR (DBEditMeiaVidaCam1.Text='') OR
      (DBEditKocCamada1.Text='0') OR (DBEditMeiaVidaCam1.Text='0')) then
    begin
      Result := False;
    end
  else
    begin
      Result := True;;
    end;

end;

function TFormAgrotoxico.VerificaCampos(campo: String): String;
begin
  if (campo='') then
    begin
      Result := '0';
    end
  else
    begin
      Result := campo;
    end;
end;

function TFormAgrotoxico.VerificaPrimeiraCamada(campo: String): boolean;
begin
  if ((campo='') OR (campo='0')) then
    begin
      Result := false;
    end
  else
    begin
      Result := true;
    end;
end;

end.
