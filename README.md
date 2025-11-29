# Proyecto para el módulo de Data Management and Business Intelligence

Este proyecto tiene como objetivo desarrollar un sistema de gestión de datos y análisis empresarial utilizando técnicas avanzadas de Business Intelligence (BI).

## Integrantes

- Adrian Fernandez
- Jose Carlos Camacho Salazar
- Américo Itamar Echalar Guzmán
- Christian Calixto Flores Espinoza
- Jose Antonio Gutierrez Romero


# **Resumen del Trabajo Realizado para el Data Warehouse de Pubs**

## 1 Proyecto OLTP (`Pubs.OLTP`)
- Se **crearon las tablas OLTP** originales: `titles`, `authors`, `publishers`, `stores`, `sales` y `titleauthor`.  
- Se desarrollaron **Stored Procedures para el OLTP** que permiten:
  - Obtener el `rowversion` de cada tabla.  
  - Obtener el `rowversion` de joins entre tablas, facilitando la identificación de cambios para ETL incremental.  

---

## 2️ Identificación de Casos de Uso para el DW
Se definieron los objetivos principales del Data Warehouse, basados en el análisis de negocio:  
1. **Reporte de ventas por tienda (`store`)**  
2. **Reporte de ventas por autor (`author`)**  

Estos casos de uso guiaron la selección de dimensiones y hechos necesarios.

---

## 3️ Proyecto DW (`Pubs.DW`)

### a) Tablas de Staging
- Se crearon las **tablas de staging** replicando las estructuras de OLTP:  
  - `stg_titles`  
  - `stg_authors`  
  - `stg_publishers`  
  - `stg_stores`  
  - `stg_sales`  
  - `stg_titleauthor`  
- Las tablas **no contienen surrogate keys ni constraints**, solo sirven para limpiar y preparar datos antes de cargar las DIM y FACT.  

### b) Tablas de Dimensiones y Fact
- Se crearon las **dimensiones** con **surrogate keys (`<dim>_sk`) autoincrementales**:  
  - `DimAuthor`  
  - `DimTitle`  
  - `DimPublisher`  
  - `DimStore`  
  - `DimDate`  
- Se creó la **tabla de hechos**: `FactSales`, con referencias a las dimensiones mediante SK y medidas (`quantity`, `unit_price`, `total_amount`).  
- Se creó el **BridgeTitleAuthor** para modelar la relación N:N libro–autor.  

### c) Scripts adicionales en DW
- Se creó un **script para rellenar datos en `DimDate`**, generando todas las fechas del rango y asignando `Date_SK` como surrogate key.  
- Se creó un **script para poblar la tabla `PackageConfig`**, utilizada para llevar seguimiento de los últimos `rowversion` enviados al DW.  
- Se creó un **script de patch para `DimDate`**, que ajusta valores por defecto y asegura consistencia en columnas necesarias.  

---

## 4️ Stored Procedures para Merge de ETL
- Se desarrollaron **SPs para fusionar datos de staging a las DIM**:  
  - `DW_MergeDimAuthors`  
  - `DW_MergeDimTitles`  
  - `DW_MergeDimPublishers`  
  - `DW_MergeDimStores`  
- Se desarrolló **SP para actualizar el BridgeTitleAuthor**, resolviendo los SK de DimTitle y DimAuthor.  
- Se desarrolló el **SP de DimDate** (`DW_MergeDimDate`) con generación completa de fechas y columnas correctas.  

> Nota: Todos los SPs están diseñados siguiendo el estilo **simple de actualización directa**, con joins por **natural keys**, manteniendo consistencia de datos y preparación para ETL.

---

## 5️ Verificación y Validación
- Los **schemas de todas las tablas** han sido verificados y revisados.  
- El **código SQL** se encuentra probado en Visual Studio con los plugins de SQL.  
- Se confirmaron **relaciones, nombres de columnas y tipos de datos** para garantizar compatibilidad entre staging, dimensiones y hechos.  

---

## 6️ Próximos Pasos
1. **Crear los ETL** que:  
   - Extraigan los datos desde OLTP hacia staging.  
   - Transformen y limpien datos en staging.  
   - Carguen DIM y FACT usando los SPs desarrollados.  
2. Una vez completado el ETL, se creará el **cubo OLAP**, permitiendo:  
   - Reportes de ventas por tienda.  
   - Reportes de ventas por autor.  
   - Análisis multidimensional según fecha, título y publisher.  