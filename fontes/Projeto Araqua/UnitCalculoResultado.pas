unit UnitCalculoResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCalculoResultado = class(TForm)
    PanelFundo: TPanel;
    PageControl1: TPageControl;
    TabSheetLixiviacao: TTabSheet;
    TabSheetCarreamento: TTabSheet;
    PanelTabLixiviacao: TPanel;
    PanelTabCarreamento: TPanel;
    GroupBoxLocal: TGroupBox;
    GroupBoxSolo: TGroupBox;
    GroupBoxAgrotoxico: TGroupBox;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    CheckBoxInserirManual: TCheckBox;
    EditDoseManual: TEdit;
    Panel1: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel5: TPanel;
    btnCalcular: TButton;
    btnNovaConsulta: TButton;
    DBEditRecargaHidrica: TDBEdit;
    DBEditConcentracaoEstimada: TDBEdit;
    btnSalvar: TButton;
    FDQueryResultado: TFDQuery;
    DataSourceResultado: TDataSource;
    DBLookupComboLocal: TDBLookupComboBox;
    DBLookupComboBoxSolo: TDBLookupComboBox;
    DBLookupComboAgro: TDBLookupComboBox;
    FDQuerySolo: TFDQuery;
    FDQueryLocalidade: TFDQuery;
    FDQueryAgro: TFDQuery;
    DataSourceSolo: TDataSource;
    DataSourceLocalidade: TDataSource;
    DataSourceAgro: TDataSource;
    btnCancelar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure realizaCalculos();
    procedure btnCalcularClick(Sender: TObject);
    procedure FDQueryResultadoBeforePost(DataSet: TDataSet);
    procedure FDQueryResultadoAfterPost(DataSet: TDataSet);
    procedure btnNovaConsultaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    function verificaCamposParaCalculo(): Boolean;
    function espessuraCamada(cam1, cam2: integer): integer;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalculoResultado: TFormCalculoResultado;

implementation

{$R *.dfm}

uses UnitDataModule, UnitCalculo, UnitResultado, UnitAgrotoxico, UnitLocalidade,
  UnitSolo;

procedure TFormCalculoResultado.btnCalcularClick(Sender: TObject);
begin
  if (verificaCamposParaCalculo) then
    begin
      realizaCalculos;
      btnCancelar.Enabled := true;
      btnNovaConsulta.Enabled := false;
      btnSalvar.Enabled := true;
    end;
end;

procedure TFormCalculoResultado.btnCancelarClick(Sender: TObject);
begin
  FDQueryResultado.Cancel;
  DBLookupComboLocal.Enabled := false;
  DBLookupComboBoxSolo.Enabled := false;
  DBLookupComboAgro.Enabled := false;
  CheckBoxInserirManual.Enabled := false;
  EditDoseManual.Enabled := false;
  btnCancelar.Enabled := false;
  btnNovaConsulta.Enabled := true;
  btnSalvar.Enabled := false;
  btnCalcular.Enabled := false;
end;

procedure TFormCalculoResultado.btnNovaConsultaClick(Sender: TObject);
begin
  FDQueryResultado.Insert;
  DBLookupComboLocal.Enabled := true;
  DBLookupComboBoxSolo.Enabled := true;
  DBLookupComboAgro.Enabled := true;
  CheckBoxInserirManual.Enabled := true;
  EditDoseManual.Enabled := true;
  btnCancelar.Enabled := true;
  btnNovaConsulta.Enabled := false;
  btnSalvar.Enabled := false;
  btnCalcular.Enabled := true;
end;

procedure TFormCalculoResultado.btnSalvarClick(Sender: TObject);
begin
  FDQueryResultado.Post;
  DBLookupComboLocal.Enabled := false;
  DBLookupComboBoxSolo.Enabled := false;
  DBLookupComboAgro.Enabled := false;
  CheckBoxInserirManual.Enabled := false;
  EditDoseManual.Enabled := false;
  btnCancelar.Enabled := false;
  btnNovaConsulta.Enabled := true;
  btnSalvar.Enabled := false;
  btnCalcular.Enabled := false;
