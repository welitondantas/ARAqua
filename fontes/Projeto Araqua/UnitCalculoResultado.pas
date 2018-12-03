unit UnitCalculoResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UnitAgrotoxico, UnitLocalidade, UnitCalculo,
  UnitSolo, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TFormCalculoResultado = class(TForm)
    GroupBoxAgrotoxico: TGroupBox;
    GroupBox4: TGroupBox;
    CheckBoxInserirManual: TCheckBox;
    EditDoseManual: TEdit;
    Panel5: TPanel;
    FDQueryResultado: TFDQuery;
    DataSourceResultado: TDataSource;
    DBLookupComboAgro: TDBLookupComboBox;
    FDQuerySolo: TFDQuery;
    FDQueryLocalidade: TFDQuery;
    FDQueryAgro: TFDQuery;
    DataSourceSolo: TDataSource;
    DataSourceLocalidade: TDataSource;
    DataSourceAgro: TDataSource;
    Button1: TButton;
    Panel3: TPanel;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Label13: TLabel;
    FDQueryResult: TFDQuery;
    DSResult: TDataSource;
    Panel7: TPanel;
    btnCalcular: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnNovaConsulta: TButton;
    DBNavigator2: TDBNavigator;
    Splitter1: TSplitter;
    RadioButtonAS: TRadioButton;
    RadioButtonAB: TRadioButton;
    RadioButtonAT: TRadioButton;
    GroupBox1: TGroupBox;
    DBEditRecargaHidrica: TDBEdit;
    GroupBox2: TGroupBox;
    DBEditConcentracaoEstimada: TDBEdit;
    GroupBoxSub: TGroupBox;
    ButtonConsultar: TButton;
    DBLookupComboBoxLocal: TDBLookupComboBox;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    GroupBoxSolo: TGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBLookupComboBoxSolo: TDBLookupComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    SpeedButtonAgro: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBRadioGroup1: TDBRadioGroup;
    Label3: TLabel;
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
    function calculaProfundidade(camada, profundidade: integer): integer;
    function calculaCamada1(solo: TSolo; agro: TAgrotoxico; local: TLocalidade): double;
    function calculaCamada2(solo: TSolo; agro: TAgrotoxico; local: TLocalidade): double;
    function calculaCamada3(solo: TSolo; agro: TAgrotoxico; local: TLocalidade): double;
    function calculaCamada4(solo: TSolo; agro: TAgrotoxico; local: TLocalidade): double;
    procedure CheckBoxInserirManualClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure RadioButtonASClick(Sender: TObject);
    procedure RadioButtonABClick(Sender: TObject);
    procedure RadioButtonATClick(Sender: TObject);
    procedure DataSourceResultadoDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButtonAgroClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
      FormCalculoResultado: TFormCalculoResultado;
      rf, bd, oc, koc, fc: double;
      tr, q, k, af: double;
      m, d, p, da, a, cf: double;
      l, t: integer;
      calc: TCalculos;

implementation

{$R *.dfm}

uses UnitDataModule, UnitResultado, UnitPrincipal;

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
  DBLookupComboBoxLocal.Enabled := false;
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
  DBLookupComboBoxLocal.Enabled := true;
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
  DBLookupComboBoxLocal.Enabled := false;
  DBLookupComboBoxSolo.Enabled := false;
  DBLookupComboAgro.Enabled := false;
  CheckBoxInserirManual.Enabled := false;
  EditDoseManual.Enabled := false;
  btnCancelar.Enabled := false;
  btnNovaConsulta.Enabled := true;
  btnSalvar.Enabled := false;
  btnCalcular.Enabled := false;
end;

