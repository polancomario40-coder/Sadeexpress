# Control de Cambios: Instalador ECF

| Orden | Archivo | Tipo | Descripción |
|---|---|---|---|
| 001 | `001_Nuevas_Tablas_ECF.sql` | TABLAS | Creación de tablas de log y estado ECF |
| 002 | `002_Nuevos_Campos_ECF.sql` | COLUMNAS | Inyección de campos TrackId, Estado, Firmas en tablas maestras |
| 003 | `003_Nuevos_SPs/` | PROCEDURES | Creación de 31 SPs exclusivos del proceso ECF |
| 004 | `004_SPs_Modificados/` | PROCEDURES | Actualización de 326 SPs estándar para integrar la lógica ECF |
| 006 | `006_Fix_Bit_Columns.sql` | DATOS | Correccion de campos bit que debian ser NOT NULL con DEFAULT 0 |
| 007 | `007_Fix_ECF_Defaults.sql` | DATOS | Correccion estricta de constraints DEFAULT y NOT NULL para campos de estado ECF |
| 009 | `009_Nuevas_Funciones.sql` | ESTRUCTURA | Creacion de 9 funciones faltantes en HyL (LimpiarRnc, ecf_buildQR, etc) |
| 010 | `010_Nuevas_Vistas.sql` | ESTRUCTURA | Creacion de 0 vistas faltantes en HyL |
| 011 | 011_Fix_UConfiguracion.sql | DATOS | Sincroniza el ID UConfiguracion con el de EcfWorker usando el RNC de la empresa |
| 012 | `012_Secuencias_Prueba_ECF.sql` | DATOS (TEST) | Insercion de secuencias 1-5 para tipos Serie E para pruebas piloto |
| 013 | `013_Entidades_Genericas_ECF.sql` | DATOS | Creacion de Cliente y Suplidor Genéricos ECF para simplificar pruebas y contingencias |
| 014 | `014_Tipos_Clientes_ECF.sql` | DATOS | Creacion de Tipos de Clientes para ECF (31, 32, 44, 45) |
