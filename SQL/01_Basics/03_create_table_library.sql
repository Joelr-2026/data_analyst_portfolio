-- =============================================
-- DAY 1: CREATE TABLE - ALL EXERCISES
-- Date: 27 July 2026
-- =============================================

-- Clean old tables first (prevents "already exists" error)
DROP TABLE IF EXISTS ex5_borrows CASCADE;
DROP TABLE IF EXISTS ex4_members CASCADE;
DROP TABLE IF EXISTS ex3_orders CASCADE;
DROP TABLE IF EXISTS ex2_employees CASCADE;
DROP TABLE IF EXISTS ex1_products CASCADE;

-- Exercise 1: Products
CREATE TABLE ex1_products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) CHECK (price > 0)
);

-- Exercise 2: Employees
CREATE TABLE ex2_employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    salary NUMERIC(10,2) CHECK (salary >= 10000),
    join_date DATE DEFAULT CURRENT_DATE
);

-- Exercise 3: Orders
CREATE TABLE ex3_orders (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    order_date DATE DEFAULT CURRENT_DATE,
    total_amount NUMERIC(10,2) CHECK (total_amount > 0)
);

-- Exercise 4: Members
CREATE TABLE ex4_members (
    member_id SERIAL PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    phone VARCHAR(10) UNIQUE,
    membership_type VARCHAR(20) CHECK (membership_type IN ('Basic', 'Premium', 'Gold'))
);

-- Exercise 5: Borrows
CREATE TABLE ex5_borrows (
    history_id SERIAL PRIMARY KEY,
    member_id INTEGER REFERENCES ex4_members(member_id),
    book_title VARCHAR(200) NOT NULL,
    borrow_date DATE DEFAULT CURRENT_DATE
);

-- Verify all tables
SELECT table_name 
FROM information_schema.tables 
WHERE table_name LIKE 'ex%'
ORDER BY table_name;