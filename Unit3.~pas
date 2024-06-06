unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBCtrls;

type
  TForm3 = class(TForm)
    txt1: TStaticText;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('INSERT INTO kategori (name) VALUES (:name)');
  DataModule1.Zkategori.Params.ParamByName('name').AsString := Edit1.Text;
  DataModule1.Zkategori.ExecSQL;

  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('SELECT * FROM kategori');
  DataModule1.Zkategori.Open;
  ShowMessage('Data Berhasil Disimpan!');
  end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('UPDATE kategori SET name = :name WHERE id = :id');
  DataModule1.Zkategori.Params.ParamByName('name').AsString := Edit1.Text;
  DataModule1.Zkategori.Params.ParamByName('id').AsString := a;
  DataModule1.Zkategori.ExecSQL;

  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('SELECT * FROM kategori');
  DataModule1.Zkategori.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('DELETE FROM kategori WHERE id = :id');
  DataModule1.Zkategori.Params.ParamByName('id').AsString := a;
  DataModule1.Zkategori.ExecSQL;

  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('SELECT * FROM kategori');
  DataModule1.Zkategori.Open;
  ShowMessage('Data Berhasil Diupdate!');
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:=DataModule1.Zkategori.Fields[1].AsString;
a:= DataModule1.Zkategori.Fields[0].AsString;
end;

end.
