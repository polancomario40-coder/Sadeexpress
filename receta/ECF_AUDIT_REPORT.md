# Auditoría y Planificación ECF - Base de Datos Piloto (`HyL`)

De acuerdo a las instrucciones, he realizado un análisis profundo de la nueva base de datos (`HyL`) y la he comparado con la base de datos de prueba utilizada anteriormente (`Express` / `EcfWorker`).

## FASE 1: AUDITORÍA DE LA BASE DE DATOS `HyL`

### Tablas Principales de Negocio
Se identificaron 350 tablas en total. Las más relevantes para facturación, clientes y ECF son:
| Tabla | Propósito | Primary Key | Identity | N° Columnas |
|---|---|---|---|---|
| `Cliente` | Relacionado a Cliente | `idCliente` | No | 43 |
| `ClienteCondicion` | Relacionado a Cliente | `IdCondicion` | No | 3 |
| `Factura` | Relacionado a Factura | `idFactura` | No | 53 |
| `FacturaCobro` | Relacionado a Factura | `idFactura` | No | 8 |
| `Inventario` | Relacionado a Venta | `idInventario` | No | 4 |
| `InventarioCierre` | Relacionado a Venta | `idInventarioCierre` | No | 3 |
| `Invproductos` | Relacionado a Producto | `N/A` | Sí | 15 |
| `Producto` | Relacionado a Producto | `idProducto` | No | 45 |
| `invAlmacenLineaCC` | Relacionado a invAlmacen | `idLinea, idAlmacen` | No | 4 |
| `cxpDocImpuestos` | Relacionado a Impuesto | `idDocumento, TipoImpuesto` | No | 3 |
| `ocTiposImpuestos` | Relacionado a Impuesto | `TipoImpuesto` | Sí | 9 |
| `CompFiscal` | Relacionado a CompFiscal | `Terminal, Serie, Division, Sucursal, Caja, TipoNCF` | No | 10 |
| `CompFiscalSecuencia` | Relacionado a CompFiscal | `idCompFiscalSecuencia` | No | 8 |
| `bcoDocumentos` | Relacionado a bcoDocumentos | `GUIDDocumento` | Sí | 18 |
| `bcoDocumentosDtl` | Relacionado a bcoDocumentos | `IdDocumentosDtl` | Sí | 12 |
| `cxpDocCuentas` | Relacionado a cxpDocCuentas | `LineaNum, idDocumento` | Sí | 11 |
| `svClienteContacto` | Relacionado a svCliente | `idClienteContacto` | No | 7 |

### Stored Procedures Relacionados con Facturación/ECF
Se identificaron los siguientes SPs relevantes en `HyL` que ya manejan la lógica base (sin las extensiones ECF que hicimos antes):
- `biVentasDetalladas`: Lógica estándar de SADE.
- `svFactura2ProMov`: Lógica estándar de SADE.
- `svrsFacturaCobro`: Lógica estándar de SADE.
- `rsCompFiscal`: Lógica estándar de SADE.
- `svrsFacturaPag`: Lógica estándar de SADE.
- `biVentasVendedorPivot`: Lógica estándar de SADE.
- `NomAplicacionPago`: Lógica estándar de SADE.
- `ClientesnoCompran`: Lógica estándar de SADE.
- `ClienteAct`: Lógica estándar de SADE.
- `eduRsCliente`: Lógica estándar de SADE.

## FASE 2: COMPARACIÓN CON SISTEMA ECF ANTERIOR (`Express`)

Al comparar `HyL` (nuevo cliente) con `Express` (donde desarrollamos ECF), encontramos:

### 1. Estructuras Específicas de ECF Faltantes en `HyL` (Nuevas Tablas a Migrar):
- `ecf_compfiscal_log`
- `ecf_status_envio`

### 2. Stored Procedures de ECF Faltantes (A Migrar):
- `ecf_cxp_cambiarEstado`
- `ecf_devolucion_cambiarEstado`
- `ecf_comprobante_markSent`
- `svCompFiscal2018`
- `ecf_desglocePago_select`
- `ecf_gm_validate`
- `ecf_marcar_gm_Enviado`
- `ecf_cxp_validate`
- `ecf_logEnvio`
- `FindOrdComp2fact`
- `ecf_cxp_select`
- `ecf_marcar_cxp_Enviado`
- `ecf_emisor_select`
- `ecf_factura_cambiarEstado`
- `ecf_gm_cambiarEstado`
- *... y 16 más.*

### 3. Diferencias en Tablas Existentes (Columnas Nuevas):
Al inspeccionar tablas comunes como `CompFiscal` o equivalentes, debemos agregar las columnas ECF (ej: `eNCF`, `EstadoECF`, etc.) si no existen. *(El análisis de columnas detalla que `HyL` no tiene los campos de ECF en las tablas maestras)*.

## FASE 3 y 4: ESTRATEGIA DE ARQUITECTURA Y MIGRACIONES

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
