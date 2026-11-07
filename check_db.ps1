$connString = "Server=108.181.198.178,1438;Database=SADEEXPRESS;User Id=sa;Password=P@`$`$w0rd;"
$query = "SELECT TOP 1 * FROM cxc"
$conn = New-Object System.Data.SqlClient.SqlConnection($connString)
$cmd = New-Object System.Data.SqlClient.SqlCommand($query, $conn)
$conn.Open()
$reader = $cmd.ExecuteReader()
$schema = $reader.GetSchemaTable()
foreach ($row in $schema) {
    Write-Host $row.ColumnName
}
$conn.Close()
