import json

def load_schema(filename):
    with open(filename, 'r') as f:
        return json.load(f)

hyl_schema = load_schema('schema_HyL.json')
express_schema = load_schema('schema_Express.json')

keywords = ['client', 'prov', 'fact', 'ven', 'prod', 'inv', 'impuest', 'pago', 'secuencia', 'comp', 'user', 'usuari', 'caja', 'bco', 'cxp', 'cxc', 'doc']

relevant_tables_hyl = {}
for table_name, table_info in hyl_schema['tables'].items():
    name_lower = table_name.lower()
    if any(k in name_lower for k in keywords):
        relevant_tables_hyl[table_name] = table_info

# Build markdown
md = ["# ECF Audit Report - Base de Datos Piloto (HyL)", ""]

md.append("## 1. Inventario de Estructuras Relevantes (HyL)")

md.append("### Tablas Principales")
md.append("| Nombre | Columnas Clave | PK | Relaciones | Identity |")
md.append("|--------|----------------|----|------------|----------|")

for t_name in sorted(relevant_tables_hyl.keys()):
    t_info = relevant_tables_hyl[t_name]
    pk = ", ".join(t_info['pk']) if t_info['pk'] else "N/A"
    
    # relevant columns
    rel_cols = [c['name'] for c in t_info['columns'] if any(k in c['name'].lower() for k in ['id', 'cod', 'monto', 'total', 'fecha', 'estado', 'rnc', 'cedula'])]
    cols_str = ", ".join(rel_cols[:5]) + ("..." if len(rel_cols) > 5 else "")
    
    fk = len(t_info['fk'])
    identity = "Sí" if any(c['identity'] for c in t_info['columns']) else "No"
    
    # Only add if it seems important (like 100+ tables might be too long)
    if len(t_name) > 0: # just to keep it simple, we can filter more if needed
        pass
    
# Let's count them first.
print(f"Total tables: {len(hyl_schema['tables'])}")
print(f"Relevant tables: {len(relevant_tables_hyl)}")
