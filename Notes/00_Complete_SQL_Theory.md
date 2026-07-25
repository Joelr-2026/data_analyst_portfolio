# 📚 COMPLETE SQL THEORY 

---

## 1️⃣ WHAT IS DATA?

Data refers to raw, unprocessed facts — numbers, text, dates — without context.

**Example:**
- "100", "Amit", "2026-07-25" → This is raw data
- "Amit's salary is ₹100 on July 25, 2026" → This is information

### Key Terms:

| Term | Definition |
|------|------------|
| **Data** | Raw facts, unprocessed values |
| **Information** | Processed data with context and meaning |
| **Database** | Organized electronic storage for structured data |
| **DBMS** | Software that manages databases (Database Management System) |
| **RDBMS** | DBMS that stores data in tables with relationships (Relational DBMS) |

---

## 2️⃣ TYPES OF DATABASES

Different use cases require different database types.

| Type | Storage Format | Example | Use Case |
|------|---------------|---------|----------|
| Relational (RDBMS) | Tables (rows × columns) | PostgreSQL, MySQL | Banking, ERP, HR |
| NoSQL - Document | JSON documents | MongoDB | Real-time apps, Catalogs |
| NoSQL - Key-Value | Key → Value pairs | Redis | Caching, Session management |
| NoSQL - Graph | Nodes + Relationships | Neo4j | Social networks, Fraud detection |

**PostgreSQL is an RDBMS (Relational Database Management System)**

---

## 3️⃣ POSTGRESQL HIERARCHY

The structural organization of PostgreSQL follows this hierarchy:

Server (PostgreSQL 18)
  └── Database (data_analyst_db)
       └── Schema (learning)
            └── Table (employees)
                 ├── Column: name
                 ├── Column: age
                 ├── Column: salary
                 └── Row: ('Amit', 25, 50000)


| Level | Description | Example |
|-------|-------------|---------|
| **Server** | PostgreSQL installation instance | PostgreSQL 18 |
| **Database** | Complete data storage for one project | data_analyst_db |
| **Schema** | Logical folder/namespace within database | learning, hr, sales |
| **Table** | Data grid with rows and columns | employees |
| **Column** | One category/field of data | name, age, salary |
| **Row** | One complete record/entry | ('Amit', 25, 50000) |

---

## 4️⃣ ACID PROPERTIES

ACID ensures database reliability during transactions.

| Property | Meaning | Example |
|----------|---------|---------|
| **A**tomicity | Transaction executes completely or not at all | Money transfer: debit + credit both succeed or both fail |
| **C**onsistency | Database remains valid before and after transaction | Account balance never becomes negative |
| **I**solation | Concurrent transactions don't interfere | Two users booking last seat — only one succeeds |
| **D**urability | Committed data survives system failures | Power failure doesn't lose committed data |

**PostgreSQL is fully ACID compliant.**

---

## 5️⃣ SQL COMMAND CATEGORIES

SQL commands are divided into 5 categories based on their purpose.

| Category | Full Form | Commands | Purpose |
|----------|-----------|----------|---------|
| **DDL** | Data Definition Language | CREATE, ALTER, DROP, TRUNCATE | Define/modify table structure |
| **DML** | Data Manipulation Language | INSERT, UPDATE, DELETE | Add/change/remove data |
| **DQL** | Data Query Language | SELECT | Retrieve/fetch data |
| **DCL** | Data Control Language | GRANT, REVOKE | Manage permissions |
| **TCL** | Transaction Control Language | COMMIT, ROLLBACK, SAVEPOINT | Manage transactions |

---

## 6️⃣ CONSTRAINTS

Constraints are rules applied to table columns to ensure data quality and integrity.

| Constraint | Purpose | Example |
|------------|---------|---------|
| **PRIMARY KEY** | Uniquely identifies each row, NOT NULL | employee_id |
| **FOREIGN KEY** | Links to Primary Key of another table | department_id → departments(id) |
| **UNIQUE** | Ensures all values are different | email, phone_number |
| **NOT NULL** | Column cannot be empty | name, salary |
| **CHECK** | Enforces custom condition | age >= 18 |
| **DEFAULT** | Provides default value if none given | joining_date DEFAULT CURRENT_DATE |

---

## 7️⃣ NORMALIZATION

Normalization is the process of organizing data to reduce redundancy.

| Normal Form | Rule | Problem Solved |
|-------------|------|----------------|
| **1NF** | Each cell contains a single (atomic) value | No multiple values in one cell |
| **2NF** | 1NF + all non-key columns depend on entire PK | No partial dependency |
| **3NF** | 2NF + all columns depend only on PK | No transitive dependency |

**Example:** Instead of storing department details in every employee row, create a separate departments table and link via Foreign Key.

---

## 8️⃣ TYPES OF KEYS

Keys identify and establish relationships between tables.

