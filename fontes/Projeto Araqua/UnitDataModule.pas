unit UnitDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    FDQueryUsuario: TFDQuery;
    FDConnection1: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses IniFiles;

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
  var
    ini: TIniFile;
    arquivo: String;
  begin
    arquivo := ExtractFileDir(GetCurrentDir) + '\Config.ini';
    ini := TIniFile.Create(arquivo);
      if (not FileExists(arquivo)) then
        begin
          ini.WriteString('MYSQL','Hostname','LOCALHOST');
          ini.WriteString('MYSQL','Port','3306');
          ini.WriteString('MySQL','Database', 'dbaraqua');
          ini.WriteString('MYSQL','Password','');
          ini.WriteString('MYSQL','user_name','root');
          ini.WriteString('MYSQL','drivername','MySQL');
          ini.WriteString('MYSQL','LibraryName','dbxmys.dll');
          ini.WriteString('MYSQL','VendorLib','libmysql.dll');
          ini.WriteString('MYSQL','ConnectionName','MYSQLCONNECTION');
          ini.WriteString('MYSQL','GetDriveFunc','getSQLDriverMySQL');
          ini.Free;
        end;
        try
          with FDConnection1 do
            begin
              Params.Clear;
              Params.Values['Hostname']  := ini.ReadString('MYSQL','Hostname','LOCALHOST');
              Params.Values['Port'] := ini.ReadString('MYSQL','Port','3306');
              Params.Values['database'] := ini.ReadString('MySQL','Database', 'dbaraqua');
              Params.Values['Password'] := ini.ReadString('MYSQL','Password','');
              Params.Values['user_name'] := ini.ReadString('MYSQL','user_name','root');
              Params.Values['driverId'] := ini.ReadString('MYSQL','drivername','MySQL');
              Params.Values['LibraryName'] := ini.ReadString('MYSQL','LibraryName','dbxmys.dll');
              Params.Values['VendorLib'] := ini.ReadString('MYSQL','VendorLib','libmysql.dll');
              Params.Values['ConnectionName'] := ini.ReadString('MYSQL','ConnectionName','MYSQLCONNECTION');
              Params.Values['GetDriveFunc'] := ini.ReadString('MYSQL','GetDriveFunc','getSQLDriverMySQL');
              Connected := True;
            end;
        except
          
        end;
end;

end.
