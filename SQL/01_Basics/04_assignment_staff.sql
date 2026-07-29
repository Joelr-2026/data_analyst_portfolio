CREATE TABLE library.staff(staff_id SERIAL PRIMARY KEY,
full_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
phone VARCHAR(10),
salary NUMERIC(10,2) CHECK(salary>=15000),
department VARCHAR(20) CHECK(department IN ('Admin','Library','IT')),
hire_date DATE DEFAULT CURRENT_DATE
)


SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'staff';