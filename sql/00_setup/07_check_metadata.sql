
----------------------------------------------------
SELECT
    datname,
    pg_catalog.shobj_description(oid, 'pg_database') AS description
FROM pg_database
WHERE datname = 'analytics_lab';
----------------------------------------------------

----------------------------------------------------
SELECT
    schema_name,
    obj_description(oid, 'pg_namespace') AS description
FROM information_schema.schemata
JOIN pg_namespace ON nspname = schema_name
WHERE schema_name IN ('stg', 'bronze', 'silver', 'gold', 'governance');
----------------------------------------------------