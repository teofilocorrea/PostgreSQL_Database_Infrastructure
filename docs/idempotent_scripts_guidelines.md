# Buenas prácticas para scripts de setup idempotentes

## 📌 Objetivo

Definir las reglas y lineamientos para la construcción de scripts SQL de infraestructura que puedan ejecutarse múltiples veces sin generar errores ni inconsistencias en el sistema.

---

## 🧠 Principio de idempotencia

Un script idempotente es aquel que puede ejecutarse varias veces y siempre produce el mismo resultado, manteniendo el sistema en un estado consistente.

---

## 🧱 Lineamientos aplicados en el proyecto

### ✔ Uso de IF NOT EXISTS

Todos los objetos de base de datos (schemas, tablas, etc.) deben crearse utilizando validaciones de existencia para evitar errores en ejecuciones repetidas.

**Ejemplo:**
```sql
CREATE SCHEMA IF NOT EXISTS stg;

CREATE DATABASE IF NOT EXISTS analtics_lab_dev;