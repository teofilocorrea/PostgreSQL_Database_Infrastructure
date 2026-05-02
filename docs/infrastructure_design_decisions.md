# Decisiones de diseño de infraestructura

## 📌 Contexto

Este documento describe las decisiones tomadas durante la construcción de la infraestructura base del proyecto, incluyendo la definición de base de datos, esquemas y estructura de scripts.

---

## 🧠 Decisión 1: Uso de una base de datos dedicada

**Decisión:**  
Se creó una base de datos independiente para el proyecto.

**Motivo:**  
Permitir aislamiento del entorno, evitar conflictos con otros proyectos y facilitar la gestión del ciclo de vida del sistema.

---

## 🧠 Decisión 2: Organización por esquemas

**Decisión:**  
Se definieron los siguientes esquemas:

- stg
- bronze
- silver
- gold
- governance

**Motivo:**  
Separar responsabilidades dentro del pipeline de datos y mejorar la trazabilidad del flujo de información.

---

## 🧠 Decisión 3: Uso de scripts SQL versionados

**Decisión:**  
La infraestructura se define mediante scripts SQL organizados por orden de ejecución.

**Motivo:**  
Permitir reproducibilidad del entorno y control de cambios mediante Git.

---

## 🧠 Decisión 4: Scripts idempotentes

**Decisión:**  
Se implementaron versiones seguras de los scripts (`IF NOT EXISTS`).

**Motivo:**  
Evitar errores en ejecuciones repetidas y permitir despliegues controlados.

---

## 🧠 Decisión 5: Separación de validación

**Decisión:**  
Se creó un script específico para validar la infraestructura (`05_validate_setup.sql`).

**Motivo:**  
Permitir verificación rápida del estado del entorno y asegurar consistencia tras la ejecución.

---

## 📌 Conclusión

Las decisiones adoptadas buscan construir una base sólida, reutilizable y alineada con buenas prácticas de ingeniería de datos, priorizando la claridad, trazabilidad y control del entorno.