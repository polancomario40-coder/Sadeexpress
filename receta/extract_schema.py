import pyodbc
import json

conn_str = "DRIVER={ODBC Driver 17 for SQL Server};SERVER=108.181.198.178,1438;DATABASE=Express;UID=sa;PWD=P@$$w0rd"

try:
    conn = pyodbc.connect(conn_str)
except Exception as e:
    conn_str = "DRIVER={SQL Server};SERVER=108.181.198.178,1438;DATABASE=Express;UID=sa;PWD=P@$$w0rd"
    conn = pyodbc.connect(conn_str)

cursor = conn.cursor()

data = {
    "tables": {},
    "procedures": [],
    "functions": [],
    "views": [],
    "triggers": [],
    "indexes": []
}

# Tables and columns
cursor.execute("""
SELECT 
    t.name AS TableName,
    c.name AS ColumnName,
    ty.name AS DataType,
    c.max_length,
    c.is_nullable,
    c.is_identity
FROM sys.tables t
INNER JOIN sys.columns c ON t.object_id = c.object_id
INNER JOIN sys.types ty ON c.user_type_id = ty.user_type_id
WHERE t.is_ms_shipped = 0
ORDER BY t.name, c.column_id
""")
for row in cursor.fetchall():
    table = row.TableName
    if table not in data["tables"]:
        data["tables"][table] = {"columns": [], "pk": [], "fk": []}
    data["tables"][table]["columns"].append({
        "name": row.ColumnName,
        "type": row.DataType,
        "length": row.max_length,
        "nullable": row.is_nullable,
        "identity": row.is_identity
    })

# Primary Keys
cursor.execute("""
SELECT 
    t.name AS TableName,
    c.name AS ColumnName
FROM sys.indexes i
INNER JOIN sys.index_columns ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id
INNER JOIN sys.columns c ON ic.object_id = c.object_id AND c.column_id = ic.column_id
INNER JOIN sys.tables t ON i.object_id = t.object_id
WHERE i.is_primary_key = 1
""")
for row in cursor.fetchall():
    if row.TableName in data["tables"]:
        data["tables"][row.TableName]["pk"].append(row.ColumnName)

# Foreign Keys
cursor.execute("""
SELECT 
    tp.name AS ParentTable,
    cp.name AS ParentColumn,
    tr.name AS ReferencedTable,
    cr.name AS ReferencedColumn
FROM sys.foreign_keys fk
INNER JOIN sys.foreign_key_columns fkc ON fk.object_id = fkc.constraint_object_id
INNER JOIN sys.tables tp ON fkc.parent_object_id = tp.object_id
INNER JOIN sys.columns cp ON fkc.parent_object_id = cp.object_id AND fkc.parent_column_id = cp.column_id
INNER JOIN sys.tables tr ON fkc.referenced_object_id = tr.object_id
INNER JOIN sys.columns cr ON fkc.referenced_object_id = cr.object_id AND fkc.referenced_column_id = cr.column_id
""")
for row in cursor.fetchall():
    if row.ParentTable in data["tables"]:
        data["tables"][row.ParentTable]["fk"].append({
            "column": row.ParentColumn,
            "ref_table": row.ReferencedTable,
            "ref_column": row.ReferencedColumn
        })

# Stored Procedures
cursor.execute("""
SELECT name, definition 
FROM sys.objects o
JOIN sys.sql_modules m ON o.object_id = m.object_id
WHERE type = 'P' AND is_ms_shipped = 0
""")
for row in cursor.fetchall():
    data["procedures"].append({"name": row.name, "definition": row.definition})

# Functions
cursor.execute("""
SELECT name, type_desc, definition 
FROM sys.objects o
JOIN sys.sql_modules m ON o.object_id = m.object_id
WHERE type IN ('FN', 'IF', 'TF') AND is_ms_shipped = 0
""")
for row in cursor.fetchall():
    data["functions"].append({"name": row.name, "type": row.type_desc, "definition": row.definition})

# Views
cursor.execute("""
SELECT name, definition 
FROM sys.objects o
JOIN sys.sql_modules m ON o.object_id = m.object_id
WHERE type = 'V' AND is_ms_shipped = 0
""")
for row in cursor.fetchall():
    data["views"].append({"name": row.name, "definition": row.definition})

# Triggers
cursor.execute("""
SELECT t.name, p.name as ParentTable, definition
FROM sys.triggers t
JOIN sys.tables p ON t.parent_id = p.object_id
JOIN sys.sql_modules m ON t.object_id = m.object_id
WHERE t.is_ms_shipped = 0
""")
for row in cursor.fetchall():
    data["triggers"].append({"name": row.name, "table": row.ParentTable, "definition": row.definition})

# Indexes
cursor.execute("""
SELECT 
    t.name AS TableName,
    i.name AS IndexName,
    i.type_desc
FROM sys.indexes i
JOIN sys.tables t ON i.object_id = t.object_id
WHERE i.is_primary_key = 0 AND i.type > 0 AND i.is_unique_constraint = 0 AND t.is_ms_shipped = 0
""")
for row in cursor.fetchall():
    data["indexes"].append({"table": row.TableName, "name": row.IndexName, "type": row.type_desc})

with open('schema_Express.json', 'w') as f:
    json.dump(data, f)

print("Schema extraction for Express completed.")
