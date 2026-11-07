import json
import os

def load_schema(filename):
    with open(filename, 'r') as f:
        return json.load(f)

hyl = load_schema('schema_HyL.json')
expr = load_schema('schema_Express.json')

receta_dir = r"C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\receta"
os.makedirs(receta_dir, exist_ok=True)

# 1. New Tables
hyl_tables = set(hyl['tables'].keys())
expr_tables = set(expr['tables'].keys())
new_tables = [t for t in expr_tables - hyl_tables if 'ecf' in t.lower() or 'comp' in t.lower()]

def get_sql_type(col):
    t = col['type']
    l = col['length']
    if t in ('varchar', 'char', 'varbinary'):
        length = 'MAX' if l == -1 else str(l)
        return f"{t}({length})"
    elif t in ('nvarchar', 'nchar'):
        length = 'MAX' if l == -1 else str(l // 2)
        return f"{t}({length})"
    return t

with open(os.path.join(receta_dir, '001_Nuevas_Tablas_ECF.sql'), 'w', encoding='utf-8') as f:
    f.write("-- =============================================\n")
    f.write("-- MIGRATION 001: Crear Tablas de Control ECF\n")
    f.write("-- =============================================\n\n")
    for t_name in new_tables:
        f.write(f"IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = '{t_name}')\nBEGIN\n")
        f.write(f"    CREATE TABLE dbo.{t_name} (\n")
        
        cols = expr['tables'][t_name]['columns']
        col_defs = []
        for c in cols:
            ctype = get_sql_type(c)
            null_str = "NULL" if c['nullable'] else "NOT NULL"
            ident = " IDENTITY(1,1)" if c['identity'] else ""
            col_defs.append(f"        [{c['name']}] {ctype} {ident} {null_str}")
        
        pk = expr['tables'][t_name]['pk']
        if pk:
            pk_cols = ", ".join(f"[{c}]" for c in pk)
            col_defs.append(f"        CONSTRAINT [PK_{t_name}] PRIMARY KEY ({pk_cols})")
            
        f.write(",\n".join(col_defs) + "\n")
        f.write("    );\n")
        f.write("    PRINT 'Tabla creada: " + t_name + "';\n")
        f.write("END\nELSE\nBEGIN\n    PRINT 'Tabla ya existe: " + t_name + "';\nEND\nGO\n\n")

# 2. Modified Tables
common_tables = hyl_tables.intersection(expr_tables)
modified_tables = {}
for t in common_tables:
    hyl_cols = {c['name']: c for c in hyl['tables'][t]['columns']}
    expr_cols = {c['name']: c for c in expr['tables'][t]['columns']}
    new_cols = [c_name for c_name in expr_cols if c_name not in hyl_cols]
    
    # Filter for ECF relevant
    ecf_cols = []
    for c_name in new_cols:
        col = expr_cols[c_name]
        if any(keyword in c_name.lower() for keyword in ['ecf', 'ncf', 'estado', 'rnc', 'codigo', 'xml', 'fecha', 'pend', 'track', 'error']) or t.lower() in ['factura', 'compfiscal', 'cliente', 'proveedor', 'cxc', 'devolucion', 'cxpdocumentos', 'bcogastosmenores', 'configuracion']:
            ecf_cols.append(col)
            
    if ecf_cols:
        modified_tables[t] = ecf_cols

with open(os.path.join(receta_dir, '002_Nuevos_Campos_ECF.sql'), 'w', encoding='utf-8') as f:
    f.write("-- =============================================\n")
    f.write("-- MIGRATION 002: Agregar Campos ECF a Tablas Existentes\n")
    f.write("-- =============================================\n\n")
    for t_name, cols in modified_tables.items():
        for c in cols:
            f.write(f"IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.{t_name}') AND name = '{c['name']}')\nBEGIN\n")
            ctype = get_sql_type(c)
            null_str = "NULL" if c['nullable'] else "NOT NULL"
            # If adding NOT NULL to existing table, it might fail if table has data. Usually new columns must be NULLable or have a DEFAULT.
            # We will force NULL for new columns to prevent deployment errors on populated tables, unless we know the default.
            f.write(f"    ALTER TABLE dbo.{t_name} ADD [{c['name']}] {ctype} NULL;\n")
            f.write(f"    PRINT 'Columna agregada: {t_name}.{c['name']}';\n")
            f.write("END\nGO\n\n")

# 3. & 4. Stored Procedures
hyl_sps = {p['name']: p['definition'] for p in hyl['procedures']}
expr_sps = {p['name']: p['definition'] for p in expr['procedures']}

new_sps = [name for name in expr_sps.keys() if name not in hyl_sps]
ecf_new_sps = [name for name in new_sps if 'ecf' in name.lower() or 'comp' in name.lower()]

modified_sps = []
for name in hyl_sps.keys():
    if name in expr_sps and hyl_sps[name] != expr_sps[name]:
        if 'factura' in name.lower() or 'comp' in name.lower() or 'cliente' in name.lower() or 'cxc' in name.lower() or 'cxp' in name.lower() or 'venta' in name.lower() or 'cobro' in name.lower():
            modified_sps.append(name)

sp_new_dir = os.path.join(receta_dir, '003_Nuevos_SPs')
os.makedirs(sp_new_dir, exist_ok=True)
for sp in ecf_new_sps:
    # use CREATE OR ALTER if possible, or just dump definition
    with open(os.path.join(sp_new_dir, f"{sp}.sql"), 'w', encoding='utf-8') as f:
        # replace CREATE PROCEDURE with CREATE OR ALTER PROCEDURE
        code = expr_sps[sp]
        code = code.replace("CREATE PROCEDURE", "CREATE OR ALTER PROCEDURE")
        code = code.replace("CREATE PROC ", "CREATE OR ALTER PROC ")
        f.write(code)
        f.write("\nGO\n")

sp_mod_dir = os.path.join(receta_dir, '004_SPs_Modificados')
os.makedirs(sp_mod_dir, exist_ok=True)
for sp in modified_sps:
    with open(os.path.join(sp_mod_dir, f"{sp}.sql"), 'w', encoding='utf-8') as f:
        code = expr_sps[sp]
        code = code.replace("CREATE PROCEDURE", "CREATE OR ALTER PROCEDURE")
        code = code.replace("CREATE PROC ", "CREATE OR ALTER PROC ")
        f.write(code)
        f.write("\nGO\n")

# Write CHANGELOG
with open(os.path.join(receta_dir, 'ECF_DATABASE_CHANGELOG.md'), 'w', encoding='utf-8') as f:
    f.write("# Control de Cambios: Instalador ECF\n\n")
    f.write("| Orden | Archivo | Tipo | Descripción |\n")
    f.write("|---|---|---|---|\n")
    f.write("| 001 | `001_Nuevas_Tablas_ECF.sql` | TABLAS | Creación de tablas de log y estado ECF |\n")
    f.write("| 002 | `002_Nuevos_Campos_ECF.sql` | COLUMNAS | Inyección de campos TrackId, Estado, Firmas en tablas maestras |\n")
    f.write(f"| 003 | `003_Nuevos_SPs/` | PROCEDURES | Creación de {len(ecf_new_sps)} SPs exclusivos del proceso ECF |\n")
    f.write(f"| 004 | `004_SPs_Modificados/` | PROCEDURES | Actualización de {len(modified_sps)} SPs estándar para integrar la lógica ECF |\n")

print("Receta generada con éxito.")