procedure TFormCalculoResultado.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCalculoResultado.ButtonConsultarClick(Sender: TObject);
begin
  FDQueryResult.Active := False;
  FDQueryResult.ParamByName('AGRO').AsString := '%'+Edit1.Text+'%';
  FDQueryResult.ParamByName('LOCAL').AsString := '%'+Edit1.Text+'%';
  FDQueryResult.ParamByName('SOLO').AsString := '%'+Edit1.Text+'%';
  FDQueryResult.ParamByName('ID').AsString := Edit1.Text;
  if RadioButtonAS.Checked then FDQueryResult.SQL[18] := 'and r.tipo = 2';
  if RadioButtonAB.Checked then FDQueryResult.SQL[18] := 'and r.tipo = 1';
  if RadioButtonAT.Checked then FDQueryResult.SQL[18] := '';
  FDQueryResult.ParamByName('DATADE').AsString := DateToStr(DateTimePicker1.DateTime);
  FDQueryResult.ParamByName('DATAATE').AsString := DateToStr(DateTimePicker2.DateTime);
//  showmessage( DateToStr(DateTimePicker1.DateTime) + ' ' + DateToStr(DateTimePicker2.DateTime));
  FDQueryResult.Active := True;
end;

function TFormCalculoResultado.calculaCamada1(solo: TSolo; agro: TAgrotoxico;
  local: TLocalidade): double;
  begin
    calc := TCalculos.Create;
    //setando os valores necessarios para os calculos da camada 1
     bd := solo.DensidadeSolo1;
     oc := solo.CarbonoOrganico1;
     koc := agro.CoeficienteSorcaoCamada1;
     fc := solo.CapacidadeDeCampo1;
     if ((solo.ProfundidadeDeCamada2=0) OR (solo.CapacidadeDeCampo2=0) OR
      (solo.DensidadeSolo2=0) OR (solo.CarbonoOrganico2=0)) then
        begin
          l := calculaProfundidade(solo.ProfundidadeDeCamada1, local.ProfundidadeAquifero);
        end
      else
        begin
          l := calculaProfundidade(0, solo.ProfundidadeDeCamada1);
        end;
      t := agro.MeiaVidaCamada1;
      k := calc.meiaVidaAgro(t);

      //realizando o calculo da camada 1
      q := calc.recargaHidrica(local.Precipitacao, local.Irrigacao, local.Evapotranspiracao);
      rf := calc.fatorRetardamento(bd, oc, koc, fc);
      tr := calc.tempoPercurso(l, fc, q, rf);
      af := calc.lixiviacao(tr, k);
      Result := af;
end;

function TFormCalculoResultado.calculaCamada2(solo: TSolo; agro: TAgrotoxico;
  local: TLocalidade): double;
begin
  calc := TCalculos.Create;
  bd := solo.DensidadeSolo2;
  oc := solo.CarbonoOrganico2;
  koc := agro.CoeficienteSorcaoCamada2;
  fc := solo.CapacidadeDeCampo2;
  if ((solo.ProfundidadeDeCamada3=0) OR (solo.CapacidadeDeCampo3=0) OR
      (solo.DensidadeSolo3=0) OR (solo.CarbonoOrganico3=0)) then
    begin
      l := calculaProfundidade(solo.ProfundidadeDeCamada2, local.ProfundidadeAquifero);
    end
  else
    begin
      l := calculaProfundidade(solo.ProfundidadeDeCamada1, solo.ProfundidadeDeCamada2);
    end;
  t := agro.MeiaVidaCamada2;
  k := calc.meiaVidaAgro(t);

  //realizando o calculo da camada 2
  q := calc.recargaHidrica(local.Precipitacao, local.Irrigacao, local.Evapotranspiracao);
  rf := calc.fatorRetardamento(bd, oc, koc, fc);
  tr := calc.tempoPercurso(l, fc, q, rf);
  af := calc.lixiviacao(tr, k);
  Result := af;
end;

function TFormCalculoResultado.calculaCamada3(solo: TSolo; agro: TAgrotoxico;
  local: TLocalidade): double;
