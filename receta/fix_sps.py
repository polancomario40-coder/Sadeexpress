import os
import re

for folder in ['003_Nuevos_SPs', '004_SPs_Modificados']:
    path = os.path.join('receta', folder)
    if not os.path.exists(path): continue
    for f_name in os.listdir(path):
        if not f_name.endswith('.sql'): continue
        f_path = os.path.join(path, f_name)
        with open(f_path, 'r', encoding='utf-8') as f:
            code = f.read()
        
        # fix the case insensitive CREATE PROCEDURE
        code = re.sub(r'(?i)\bCREATE\s+PROCEDURE\b', 'CREATE OR ALTER PROCEDURE', code)
        code = re.sub(r'(?i)\bCREATE\s+PROC\b', 'CREATE OR ALTER PROC', code)
        
        with open(f_path, 'w', encoding='utf-8') as f:
            f.write(code)

print("SPs fixed.")
