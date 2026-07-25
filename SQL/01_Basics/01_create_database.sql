-- SQL BASICS: DATABASE SETUP
-- 25 July 2026

CREATE SCHEMA IF NOT EXISTS learning;

SELECT schema_name 
FROM information_schema.schemata 
WHERE schema_name = 'learning';