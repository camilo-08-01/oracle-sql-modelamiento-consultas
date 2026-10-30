# Oracle SQL: modelamiento y consultas

Scripts de **modelamiento relacional** y **consultas SQL** en Oracle, desarrollados en los ramos de Modelamiento de Base de Datos y Consulta de Datos del programa Analista Programador (IPLACEX).

## Contenido

### `modelamiento/`
- `ddl_modelo_relacional.sql`: creación de un modelo relacional completo (21 tablas y una secuencia) con claves primarias, claves foráneas y restricciones `NOT NULL`.

### `consultas/`
| Script | Temas |
| --- | --- |
| `01_funciones_de_fila_y_formato.sql` | Cálculos de reajuste, `ROUND`, `INITCAP`, `TO_CHAR` con formatos de fecha y moneda, `MONTHS_BETWEEN`, concatenación. |
| `02_joins_subconsultas_y_vistas.sql` | `JOIN` entre varias tablas, subconsultas, `CREATE VIEW`, funciones de grupo, `LEFT OUTER JOIN` y `CASE`. |
| `03_agrupaciones_case_y_vistas.sql` | `GROUP BY`, `COUNT`/`SUM`, `CASE` para clasificar, `EXTRACT` y vistas. |

Las consultas de las evaluaciones 2 y 3 usan el esquema de ejemplo **HR** de Oracle (`employees`, `departments`, `jobs`); el tercero usa un esquema de reparaciones de vehículos entregado en el ramo (no incluido).

## Cómo ejecutarlos

Requieren Oracle Database (por ejemplo Oracle XE 18c) y un cliente como SQL Developer. Para las consultas, habilita el esquema HR o carga el esquema del ejercicio.
