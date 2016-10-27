unit Unity1;

interface

uses
  Winapi.Windows,Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,     FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,     FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,FireDAC.Comp.Client,     FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL,
  Vcl.ComCtrls, Vcl.ExtCtrls, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script, Data.Win.ADODB, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.MSSQLDef, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    ConectarDB: TTabSheet;
    Button1: TButton;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    MySQL: TFDConnection;
    Query: TFDQuery;
    AddUsers: TTabSheet;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Button3: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label7: TLabel;
    Edit9: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Script: TFDScript;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    ADOConnection1: TADOConnection;
    TabSheet1: TTabSheet;
    Edit10: TEdit;
    Edit11: TEdit;
    Button4: TButton;
    Label10: TLabel;
    Label11: TLabel;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Param(Parameter, Value: AnsiString);
    procedure RunQuery(Query: AnsiString);
    procedure Run(Tp: Byte);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    server:AnsiString;
    Port:Integer;
    User:AnsiString;
    Senha:AnsiString;
    DB:AnsiString;
    Driver:AnsiString;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Param(Parameter: AnsiString; Value: AnsiString);
begin
  Self.Query.ParamByName(String(Parameter)).Value:=Value;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    server:=edit1.Text;
    Port:=1433;
    User:=edit2.text;
    Senha:=edit3.Text;
    DB:=Edit5.Text;
    ADOConnection1.ConnectionString:='Provider=SQLOLEDB.1;Password='+Senha+';Persist Security Info=True;User ID='+User+';Initial Catalog='+DB+';Data Source='+Server+'';
    ADOConnection1.Connected:=True;
if ADOConnection1.Connected=True then Begin
  Showmessage('Conexao Feita com Sucesso!');
  end
  else
  Showmessage('Erro De Conexao!');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
Login: AnsiString;
pass: AnsiString;
Sex: Integer;
GP: Integer;
begin
Login:=edit4.Text;
pass:=Edit7.text;
Sex:=StrToInt(Edit6.text);
GP:=StrToInt(Edit9.text);
ADOQuery1.SQL.Add('INSERT INTO Users (Login,passwd,sex,gamePoint,ChannelingID)VALUES(:Login,:Pass,:Sex,:GP,0)');
ADOQuery1.Parameters.ParamByName('LOGIN').Value:=Login;
ADOQuery1.Parameters.ParamByName('PASS').Value:=Pass;
ADOQuery1.Parameters.ParamByName('Sex').Value:=Sex;
ADOQuery1.Parameters.ParamByName('GP').Value:=GP;
ADOQuery1.ExecSQL;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
Name: AnsiString;
Chartype: integer;
begin
CharType:=StrToInt(Edit10.text);
Name:=Edit11.Text;
ADOquery1.SQL.Clear;
//Adiciona Chars Na Table CPCharacters Meio Inutil sem a Source do Main
ADOQuery1.SQL.Add('INSERT INTO CPCharacter(CharType,Name)VALUES(:Chartype,:Name)');
ADOQuery1.Parameters.ParamByName('Name').Value:=Name;
ADOQuery1.Parameters.ParamByName('CharType').Value:=CharType;
ADOquery1.ExecSQL;
end;

procedure TForm1.RunQuery(Query: AnsiString);
begin
  Self.Query.Close;
  Self.Query.SQL.Clear;
  Self.Query.DisableControls;
  Self.Query.SQL.Text:=String(Query);
end;

procedure TForm1.Run(Tp: Byte);
begin
  try
    if Tp = 1 then
      Self.Query.Open
    else
      Self.Query.ExecSQL;
  except
    Exit;
  end;
end;

end.
