import pyodbc

conn_exp = pyodbc.connect('DRIVER={SQL Server};SERVER=108.181.198.178,1438;UID=sa;PWD=P@$$w0rd;DATABASE=Express')
conn_hyl = pyodbc.connect('DRIVER={SQL Server};SERVER=108.181.198.178,1438;UID=sa;PWD=P@$$w0rd;DATABASE=HyL')

hyl_funcs = {row[0].lower() for row in conn_hyl.cursor().execute("SELECT name FROM sys.objects WHERE type IN ('FN', 'IF', 'TF')").fetchall()}

missing_funcs = []
for row in conn_exp.cursor().execute("SELECT o.name, m.definition FROM sys.objects o JOIN sys.sql_modules m ON o.object_id = m.object_id WHERE o.type IN ('FN', 'IF', 'TF')").fetchall():
    if row[0].lower() not in hyl_funcs:
        missing_funcs.append((row[0], row[1]))

with open(r'receta\009_Nuevas_Funciones.sql', 'w', encoding='utf-8') as f:
    for name, code in missing_funcs:
        # Avoid CREATE OR ALTER for functions if it's SQL Server 2012, but this is probably 2016+ since we used it for SPs.
        # Actually it's an INSERT, so just CREATE is fine since it's missing in HyL.
        f.write(code + '\nGO\n\n')

with open(r'receta\ECF_DATABASE_CHANGELOG.md', 'a', encoding='utf-8') as f:
    f.write(f'| 009 | `009_Nuevas_Funciones.sql` | ESTRUCTURA | Creacion de {len(missing_funcs)} funciones faltantes en HyL (LimpiarRnc, ecf_buildQR, etc) |\n')

print(f'Extracted {len(missing_funcs)} missing functions.')
