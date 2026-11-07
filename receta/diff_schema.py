import json

def load_schema(filename):
    with open(filename, 'r') as f:
        return json.load(f)

hyl = load_schema('schema_HyL.json')
expr = load_schema('schema_Express.json')

# 1. New Tables
hyl_tables = set(hyl['tables'].keys())
expr_tables = set(expr['tables'].keys())
new_tables = [t for t in expr_tables - hyl_tables if 'ecf' in t.lower() or 'comp' in t.lower()]

# 2. Modified Tables (New Columns in Express)
common_tables = hyl_tables.intersection(expr_tables)
modified_tables = {}
for t in common_tables:
    hyl_cols = {c['name'] for c in hyl['tables'][t]['columns']}
    expr_cols = {c['name'] for c in expr['tables'][t]['columns']}
    new_cols = expr_cols - hyl_cols
    # Only keep if columns sound like ECF/billing extensions or just list them
    if new_cols:
        modified_tables[t] = list(new_cols)

# 3. New/Modified Stored Procedures
hyl_sps = {p['name']: p['definition'] for p in hyl['procedures']}
expr_sps = {p['name']: p['definition'] for p in expr['procedures']}

new_sps = [name for name in expr_sps.keys() if name not in hyl_sps]
ecf_new_sps = [name for name in new_sps if 'ecf' in name.lower() or 'comp' in name.lower()]

modified_sps = []
for name in hyl_sps.keys():
    if name in expr_sps and hyl_sps[name] != expr_sps[name]:
        modified_sps.append(name)

# Let's write output
with open('diff_output.txt', 'w') as f:
    f.write("--- NEW TABLES ---\n")
    f.write("\n".join(new_tables) + "\n\n")
    
    f.write("--- MODIFIED TABLES (NEW COLUMNS) ---\n")
    for t, cols in modified_tables.items():
        if any(keyword in col.lower() for keyword in ['ecf', 'ncf', 'estado', 'rnc', 'codigo', 'xml', 'fecha'] for col in cols) or t.lower() in ['factura', 'compfiscal', 'cliente', 'proveedor']:
            f.write(f"{t}: {', '.join(cols)}\n")
    
    f.write("\n--- NEW ECF SPs ---\n")
    f.write(f"Total: {len(ecf_new_sps)}\n")
    
    f.write("\n--- MODIFIED EXISTING SPs ---\n")
    for name in modified_sps:
        if 'factura' in name.lower() or 'comp' in name.lower() or 'cliente' in name.lower():
            f.write(f"{name}\n")
