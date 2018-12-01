unit UnitCalculoResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UnitAgrotoxico, UnitLocalidade, UnitCalculo,
  UnitSolo, Vcl.Grids, Vcl.DBGrids;

type
  TFormCalculoResultado = class(TForm)
    GroupBoxLocal: TGroupBox;
    GroupBoxSolo: TGroupBox;
    GroupBoxAgrotoxico: TGroupBox;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    CheckBoxInserirManual: TCheckBox;
    EditDoseManual: TEdit;
    Panel5: TPanel;
    FDQueryResultado: TFDQuery;
    DataSourceResultado: TDataSource;
    DBLookupComboSup: TDBLookupComboBox;
    DBLookupComboBoxSolo: TDBLookupComboBox;
    DBLookupComboAgro: TDBLookupComboBox;
    FDQuerySolo: TFDQuery;
    FDQueryLocalidade: TFDQuery;
    FDQueryAgro: TFDQuery;
    DataSourceSolo: TDataSource;
    DataSourceLocalidade: TDataSource;
    DataSourceAgro: TDataSource;
    FDQueryLocalidadeid: TFDAutoIncField;
    FDQueryLocalidadeprecipitacao: TSingleField;
    FDQueryLocalidadeevapotranspiracao: TSingleField;
    FDQueryLocalidadeirrigacao: TSingleField;
    FDQueryLocalidadeporosidadeAquifero: TSingleField;
    FDQueryLocalidadeprofundidadeAquifero: TIntegerField;
    FDQueryLocalidadedescricao: TStringField;
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
    GroupBox3: TGroupBox;
    RadioButtonSup: TRadioButton;
    RadioButtonSub: TRadioButton;
    RadioButtonAS: TRadioButton;
    RadioButtonAB: TRadioButton;
    RadioButtonAT: TRadioButton;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBEditRecargaHidrica: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBEditConcentracaoEstimada: TDBEdit;
    GroupBoxSub: TGroupBox;
    DataSourceSuper: TDataSource;
    FDQuerySuper: TFDQuery;
    ButtonConsultar: TButton;
    DBLookupComboBoxLocal: TDBLookupComboBox;
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
    procedure RadioButtonSubClick(Sender: TObject);
    procedure RadioButtonSupClick(Sender: TObject);
    procedure ButtonConsultarClick(Sender: TObject);
    procedure RadioButtonASClick(Sender: TObject);
    procedure RadioButtonABClick(Sender: TObject);
    procedure RadioButtonATClick(Sender: TObject);

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
  if RadioButtonAS.Checked then FDQueryResult.SQL[18] := 'and tipo = 2';
  if RadioButtonAB.Checked then FDQueryResult.SQL[18] := 'and tipo = 1';
  if RadioButtonAT.Checked then FDQueryResult.SQL[18] := '';
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

procedure TFormCalculoResultado.Edit1Change(Sender: TObject);
begin
  ButtonConsultar.Click;
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
  FDQueryLocalidade.Active := True;
  FDQuerySuper.Active := True;
  FDQueryAgro.Active := True;
  FDQueryResultado.Insert;
  DBLookupComboBoxLocal.KeyValue := -1;
  DBLookupComboBoxSolo.KeyValue := -1;
  DBLookupComboAgro.KeyValue := -1;
  DBLookupComboSup.KeyValue := -1;
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

procedure TFormCalculoResultado.RadioButtonSubClick(Sender: TObject);
begin
 if RadioButtonSub.Checked then
 begin
    DBLookupComboBoxLocal.Enabled := True;
    DBLookupComboSup.Enabled := False;
 end
 else
 begin
    DBLookupComboBoxLocal.Enabled := False;
    DBLookupComboSup.Enabled := True;
 end;
end;

procedure TFormCalculoResultado.RadioButtonSupClick(Sender: TObject);
begin
 if RadioButtonSub.Checked then
 begin
    DBLookupComboBoxLocal.Enabled := True;
    DBLookupComboSup.Enabled := False;
 end
 else
 begin
    DBLookupComboBoxLocal.Enabled := False;
    DBLookupComboSup.Enabled := True;
 end;

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

  //recuperando os valores dos objetos atrav�s das querys
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

  //verifica se h� novas camadas. Se houver, � realizado um novo calculo sobre o af
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
end;

function TFormCalculoResultado.verificaCamposParaCalculo: Boolean;
begin
  if (DBLookupComboBoxLocal.KeyValue = -1) then
    begin
      Application.MessageBox('Voc� deve preencher o Local.', 'Local n�o preenchido');
      DBLookupComboBoxLocal.SetFocus;
      Result := false;
    end
  else if (DBLookupComboBoxSolo.KeyValue = -1) then
    begin
      Application.MessageBox('Voc� deve preencher o Solo.', 'Solo n�o preenchido');
      DBLookupComboBoxSolo.Focused;
      Result := false;
    end
  else if (DBLookupComboAgro.KeyValue = -1) then
    begin
      Application.MessageBox('Voc� deve preencher o Agrot�xico.', 'Agrot�xico n�o preenchido');
      DBLookupComboAgro.Focused;
      Result := false;
    end
  else if ((CheckBoxInserirManual.Checked) AND (EditDoseManual.Text = '')) then
    begin
      Application.MessageBox('Voc� deve preencher a dose do agrot�xico', 'Dose n�o preenchida');
      EditDoseManual.Focused;
      Result := false;
    end
    else
      begin
        Result := true;
      end;
end;

end.
