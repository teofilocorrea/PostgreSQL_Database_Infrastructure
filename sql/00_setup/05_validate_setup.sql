-- Verificar base de datos
SELECT
    datname        AS database_name,
    pg_encoding_to_char(encoding) AS encoding,
    datcollate     AS collation
FROM pg_database
WHERE datname = 'analytics_lab';

-- Verificar esquema
SELECT
    catalog_name   AS database_name,
    schema_name,
    schema_owner
FROM information_schema.schemata
WHERE schema_name IN  ('stg', 'bronze', 'silver', 'gold', 'governance') ;