begin
  calc := TCalculos.Create;
  //setando os valores necessarios para os calculos da camada 3
  bd := solo.DensidadeSolo3;
  oc := solo.CarbonoOrganico3;
  koc := agro.CoeficienteSorcaoCamada3;
  fc := solo.CapacidadeDeCampo3;
  if ((solo.ProfundidadeDeCamada4=0) OR (solo.CapacidadeDeCampo4=0) OR
      (solo.DensidadeSolo4=0) OR (solo.CarbonoOrganico4=0)) then
    begin
      l := calculaProfundidade(solo.ProfundidadeDeCamada3, local.ProfundidadeAquifero);
    end
  else
    begin
      l := calculaProfundidade(solo.ProfundidadeDeCamada2, solo.ProfundidadeDeCamada3);
    end;
  t := agro.MeiaVidaCamada3;
  k := calc.meiaVidaAgro(t);

  //realizando o calculo da camada 3
  q := calc.recargaHidrica(local.Precipitacao, local.Irrigacao, local.Evapotranspiracao);
  rf := calc.fatorRetardamento(bd, oc, koc, fc);
  tr := calc.tempoPercurso(l, fc, q, rf);
  af := calc.lixiviacao(tr, k);
  Result := af;
end;

function TFormCalculoResultado.calculaCamada4(solo: TSolo; agro: TAgrotoxico;
  local: TLocalidade): double;
begin
  calc := TCalculos.Create;
  //setando os valores necessarios para os calculos da camada 4
  bd := solo.DensidadeSolo4;
  oc := solo.CarbonoOrganico4;
  koc := agro.CoeficienteSorcaoCamada4;
  fc := solo.CapacidadeDeCampo4;
  l := calculaProfundidade(solo.ProfundidadeDeCamada3, local.ProfundidadeAquifero);
  t := agro.MeiaVidaCamada4;
  k := calc.meiaVidaAgro(t);

  //realizando o calculo da camada 4
  q := calc.recargaHidrica(local.Precipitacao, local.Irrigacao, local.Evapotranspiracao);
  rf := calc.fatorRetardamento(bd, oc, koc, fc);
  tr := calc.tempoPercurso(l, fc, q, rf);
  af := calc.lixiviacao(tr, k);
  Result := af;
end;

function TFormCalculoResultado.calculaProfundidade(camada, profundidade: integer): integer;
begin
  Result := profundidade - camada;
end;

procedure TFormCalculoResultado.CheckBoxInserirManualClick(Sender: TObject);
begin
  if (CheckBoxInserirManual.Checked) then
    begin
      EditDoseManual.Enabled := true;
    end
  else
    begin
      EditDoseManual.Enabled := false;
    end;
end;

procedure TFormCalculoResultado.DataSourceResultadoDataChange(Sender: TObject;
  Field: TField);
begin
  FDQueryLocalidade.Active := False;
  FDQueryLocalidade.ParamByName('tipo').AsString := FDQueryResultado.FieldByName('tipo').AsString;
  FDQueryLocalidade.Active := True;
end;

procedure TFormCalculoResultado.Edit1Change(Sender: TObject);
begin
  ButtonConsultar.Click;
end;

procedure TFormCalculoResultado.FDQueryResultadoAfterPost(DataSet: TDataSet);
begin
  Application.MessageBox('Cálculo gravado com sucesso!', 'Cálculo realizado');
  ButtonConsultar.Click;
end;

procedure TFormCalculoResultado.FDQueryResultadoBeforePost(DataSet: TDataSet);
  var res: TResultado;
begin
  res := TResultado.Create;

  res.Id_Solo := DBLookupComboBoxSolo.KeyValue;
  res.Id_Agrotoxico := DBLookupComboAgro.KeyValue;
  res.Id_Localidade := DBLookupComboBoxLocal.KeyValue;
  res.RecargaHidrica := StrToFloat(DBEditRecargaHidrica.Text);
  res.ConcentracaoEstimada := StrToFloat(DBEditConcentracaoEstimada.Text);

  with FDQueryResultado do
  begin
    FieldByName('recargaHidrica').AsFloat := res.RecargaHidrica;
    FieldByName('concentracaoEstimada').AsFloat := res.ConcentracaoEstimada;
    FieldByName('solo_id').AsInteger := res.Id_Solo;
    FieldByName('agrotoxico_id').AsInteger := res.Id_Agrotoxico;
    FieldByName('localidade_id').AsInteger := res.Id_Localidade;
    FieldByName('data_resultado').AsDateTime := now;
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
  FDQueryResult.Active := True;
  FDQueryResultado.Active := True;
  FDQuerySolo.Active := True;
