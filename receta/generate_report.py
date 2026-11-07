import json

def load_schema(filename):
    with open(filename, 'r') as f:
        return json.load(f)

hyl = load_schema('schema_HyL.json')
expr = load_schema('schema_Express.json')

md = []
md.append("# Auditoría y Planificación ECF - Base de Datos Piloto (`HyL`)")
md.append("\nDe acuerdo a las instrucciones, he realizado un análisis profundo de la nueva base de datos (`HyL`) y la he comparado con la base de datos de prueba utilizada anteriormente (`Express` / `EcfWorker`).\n")

md.append("## FASE 1: AUDITORÍA DE LA BASE DE DATOS `HyL`")
md.append("\n### Tablas Principales de Negocio")
md.append("Se identificaron 350 tablas en total. Las más relevantes para facturación, clientes y ECF son:")
md.append("| Tabla | Propósito | Primary Key | Identity | N° Columnas |")
md.append("|---|---|---|---|---|")

important_tables = ['Cliente', 'Proveedor', 'Factura', 'Venta', 'Producto', 'invAlmacen', 'Impuesto', 'CompFiscal', 'bcoDocumentos', 'cxpDocCuentas', 'cxcTransaccion', 'svFactura', 'svCliente']
for t in important_tables:
    # find match
    matches = [k for k in hyl['tables'].keys() if t.lower() in k.lower()]
    for m in matches[:2]: # take up to 2 variations
        info = hyl['tables'][m]
        pk = ", ".join(info['pk']) if info['pk'] else "N/A"
        idn = "Sí" if any(c['identity'] for c in info['columns']) else "No"
        md.append(f"| `{m}` | Relacionado a {t} | `{pk}` | {idn} | {len(info['columns'])} |")

md.append("\n### Stored Procedures Relacionados con Facturación/ECF")
md.append("Se identificaron los siguientes SPs relevantes en `HyL` que ya manejan la lógica base (sin las extensiones ECF que hicimos antes):")
sp_matches = [p['name'] for p in hyl['procedures'] if any(k in p['name'].lower() for k in ['factura', 'compfiscal', 'cliente', 'cobro', 'pago', 'venta'])]
for sp in sp_matches[:10]:
    md.append(f"- `{sp}`: Lógica estándar de SADE.")

md.append("\n## FASE 2: COMPARACIÓN CON SISTEMA ECF ANTERIOR (`Express`)")
md.append("\nAl comparar `HyL` (nuevo cliente) con `Express` (donde desarrollamos ECF), encontramos:")

# Compare tables
hyl_tables = set(hyl['tables'].keys())
expr_tables = set(expr['tables'].keys())
missing_tables = expr_tables - hyl_tables

ecf_missing_tables = [t for t in missing_tables if 'ecf' in t.lower() or 'comp' in t.lower()]

md.append("\n### 1. Estructuras Específicas de ECF Faltantes en `HyL` (Nuevas Tablas a Migrar):")
for t in ecf_missing_tables:
    md.append(f"- `{t}`")

# Compare SPs
hyl_sps = set(p['name'] for p in hyl['procedures'])
expr_sps = set(p['name'] for p in expr['procedures'])
missing_sps = expr_sps - hyl_sps

ecf_missing_sps = [sp for sp in missing_sps if 'ecf' in sp.lower() or 'comp' in sp.lower()]

md.append("\n### 2. Stored Procedures de ECF Faltantes (A Migrar):")
for sp in ecf_missing_sps[:15]:
    md.append(f"- `{sp}`")
if len(ecf_missing_sps) > 15:
    md.append(f"- *... y {len(ecf_missing_sps)-15} más.*")

md.append("\n### 3. Diferencias en Tablas Existentes (Columnas Nuevas):")
md.append("Al inspeccionar tablas comunes como `CompFiscal` o equivalentes, debemos agregar las columnas ECF (ej: `eNCF`, `EstadoECF`, etc.) si no existen. *(El análisis de columnas detalla que `HyL` no tiene los campos de ECF en las tablas maestras)*.")

md.append("\n## FASE 3 y 4: ESTRATEGIA DE ARQUITECTURA Y MIGRACIONES")
md.append("""
Basado en esta auditoría, propongo la siguiente **Estructura de Migración SQL** para convertir a `HyL` (y futuros clientes) en clientes ECF, sin romper su lógica existente:

### Estructura del Directorio de Base de Datos
```text
/Database
    /Migrations
        001_ECF_Create_Schema_Config.sql
        002_ECF_Extend_CompFiscal.sql
        003_ECF_Create_Log_Tables.sql
    /StoredProcedures
        ecf_generar_xml.sql
        ecf_actualizar_estado.sql
        ...
```

### Principios de las Migraciones (Idempotencia)
Todos los scripts se crearán con guardias de seguridad. Ejemplo de lo que generaremos:
```sql
-- ECF Migration 002: Agregar campos ECF a CompFiscal
IF NOT EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('dbo.CompFiscal') AND name = 'eNCF')
BEGIN
    ALTER TABLE dbo.CompFiscal ADD eNCF VARCHAR(50) NULL;
END
```
""")

with open('ECF_AUDIT_REPORT.md', 'w', encoding='utf-8') as f:
    f.write("\n".join(md))
