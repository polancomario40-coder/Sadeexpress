import json

def load_schema(filename):
    with open(filename, 'r') as f:
        return json.load(f)

schemas = {
    "HyL": load_schema('schema_HyL.json'),
    "EcfWorker": load_schema('schema_EcfWorker.json'),
    "Express": load_schema('schema_Express.json')
}

for name, data in schemas.items():
    ecf_tables = [t for t in data['tables'] if 'ecf' in t.lower() or 'comprobante' in t.lower() or 'fiscal' in t.lower()]
    ecf_procs = [p['name'] for p in data['procedures'] if 'ecf' in p['name'].lower() or 'comprobante' in p['name'].lower() or 'fiscal' in p['name'].lower()]
    print(f"Database: {name}")
    print(f"  ECF/Fiscal Tables: {len(ecf_tables)} ({', '.join(ecf_tables[:5])}...)")
    print(f"  ECF/Fiscal Procs: {len(ecf_procs)} ({', '.join(ecf_procs[:5])}...)")
