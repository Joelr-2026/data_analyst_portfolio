-- =============================================
-- SQL BASICS: DATA TYPES
-- Date: 25 July 2026
-- =============================================

-- SCHEMA SET (learn karne ke liye)
SET search_path TO learning;

-- =============================================
-- 1. NUMERIC DATA TYPES
-- =============================================

-- INTEGER: Pura number (no decimal)
SELECT 100 AS integer_example;

-- NUMERIC(precision, scale): Exact decimal
-- NUMERIC(5,2) = total 5 digits, 2 after decimal = 999.99 max
SELECT 999.99::NUMERIC(5,2) AS numeric_example;

-- FLOAT: Approximate decimal (fast but not exact)
SELECT 0.1::FLOAT + 0.2::FLOAT AS float_test;

-- =============================================
-- 2. CHARACTER (STRING) DATA TYPES
-- =============================================

-- VARCHAR(n): Variable length, max n characters
SELECT 'John Doe'::VARCHAR(50) AS varchar_example;

-- CHAR(n): Fixed length, PADS with spaces
SELECT 'AB'::CHAR(5) AS char_example;
-- Output: 'AB   ' (AB + 3 spaces = total 5 characters)

-- PROOF: Length difference dekho
SELECT 
    LENGTH('AB'::VARCHAR(10)) AS varchar_length,
    LENGTH('AB'::CHAR(10)) AS char_length;

-- TEXT: Unlimited length
SELECT 'This can be a very long paragraph of text...'::TEXT AS text_example;

-- Real difference dekho — Concatenation trick
SELECT 
    'AB'::VARCHAR(10) || '<-- end' AS varchar_concat,
    'AB'::CHAR(10) || '<-- end' AS char_concat;
    SELECT 
    OCTET_LENGTH('AB'::VARCHAR(10)) AS varchar_bytes,
    OCTET_LENGTH('AB'::CHAR(10)) AS char_bytes;
-- =============================================
-- 3. DATE & TIME DATA TYPES
-- =============================================

-- DATE: Sirf date (birthday, joining date)
SELECT '2026-07-25'::DATE AS date_example;

-- TIMESTAMP: Date + Time (order time, login time)
SELECT '2026-07-25 14:30:00'::TIMESTAMP AS timestamp_example;

-- CURRENT DATE & TIME (auto)
SELECT CURRENT_DATE AS today_date;
SELECT CURRENT_TIMESTAMP AS right_now;

-- =============================================
-- 4. BOOLEAN DATA TYPE
-- =============================================

-- BOOLEAN: Sirf 3 values — TRUE, FALSE, NULL
SELECT TRUE AS is_active;
SELECT FALSE AS is_deleted;