//  FDQueryLocalidade.Active := True;
  FDQueryAgro.Active := True;
  FDQueryResultado.Insert;
//  DBLookupComboBoxLocal.KeyValue := -1;
  DBLookupComboBoxSolo.KeyValue := -1;
  DBLookupComboAgro.KeyValue := -1;
  ButtonConsultar.Click;
end;

procedure TFormCalculoResultado.RadioButtonABClick(Sender: TObject);
begin
 ButtonConsultar.Click;
end;

procedure TFormCalculoResultado.RadioButtonASClick(Sender: TObject);
begin
  ButtonConsultar.Click;
end;

procedure TFormCalculoResultado.RadioButtonATClick(Sender: TObject);
begin
 ButtonConsultar.Click;
end;

procedure TFormCalculoResultado.realizaCalculos;
  var solo: TSolo;
      local: TLocalidade;
      agro: TAgrotoxico;
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
      if (EditDoseManual.Text='') then
        begin
          EditDoseManual.Text :=  '0';
        end;
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
  local.ProfundidadeAquifero := FDQueryLocalidade.FieldByName('profundidadeAquifero').AsInteger;
  local.Decliv := FDQueryLocalidade.FieldByName('decliv').AsFloat;
  local.Interplan := FDQueryLocalidade.FieldByName('interplan').AsFloat;
  local.Fxcont := FDQueryLocalidade.FieldByName('fxcont').AsFloat;
  local.Coefe := FDQueryLocalidade.FieldByName('coefe').AsFloat;
  // caso calculo subterraneo
 if DBRadioGroup1.ItemIndex = 0 then
  begin
  //verifica se há novas camadas. Se houver, é realizado um novo calculo sobre o af
  af:= calculaCamada1(solo, agro, local);
  if ((solo.ProfundidadeDeCamada2<>0) AND (solo.CapacidadeDeCampo2<>0) AND
      (solo.DensidadeSolo2<>0) AND (solo.CarbonoOrganico2<>0)) then
    begin
      af  := af * calculaCamada2(solo, agro, local);
    end;

  if ((solo.ProfundidadeDeCamada3<>0) AND (solo.CapacidadeDeCampo3<>0) AND
      (solo.DensidadeSolo3<>0) AND (solo.CarbonoOrganico3<>0)) then
    begin
      af  := af * calculaCamada3(solo, agro, local);
    end;

  if ((solo.ProfundidadeDeCamada4<>0)AND (solo.CapacidadeDeCampo4<>0) AND
      (solo.DensidadeSolo4<>0) AND (solo.CarbonoOrganico4<>0)) then
    begin
      af  := af * calculaCamada4(solo, agro, local);
    end;

  //parte final dos calculos
  q := calc.recargaHidrica(local.Precipitacao, local.Irrigacao, local.Evapotranspiracao);
  d := agro.Dose;
  p := local.PorosidadeAquifero;
  a := 10000;
  da := 2;


  m := calc.massaPrevista(d, af);

  cf := calc.concentracaoAgroAguaSubterranea(m, p, da, a);

  DBEditConcentracaoEstimada.Text := FloatToStr(cf);
  DBEditConcentracaoEstimada.Color := clYellow;
  DBEditRecargaHidrica.Text := FloatToStr(q);
  end
  else
  begin
    showmessage('Cálculo Água Superficial');
  end;
end;

procedure TFormCalculoResultado.SpeedButton1Click(Sender: TObject);
begin
  FormPrincipal.Localidade1.Click;
end;

procedure TFormCalculoResultado.SpeedButton2Click(Sender: TObject);
begin
    FormPrincipal.Solo1.Click;
end;

procedure TFormCalculoResultado.SpeedButtonAgroClick(Sender: TObject);
begin
  FormPrincipal.Agrotxicos1.Click;
end;

function TFormCalculoResultado.verificaCamposParaCalculo: Boolean;
begin
  if (DBLookupComboBoxLocal.KeyValue = -1) then
    begin
      Application.MessageBox('Você deve preencher o Local.', 'Local não preenchido');
      DBLookupComboBoxLocal.SetFocus;
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