| Key Type | Definition | Example |
|----------|------------|---------|
| **Primary Key** | Unique row identifier, NOT NULL | emp_id |
| **Foreign Key** | References Primary Key of another table | dept_id |
| **Candidate Key** | Any column eligible to become Primary Key | email, phone, aadhaar |
| **Composite Key** | Primary Key composed of 2+ columns | (order_id, product_id) |
| **Surrogate Key** | Artificial, auto-generated ID | SERIAL (1, 2, 3...) |
| **Natural Key** | Real-world unique identifier | email, PAN number |

---

## 9️⃣ SQL QUERY EXECUTION ORDER

SQL queries are written in one order but executed in another.

| Writing Order | Execution Order |
|---------------|-----------------|
| SELECT | 5th |
| FROM | 1st |
| WHERE | 2nd |
| GROUP BY | 3rd |
| HAVING | 4th |
| ORDER BY | 6th |
| LIMIT | 7th |

**Why this matters:** Aliases defined in SELECT cannot be used in WHERE (WHERE executes first). Aggregate functions work in HAVING but not in WHERE.

---

## 🔟 TABLE RELATIONSHIPS

| Relationship | Meaning | Example |
|-------------|---------|---------|
| **One-to-One** | One row in Table A links to one row in Table B | User ↔ UserProfile |
| **One-to-Many** | One row in Table A links to many rows in Table B | Customer ↔ Orders |
| **Many-to-Many** | Many rows in A link to many in B (requires junction table) | Students ↔ Courses |

---

## 1️⃣1️⃣ ALL IMPORTANT DIFFERENCES

### DBMS vs RDBMS
| DBMS | RDBMS |
|------|-------|
| File-based storage | Table-based storage |
| No relationships | Supports Foreign Keys |
| No ACID compliance | ACID compliant |
| Example: MS Access, FoxPro | Example: PostgreSQL, MySQL, Oracle |

### CHAR vs VARCHAR
| CHAR(10) | VARCHAR(10) |
|----------|-------------|
| Fixed length | Variable length |
| Pads with spaces to fill length | Stores only actual data |
| 'AB' consumes 10 bytes | 'AB' consumes 2 bytes |
| Use for: Country codes ('IN'), Gender ('M','F') | Use for: Names, Emails, Addresses |

### NUMERIC vs FLOAT
| NUMERIC | FLOAT |
|---------|-------|
| Stores exact decimal values | Stores approximate values |
| Slightly slower | Faster computation |
| Use for: Money, Price, Salary | Use for: Scientific calculations, Statistics |
| 0.1 + 0.2 = 0.3 (exact) | 0.1 + 0.2 ≠ 0.3 (rounding error) |

### DELETE vs TRUNCATE vs DROP
| Feature | DELETE | TRUNCATE | DROP |
|---------|--------|----------|------|
| Removes | Specific rows (with WHERE) | All rows | Entire table |
| Structure | Preserved | Preserved | Removed |
| Speed | Slow (row-by-row) | Fast | Instant |
| Auto-ID | Not reset | Reset | N/A |
| Category | DML | DDL | DDL |
| Rollback | Yes | Yes (in PostgreSQL) | No |

### WHERE vs HAVING
| WHERE | HAVING |
|-------|--------|
| Filters individual rows | Filters grouped results |
| Executes before GROUP BY | Executes after GROUP BY |
| Cannot use aggregate functions | Can use aggregate functions |
| Example: WHERE salary > 50000 | Example: HAVING AVG(salary) > 50000 |

### GROUP BY vs WINDOW FUNCTIONS
| GROUP BY | WINDOW |
|----------|--------|
| Collapses rows into groups | Keeps all rows |
| One row per group in output | Every row with aggregated values |
| Detail rows are lost | Detail rows preserved with summary |

### VIEW vs TABLE
| TABLE | VIEW |
|-------|------|
| Physically stores data | Virtual (saved query) |
| Occupies storage space | No additional space |
| Faster access | Slightly slower (executes query each time) |
| Can perform all DML operations | Limited DML support |

### OLTP vs OLAP
| OLTP | OLAP |
|------|------|
| Online Transaction Processing | Online Analytical Processing |
| Day-to-day operations | Analysis & Reporting |
| INSERT, UPDATE, DELETE heavy | SELECT, aggregations heavy |
| Normalized tables | Denormalized/Star schema |
| Example: Placing an order on Zomato | Example: Monthly sales trend report |

---

## 1️⃣2️⃣ AGGREGATE FUNCTIONS

Aggregate functions operate on multiple rows and return a single result.

| Function | Purpose | Example |
|----------|---------|---------|
| COUNT() | Count number of rows | COUNT(*) → 100 |
| SUM() | Calculate total of values | SUM(salary) → 500000 |
| AVG() | Calculate average | AVG(age) → 28.5 |
| MIN() | Find smallest value | MIN(price) → 10 |
| MAX() | Find largest value | MAX(salary) → 100000 |

**Note:** NULL values are ignored by all aggregate functions except COUNT(*).

---

## 1️⃣3️⃣ SCALAR (STRING) FUNCTIONS

Scalar functions operate on a single value.