end;

function TFormCalculoResultado.espessuraCamada(cam1, cam2: integer): integer;
begin
  Result := cam2 - cam1;
end;

procedure TFormCalculoResultado.FDQueryResultadoAfterPost(DataSet: TDataSet);
begin
  Application.MessageBox('Consulta salva com sucesso!', 'Consulta salva');
end;

procedure TFormCalculoResultado.FDQueryResultadoBeforePost(DataSet: TDataSet);
  var res: TResultado;
begin
  res := TResultado.Create;

  res.Id_Solo := DBLookupComboBoxSolo.KeyValue;
  res.Id_Agrotoxico := DBLookupComboAgro.KeyValue;
  res.Id_Localidade := DBLookupComboLocal.KeyValue;
  res.RecargaHidrica := StrToFloat(DBEditRecargaHidrica.Text);
  res.ConcentracaoEstimada := StrToFloat(DBEditConcentracaoEstimada.Text);

  with FDQueryResultado do
  begin
    FieldByName('recargaHidrica').AsFloat := res.RecargaHidrica;
    FieldByName('concentracaoEstimada').AsFloat := res.ConcentracaoEstimada;
    FieldByName('solo_id').AsInteger := res.Id_Solo;
    FieldByName('agrotoxico_id').AsInteger := res.Id_Agrotoxico;
    FieldByName('localidade_id').AsInteger := res.Id_Localidade;
  end;
end;

procedure TFormCalculoResultado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormCalculoResultado := NIL;
  Action := caFree;
end;

procedure TFormCalculoResultado.FormCreate(Sender: TObject);
begin
  FDQueryResultado.Insert;
  DBLookupComboLocal.KeyValue := -1;
  DBLookupComboBoxSolo.KeyValue := -1;
  DBLookupComboAgro.KeyValue := -1;
end;

procedure TFormCalculoResultado.realizaCalculos;
  var solo: TSolo;
      local: TLocalidade;
      agro: TAgrotoxico;
      calc: TCalculos;
      rf, bd, oc, koc, fc: double;
      tr, q, k, af: double;
      m, d, p, da, a, cf: double;
      l, t: integer;

