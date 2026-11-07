tables = ['Devolucion', 'cxpDocumentos', 'Cxc', 'Factura', 'Cliente', 'bcoGastosMenores']
bit_cols = {
    'Devolucion': ['PendValidacion', 'PendEnvioEcf'],
    'cxpDocumentos': ['PendValidacion', 'PendEnvioEcf', 'RetenerTotalFactura'],
    'Cxc': ['PendValidacion', 'PendEnvioEcf'],
    'Factura': ['PendValidacion', 'PendEnvioEcf'],
    'Cliente': ['NoRecibirConduces', 'RequiereOrdenCliente', 'Monto_Bono_Mortero', 'OCRequerida'],
    'bcoGastosMenores': ['Cancelado', 'PendValidacion', 'PendEnvioEcf']
}

with open(r'receta\006_Fix_Bit_Columns.sql', 'w', encoding='utf-8') as f:
    for t, cols in bit_cols.items():
        for c in cols:
            f.write(f'UPDATE dbo.{t} SET [{c}] = 0 WHERE [{c}] IS NULL;\n')
            f.write(f'ALTER TABLE dbo.{t} ALTER COLUMN [{c}] bit NOT NULL;\n')
            f.write(f"IF NOT EXISTS (SELECT 1 FROM sys.default_constraints WHERE parent_object_id = OBJECT_ID('dbo.{t}') AND col_name(parent_object_id, parent_column_id) = '{c}')\n")
            f.write(f'    ALTER TABLE dbo.{t} ADD CONSTRAINT DF_{t}_{c} DEFAULT 0 FOR [{c}];\n\n')

with open(r'receta\ECF_DATABASE_CHANGELOG.md', 'a', encoding='utf-8') as f:
    f.write('| 006 | `006_Fix_Bit_Columns.sql` | DATOS | Correccion de campos bit que debian ser NOT NULL con DEFAULT 0 |\n')
