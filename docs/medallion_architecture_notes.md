# Preparación para arquitectura Medallion

## Objetivo

Dejar preparada la infraestructura base para soportar una arquitectura por capas: `stg`, `bronze`, `silver` y `gold`.

## Esquemas creados

- `stg`: ingesta inicial o staging
- `bronze`: datos crudos o raw
- `silver`: datos limpios y estandarizados
- `gold`: datos listos para análisis o consumo BI
- `governance`: control, validación y metadata

## Alcance actual

En este proyecto solo se prepara la infraestructura lógica mediante esquemas.

No se crean tablas en esta etapa.

## Siguiente fase

La creación de tablas, carga de datos y transformaciones se trabajará en un segundo proyecto enfocado en modelado e ingesta de datos.