begin
  //iniciando as variaveis
  solo := TSolo.Create;
  local := TLocalidade.Create;
  agro := TAgrotoxico.Create;
  calc := TCalculos.Create;

  //recuperando os valores dos objetos através das querys
  solo.DensidadeSolo1 := FDQuerySolo.FieldByName('densidadeSolo1').AsFloat;
  solo.DensidadeSolo2 := FDQuerySolo.FieldByName('densidadeSolo2').AsFloat;
  solo.DensidadeSolo3 := FDQuerySolo.FieldByName('densidadeSolo3').AsFloat;
  solo.DensidadeSolo4 := FDQuerySolo.FieldByName('densidadeSolo4').AsFloat;
  solo.CarbonoOrganico1 := FDQuerySolo.FieldByName('carbonoOrganico1').AsFloat;
  solo.CarbonoOrganico2 := FDQuerySolo.FieldByName('carbonoOrganico2').AsFloat;
  solo.CarbonoOrganico3 := FDQuerySolo.FieldByName('carbonoOrganico3').AsFloat;
  solo.CarbonoOrganico4 := FDQuerySolo.FieldByName('carbonoOrganico4').AsFloat;
  solo.ProfundidadeDeCamada1 := FDQuerySolo.FieldByName('profundidadeCamada1').AsInteger;
  solo.ProfundidadeDeCamada2 := FDQuerySolo.FieldByName('profundidadeCamada2').AsInteger;
  solo.ProfundidadeDeCamada3 := FDQuerySolo.FieldByName('profundidadeCamada3').AsInteger;
  solo.ProfundidadeDeCamada4 := FDQuerySolo.FieldByName('profundidadeCamada4').AsInteger;
  solo.CapacidadeDeCampo1 := FDQuerySolo.FieldByName('capacidadeCampo1').AsFloat;
  solo.CapacidadeDeCampo2 := FDQuerySolo.FieldByName('capacidadeCampo2').AsFloat;
  solo.CapacidadeDeCampo3 := FDQuerySolo.FieldByName('capacidadeCampo3').AsFloat;
  solo.CapacidadeDeCampo4 := FDQuerySolo.FieldByName('capacidadeCampo4').AsFloat;
  agro.CoeficienteSorcaoCamada1 := FDQueryAgro.FieldByName('coeficienteSorcaoCam1').AsFloat;
  agro.CoeficienteSorcaoCamada2 := FDQueryAgro.FieldByName('coeficienteSorcaoCam2').AsFloat;
  agro.CoeficienteSorcaoCamada3 := FDQueryAgro.FieldByName('coeficienteSorcaoCam3').AsFloat;
  agro.CoeficienteSorcaoCamada4 := FDQueryAgro.FieldByName('coeficienteSorcaoCam4').AsFloat;
  agro.MeiaVidaCamada1 := FDQueryAgro.FieldByName('meiaVidaCam1').AsInteger;
  agro.MeiaVidaCamada2 := FDQueryAgro.FieldByName('meiaVidaCam2').AsInteger;
  agro.MeiaVidaCamada3 := FDQueryAgro.FieldByName('meiaVidaCam3').AsInteger;
  agro.MeiaVidaCamada4 := FDQueryAgro.FieldByName('meiaVidaCam4').AsInteger;
  if (CheckBoxInserirManual.Checked) then
    begin
      agro.Dose := StrToFloat(EditDoseManual.Text);
    end
  else
    begin
      agro.Dose := FDQueryAgro.FieldByName('dose').AsFloat;
    end;
  local.Precipitacao := FDQueryLocalidade.FieldByName('precipitacao').AsFloat;
  local.Irrigacao := FDQueryLocalidade.FieldByName('irrigacao').AsFloat;
  local.Evapotranspiracao := FDQueryLocalidade.FieldByName('evapotranspiracao').AsFloat;
  local.PorosidadeAquifero := FDQueryLocalidade.FieldByName('porosidadeAquifero').AsFloat;
  //nao esta usando profundidade aquifero

  //setando os valores necessarios para os calculos da camada 1
  bd := solo.DensidadeSolo1;
  oc := solo.CarbonoOrganico1;
  koc := agro.CoeficienteSorcaoCamada1;
  fc := solo.CapacidadeDeCampo1;
  l := espessuraCamada(0, solo.ProfundidadeDeCamada1);
  q := calc.recargaHidrica(local.Precipitacao, local.Irrigacao, local.Evapotranspiracao);
  t := agro.MeiaVidaCamada1;
  k := calc.meiaVidaAgro(t);
  d := agro.Dose;
  p := local.PorosidadeAquifero;
  a := 10.000;  //sera q eh isso mesmo
  da := 2; //sera q eh isso mesmo


  //realizando o calculo da camada 1
  rf := calc.fatorRetardamento(bd, oc, koc, fc);
  tr := calc.tempoPercurso(l, fc, q, rf);
  af := calc.lixiviacao(tr, k);
  m := calc.massaPrevista(d, af);

  if ((solo.ProfundidadeDeCamada2=0) OR (solo.CapacidadeDeCampo2=0) OR
      (solo.DensidadeSolo2=0) OR (solo.CarbonoOrganico2=0)) then
      begin

      end
  else
      begin
      //setando os valores necessarios para os calculos da camada 2
        bd := solo.DensidadeSolo2;
        oc := solo.CarbonoOrganico2;
        koc := agro.CoeficienteSorcaoCamada2;
        fc := solo.CapacidadeDeCampo2;
        l := espessuraCamada(solo.ProfundidadeDeCamada1, solo.ProfundidadeDeCamada2);
        t := agro.MeiaVidaCamada2;
        k := calc.meiaVidaAgro(t);

        //realizando o calculo da camada 2
        rf := calc.fatorRetardamento(bd, oc, koc, fc);
        tr := calc.tempoPercurso(l, fc, q, rf);
        af := af * calc.lixiviacao(tr, k);
        m := calc.massaPrevista(d, af);

      end;

  if ((solo.ProfundidadeDeCamada3=0) OR (solo.CapacidadeDeCampo3=0) OR
      (solo.DensidadeSolo3=0) OR (solo.CarbonoOrganico3=0)) then
      begin

      end
  else
      begin
      //setando os valores necessarios para os calculos da camada 3
        bd := solo.DensidadeSolo3;
        oc := solo.CarbonoOrganico3;
        koc := agro.CoeficienteSorcaoCamada3;
        fc := solo.CapacidadeDeCampo3;
        l := espessuraCamada(solo.ProfundidadeDeCamada2, solo.ProfundidadeDeCamada3);
        t := agro.MeiaVidaCamada3;
        k := calc.meiaVidaAgro(t);

        //realizando o calculo da camada 3
        rf := calc.fatorRetardamento(bd, oc, koc, fc);
        tr := calc.tempoPercurso(l, fc, q, rf);
        af := af * calc.lixiviacao(tr, k);
        m := calc.massaPrevista(d, af);

      end;

  if ((solo.ProfundidadeDeCamada4=0) OR (solo.CapacidadeDeCampo4=0) OR
      (solo.DensidadeSolo4=0) OR (solo.CarbonoOrganico4=0)) then
      begin

      end
  else
      begin
      //setando os valores necessarios para os calculos da camada 4
        bd := solo.DensidadeSolo4;
        oc := solo.CarbonoOrganico4;
        koc := agro.CoeficienteSorcaoCamada4;
        fc := solo.CapacidadeDeCampo4;
        l := espessuraCamada(solo.ProfundidadeDeCamada3, solo.ProfundidadeDeCamada4);
        t := agro.MeiaVidaCamada4;
        k := calc.meiaVidaAgro(t);

        //realizando o calculo da camada 2
        rf := calc.fatorRetardamento(bd, oc, koc, fc);
        tr := calc.tempoPercurso(l, fc, q, rf);
        af := af * calc.lixiviacao(tr, k);
        m := calc.massaPrevista(d, af);

      end;

      cf := calc.concentracaoAgroAguaSubterranea(m, p, da, a);

  DBEditConcentracaoEstimada.Text := FloatToStr(cf);
  DBEditConcentracaoEstimada.Color := clYellow;
  DBEditRecargaHidrica.Text := FloatToStr(q);
end;

function TFormCalculoResultado.verificaCamposParaCalculo: Boolean;
begin
  if (DBLookupComboLocal.KeyValue = -1) then
    begin
      Application.MessageBox('Você deve preencher o Local.', 'Local não preenchido');
      DBLookupComboLocal.SetFocus;
      Result := false;
    end
  else if (DBLookupComboBoxSolo.KeyValue = -1) then
    begin
      Application.MessageBox('Você deve preencher o Solo.', 'Solo não preenchido');
      DBLookupComboBoxSolo.Focused;
      Result := false;
    end
  else if (DBLookupComboAgro.KeyValue = -1) then
    begin
      Application.MessageBox('Você deve preencher o Agrotóxico.', 'Agrotóxico não preenchido');
      DBLookupComboAgro.Focused;
      Result := false;
    end
  else if ((CheckBoxInserirManual.Checked) AND (EditDoseManual.Text = '')) then
    begin
      Application.MessageBox('Você deve preencher a dose do agrotóxico', 'Dose não preenchida');
      EditDoseManual.Focused;
      Result := false;
    end
    else
      begin
        Result := true;
      end;
end;

end.