| Function | Purpose | Example |
|----------|---------|---------|
| UPPER() | Convert to uppercase | UPPER('amit') → 'AMIT' |
| LOWER() | Convert to lowercase | LOWER('AMIT') → 'amit' |
| LENGTH() | Count characters | LENGTH('ABC') → 3 |
| TRIM() | Remove leading/trailing spaces | TRIM(' AB ') → 'AB' |
| CONCAT() or \|\| | Join strings together | 'A' \|\| 'B' → 'AB' |

---

## 1️⃣4️⃣ OPERATORS

| Type | Operators | Example |
|------|-----------|---------|
| Arithmetic | + - * / % | salary * 12 |
| Comparison | = <> != < > <= >= | salary > 50000 |
| Logical | AND, OR, NOT | age > 18 AND salary > 30000 |
| Pattern Matching | LIKE, ILIKE | name LIKE 'A%' |
| Range | BETWEEN, IN | age BETWEEN 18 AND 60 |
| NULL Check | IS NULL, IS NOT NULL | phone IS NULL |

---

## 1️⃣5️⃣ IMPORTANT KEYWORDS

| Keyword | Purpose | Example |
|---------|---------|---------|
| DISTINCT | Remove duplicate values | SELECT DISTINCT city FROM employees |
| ORDER BY | Sort results (ASC/DESC) | ORDER BY salary DESC |
| LIMIT | Restrict number of rows returned | LIMIT 10 |
| OFFSET | Skip specified number of rows | OFFSET 20 |
| CASE | Conditional logic (if-else) | CASE WHEN age < 18 THEN 'Minor' ELSE 'Adult' END |
| COALESCE | Return first non-NULL value | COALESCE(phone, 'Not Provided') |
| NULLIF | Return NULL if two values are equal | NULLIF(0, 0) → NULL |

---

## 1️⃣6️⃣ ADVANCED TOPICS (Brief Overview)

| Topic | Definition |
|-------|------------|
| **Subquery** | A query nested inside another query. Inner query executes first. |
| **CTE (WITH)** | Common Table Expression — named temporary result set. More readable and reusable than subqueries. |
| **Window Function** | Performs calculation across a set of rows related to the current row. Does NOT collapse rows like GROUP BY. Uses OVER() clause. |
| **Index** | Database object that speeds up data retrieval. Like a book's index. Without index = full table scan (slow). |
| **Transaction** | A sequence of operations treated as a single unit. BEGIN → queries → COMMIT (save) or ROLLBACK (undo). |
| **Stored Procedure** | Pre-saved SQL code that can be executed repeatedly. Accepts parameters. |
| **Trigger** | Automatically executes specified code when an event occurs (INSERT, UPDATE, DELETE). |

---

## 1️⃣7️⃣ DATA MODELING

| Phase | Description | Example |
|-------|-------------|---------|
| **Conceptual** | High-level entities and relationships | Student, Course |
| **Logical** | Entities with attributes and Primary Keys | Student(id, name, age) |
| **Physical** | Actual DDL with data types and constraints | CREATE TABLE students (...) |

### Star Schema vs Snowflake Schema
| Star Schema | Snowflake Schema |
|-------------|-----------------|
| Fact table + flat dimension tables | Fact table + normalized dimensions |
| Fewer JOINs, faster queries | More JOINs, complex queries |
| More storage (redundancy) | Less storage (normalized) |

---

## 1️⃣8️⃣ HANDLING SLOW QUERIES (Interview Scenario)

**Problem:** A query is running very slowly. How do you fix it?

| Step | Action |
|------|--------|
| 1 | Use EXPLAIN ANALYZE to see the execution plan |
| 2 | Check for missing indexes on WHERE/JOIN columns |
| 3 | Replace SELECT * with specific column names |
| 4 | Convert subqueries to JOINs or CTEs where possible |
| 5 | Avoid functions on indexed columns in WHERE (e.g., WHERE YEAR(date) = 2024 — this disables index) |
| 6 | Ensure statistics are up to date (ANALYZE table) |

---

## 1️⃣9️⃣ GIT & GITHUB

| Term | Definition |
|------|------------|
| **Git** | Distributed version control system that tracks code changes |
| **GitHub** | Cloud-based hosting service for Git repositories |
| **Repository (Repo)** | A project folder whose contents are tracked by Git |
| **Commit** | A snapshot/save point of changes |
| **Push** | Upload local commits to remote repository (GitHub) |
| **Pull** | Download remote changes to local machine |
| **ACP Workflow** | Add → Commit → Push (standard Git workflow) |
| **.gitignore** | File specifying which files/folders Git should not track |

---

## 2️⃣0️⃣ POSTGRESQL KEY FACTS

| Attribute | Detail |
|-----------|--------|
| **Full Name** | PostgreSQL |
| **Type** | Object-Relational Database Management System (ORDBMS) |
| **License** | Open Source (completely free) |
| **ACID Compliance** | Yes |
| **JSON Support** | Yes (JSON and JSONB data types) |
| **Maximum Database Size** | Unlimited |
| **Maximum Table Size** | 32 TB |
| **Notable Users** | Apple, Spotify, Instagram, Uber, Netflix |

---

## ✅ END OF THEORY DOCUMENT

This document covers all theoretical concepts 