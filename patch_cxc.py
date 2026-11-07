import os
import re

express_dir = r"C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS"
standard_dir = r"C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADESTANDAR"

# Paths
pas_express = os.path.join(express_dir, "ventas", "uCXC.pas")
dfm_express = os.path.join(express_dir, "ventas", "uCXC.dfm")

pas_std = os.path.join(standard_dir, "Ventas", "CXC", "uCXC.pas")
dfm_std = os.path.join(standard_dir, "Ventas", "CXC", "uCXC.dfm")

# Read files
with open(pas_express, "r", encoding="latin-1") as f:
    pas_exp_content = f.read()

with open(dfm_express, "r", encoding="latin-1") as f:
    dfm_exp_content = f.read()
    
print("Files loaded.")
