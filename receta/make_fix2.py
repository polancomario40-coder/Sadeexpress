import os

tables = {
    'Cxc': {'PendEnvioEcf': '0', 'PendValidacion': '0', 'StatusEcf': "'PENDIENTE'"},
    'Factura': {'PendEnvioEcf': '1', 'PendValidacion': '1', 'StatusEcf': "'PENDIENTE'"},
    'bcoGastosMenores': {'PendEnvioEcf': '1', 'PendValidacion': '1', 'StatusEcf': "'PENDIENTE'"},
    'cxpDocumentos': {'PendEnvioEcf': '0', 'PendValidacion': '0', 'StatusEcf': "'PENDIENTE'"},
    'Devolucion': {'PendEnvioEcf': '1', 'PendValidacion': '1', 'StatusEcf': "'PENDIENTE'"}
}

with open(r'receta\007_Fix_ECF_Defaults.sql', 'w', encoding='utf-8') as f:
    for t, cols in tables.items():
        for c, default_val in cols.items():
            # Update existing NULLs or wrong values to the default (or 0 for bit if we want, but default is safer)
            # Actually, we already updated bit to 0. But for StatusEcf, we must update NULLs to 'PENDIENTE'
            if c == 'StatusEcf':
                f.write(f"UPDATE dbo.{t} SET [{c}] = {default_val} WHERE [{c}] IS NULL;\n")
                f.write(f"ALTER TABLE dbo.{t} ALTER COLUMN [{c}] varchar(16) NOT NULL;\n")
            
            # Drop old constraint if exists
            f.write(f"DECLARE @ConstraintName_{t}_{c} nvarchar(200);\n")
            f.write(f"SELECT @ConstraintName_{t}_{c} = Name FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.{t}') AND col_name(parent_object_id, parent_column_id) = '{c}';\n")
            f.write(f"IF @ConstraintName_{t}_{c} IS NOT NULL EXEC('ALTER TABLE dbo.{t} DROP CONSTRAINT ' + @ConstraintName_{t}_{c});\n")
            
            # Add new constraint
            f.write(f"ALTER TABLE dbo.{t} ADD CONSTRAINT DF_{t}_{c}_ECF DEFAULT {default_val} FOR [{c}];\n\n")

with open(r'receta\ECF_DATABASE_CHANGELOG.md', 'a', encoding='utf-8') as f:
    f.write('| 007 | `007_Fix_ECF_Defaults.sql` | DATOS | Correccion estricta de constraints DEFAULT y NOT NULL para campos de estado ECF |\n')
