import pyodbc

conn_exp = pyodbc.connect('DRIVER={SQL Server};SERVER=108.181.198.178,1438;UID=sa;PWD=P@$$w0rd;DATABASE=Express')
conn_hyl = pyodbc.connect('DRIVER={SQL Server};SERVER=108.181.198.178,1438;UID=sa;PWD=P@$$w0rd;DATABASE=HyL')

hyl_views = {row[0].lower() for row in conn_hyl.cursor().execute("SELECT name FROM sys.objects WHERE type = 'V'").fetchall()}

missing = []
for row in conn_exp.cursor().execute("SELECT o.name, m.definition FROM sys.objects o JOIN sys.sql_modules m ON o.object_id = m.object_id WHERE o.type = 'V'").fetchall():
    if row[0].lower() not in hyl_views:
        missing.append((row[0], row[1]))

print('Missing views:', [m[0] for m in missing])

with open(r'receta\010_Nuevas_Vistas.sql', 'w', encoding='utf-8') as f:
    for name, code in missing:
        f.write(code + '\nGO\n\n')

with open(r'receta\ECF_DATABASE_CHANGELOG.md', 'a', encoding='utf-8') as f:
    f.write(f'| 010 | `010_Nuevas_Vistas.sql` | ESTRUCTURA | Creacion de {len(missing)} vistas faltantes en HyL |\n')

