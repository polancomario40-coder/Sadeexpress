$dfm = [IO.File]::ReadAllText('C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADESTANDAR\Ventas\CXC\uCXC.dfm', [Text.Encoding]::GetEncoding(1252))

$lbl16 = [regex]::Match($dfm, '(?s)    object Label16: TLabel.*?    end\r?\n').Value
$btnEdit = [regex]::Match($dfm, '(?s)    object cxDBButtonEdit1: TcxDBButtonEdit.*?      TabOrder = 19\r?\n    end\r?\n').Value
$txtEdit = [regex]::Match($dfm, '(?s)    object cxDBTextEdit1: TcxDBTextEdit.*?      TabOrder = 20\r?\n    end\r?\n').Value
$tabSheet = [regex]::Match($dfm, '(?s)    object TabSheet1: TTabSheet.*?cxDBMemo1: TcxDBMemo.*?        TabOrder = 2\r?\n      end\r?\n    end\r?\n').Value
$dsEcf = [regex]::Match($dfm, '(?s)  object dsEcfStatus: TwwDataSource.*?    Top = 339\r?\n  end\r?\n').Value

[IO.File]::WriteAllText("parts.txt", "$lbl16|||$btnEdit|||$txtEdit|||$tabSheet|||$dsEcf")
