object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 1201
  Top = 201
  Height = 189
  Width = 249
  object Zkategori: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 88
    Top = 24
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = '2210010415_visual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\User\OneDrive\Documents\!Tugas UNISKA\Tugas Delphi\libm' +
      'ysql\libmysql.dll'
    Left = 24
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = Zkategori
    Left = 24
    Top = 80
  end
end
