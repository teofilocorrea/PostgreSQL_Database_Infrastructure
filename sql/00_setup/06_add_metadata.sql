
----------------------------------------------------
COMMENT ON DATABASE analytics_lab
IS 'Base de datos principal para análisis de datos y portafolio de ingeniería de datos';
----------------------------------------------------

----------------------------------------------------
COMMENT ON SCHEMA stg IS 'Capa staging - área temporal de transformación';
COMMENT ON SCHEMA bronze IS 'Capa raw - datos crudos sin transformación';
COMMENT ON SCHEMA silver IS 'Capa limpia - datos validados y estandarizados';
COMMENT ON SCHEMA gold IS 'Capa consumo - datos listos para análisis y reportes';
COMMENT ON SCHEMA governance IS 'Capa control - reglas, auditoría y calidad de datos';
----------------------------------------------------