$path = 'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.~pas'
$c = [IO.File]::ReadAllText($path, [Text.Encoding]::GetEncoding(1252))
$idx1 = $c.IndexOf("procedure TCXC.UserAutoCodigo;")
$idx2 = $c.IndexOf("procedure TCXC.SendEcf", $idx1)
$sub = $c.Substring($idx1, $idx2 - $idx1)
Write-Host $sub
