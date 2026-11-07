import sys

path = r'C:\Users\Dell\OneDrive\Documentos\SADE\SADE work\SADEEXPRESS\SADEEXPRESS\ventas\uCXC.dfm'
with open(path, 'r', encoding='cp1252') as f:
    c = f.read()

target = "        object edTotalPend: TdxCurrencyEdit"
end_target = "        end\n      end\n    object Creditos: TTabSheet"

if target in c:
    print("Target found")
else:
    print("Target NOT found")

idx1 = c.find(target)
idx2 = c.find("    object Creditos: TTabSheet")

if idx1 != -1 and idx2 != -1:
    print("Indices:", idx1, idx2)
    # The chunk we want to replace is from idx1 to idx2
    original_chunk = c[idx1:idx2]
    
    # original chunk looks like:
    # object edTotalPend: ...
    #   ...
    # end
    # end
    
    # Let's insert the new controls BEFORE the last 'end'
    # The last 'end' in original_chunk is the one for the TabSheet
    last_end_idx = original_chunk.rfind("      end")
    
    new_controls = """
        object LabelCodSeguridad: TLabel
          Left = 380
          Top = 304
          Width = 72
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Cod. seguridad:'
          Transparent = True
        end
        object edCodSeguridad: TcxDBTextEdit
          Left = 460
          Top = 300
          Width = 100
          Anchors = [akLeft, akBottom]
          DataBinding.DataField = 'CodigoSeguridadEcf'
          DataBinding.DataSource = dsEcfStatus
          Properties.ReadOnly = True
          Style.Color = 13818837
          Style.LookAndFeel.NativeStyle = True
          TabOrder = 33
        end
        object mmoUltError: TcxDBMemo
          Left = 570
          Top = 300
          Width = 200
          Height = 40
          Anchors = [akLeft, akRight, akBottom]
          DataBinding.DataField = 'ultError'
          DataBinding.DataSource = dsEcfStatus
          Properties.ReadOnly = True
          Style.Color = 13818837
          Style.LookAndFeel.NativeStyle = True
          TabOrder = 34
        end
"""
    
    new_chunk = original_chunk[:last_end_idx] + new_controls + original_chunk[last_end_idx:]
    
    c = c[:idx1] + new_chunk + c[idx2:]
    
    with open(path, 'w', encoding='cp1252') as f:
        f.write(c)
    print("Replaced and saved!")
else:
    print("Could not find targets")

