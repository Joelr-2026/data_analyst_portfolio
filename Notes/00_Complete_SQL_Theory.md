# 📚 COMPLETE SQL THEORY — INTERVIEW READY
# (With Full Explanations)

---

## 1️⃣ WHAT IS DATA?

Data means raw facts — numbers, text, dates — without any meaning.

**Example:**
- "100", "Amit", "2026-07-25" ← Ye data hai (raw)
- "Amit ka salary ₹100 hai" ← Ye information hai (data with meaning)

### Key Terms:

- **Data:** Raw facts, unprocessed
- **Information:** Data with meaning/context
- **Database:** Organized electronic storage for data. Jaise almari jisme files rakhi ho.
- **DBMS (Database Management System):** Software jo database manage kare. Almari ka caretaker.
- **RDBMS (Relational DBMS):** DBMS jo tables mein data store kare aur tables ke beech relationships support kare.

---

## 2️⃣ TYPES OF DATABASES

Different problems → Different databases

| Type | How Data Stored | Example | Real Use |
|------|----------------|---------|----------|
| Relational (RDBMS) | Tables (rows & columns) | PostgreSQL, MySQL | Banking, ERP, HR |
| NoSQL - Document | JSON documents | MongoDB | Real-time apps, Catalog |
| NoSQL - Key-Value | Key → Value pairs | Redis | Caching, Sessions |
| NoSQL - Graph | Nodes + Relationships | Neo4j | Social networks, Fraud detection |

**PostgreSQL is RDBMS (Relational)**

---

## 3️⃣ HIERARCHY IN POSTGRESQL
Server (PostgreSQL 18)
  └── Database (data_analyst_db)
       └── Schema (learning)
            └── Table (employees)
                 ├── Column: name
                 ├── Column: age
                 ├── Column: salary
                 └── Row: ('Amit', 25, 50000)

- **Server:** PostgreSQL ka installation
- **Database:** Ek project ka poora data
- **Schema:** Database ke andar folder — organize karne ke liye
- **Table:** Actual data grid (rows × columns)
- **Column:** One type of data (all names, all salaries)
- **Row:** One complete record

---

## 4️⃣ ACID PROPERTIES

ACID = Database reliability ke 4 golden rules.

| Property | Meaning | Example |
|----------|---------|---------|
| **A**tomicity | Either full work done or nothing | Money transfer: A se deduct + B mein credit — dono ya kuch nahi |
| **C**onsistency | Data rules always valid | Balance negative nahi ho sakta |
| **I**solation | Multiple users don't clash | 2 log last seat book karein — ek ko milegi |
| **D**urability | Saved data never lost | Power cut ke baad bhi committed data safe |

**PostgreSQL ACID compliant hai**

---

## 5️⃣ SQL COMMANDS — 5 CATEGORIES

| Category | Full Form | Commands | Kya Karta Hai |
|----------|-----------|----------|---------------|
| **DDL** | Data Definition Language | CREATE, ALTER, DROP, TRUNCATE | Table structure define/modify |
| **DML** | Data Manipulation Language | INSERT, UPDATE, DELETE | Data add/change/remove |
| **DQL** | Data Query Language | SELECT | Data fetch karo |
| **DCL** | Data Control Language | GRANT, REVOKE | Permissions do/lo |
| **TCL** | Transaction Control Language | COMMIT, ROLLBACK, SAVEPOINT | Transaction manage |

---

## 6️⃣ CONSTRAINTS

Rules jo table columns pe lagte hain — data quality ke liye.

| Constraint | Kya Karta Hai | Example |
|------------|---------------|---------|
| **PRIMARY KEY** | Unique + Not Null, ek hi per table | employee_id |
| **FOREIGN KEY** | Doosri table ki PK se link | department_id → departments(id) |
| **UNIQUE** | Duplicate values allowed nahi | email, phone |
| **NOT NULL** | Khali nahi chhod sakte | name, salary |
| **CHECK** | Custom condition | age >= 18 |
| **DEFAULT** | Value na do to auto-fill | joining_date DEFAULT TODAY |

---

## 7️⃣ NORMALIZATION

Data ko split karna — duplicate hatane ke liye.

| Form | Rule | Problem Solved |
|------|------|----------------|
| **1NF** | Har cell mein single value | One cell ≠ multiple values |
| **2NF** | 1NF + all columns depend on full PK | No partial dependency |
| **3NF** | 2NF + columns depend only on PK | No transitive dependency |

**Example:** Employees table mein department name store nahi karenge. Alag departments table banayenge, FK se link karenge.

---

## 8️⃣ TYPES OF KEYS

| Key | Definition | Example |
|-----|------------|---------|
| **Primary Key** | Unique row identifier, NOT NULL | emp_id |
| **Foreign Key** | References PK of another table | dept_id |
| **Candidate Key** | Any column eligible to be PK | email, phone, aadhaar |
| **Composite Key** | PK made of 2+ columns | (order_id, product_id) |
| **Surrogate Key** | Artificial ID, auto-generated | SERIAL (1,2,3...) |
| **Natural Key** | Real-world identifier | email, PAN number |

---

## 9️⃣ SQL QUERY EXECUTION ORDER

Likhte alag order mein hain, execute alag order mein hota hai.

| Writing Order | Execution Order |
|---------------|-----------------|
| SELECT | 5th |
| FROM | 1st |
| WHERE | 2nd |
| GROUP BY | 3rd |
| HAVING | 4th |
| ORDER BY | 6th |
| LIMIT | 7th |

**Why important?** WHERE mein alias use nahi kar sakte, HAVING mein aggregate use kar sakte hain.

---

## 🔟 TABLE RELATIONSHIPS

| Type | Meaning | Example |
|------|---------|---------|
| **One-to-One** | 1 row ↔ 1 row | User ↔ UserProfile |
| **One-to-Many** | 1 row ↔ many rows | Customer ↔ Orders |
| **Many-to-Many** | Many ↔ Many (needs 3rd table) | Students ↔ Courses |

---

## 1️⃣1️⃣ ALL IMPORTANT DIFFERENCES

### DBMS vs RDBMS
| DBMS | RDBMS |
|------|-------|
| File-based storage | Table-based storage |
| No relationships | Foreign keys |
| No ACID | ACID compliant |
| Example: MS Access | Example: PostgreSQL |

### CHAR vs VARCHAR
| CHAR(10) | VARCHAR(10) |
|----------|-------------|
| Fixed length | Variable length |
| Pads spaces | No padding |
| 'AB' = 10 bytes | 'AB' = 2 bytes |
| Use: Country code 'IN' | Use: Name, Email |

### NUMERIC vs FLOAT
| NUMERIC | FLOAT |
|---------|-------|
| Exact value | Approximate value |
| Money, Price | Scientific data |
| 0.1+0.2 = 0.3 | 0.1+0.2 ≠ 0.3 |

### DELETE vs TRUNCATE vs DROP
| DELETE | TRUNCATE | DROP |
|--------|----------|------|
| Removes rows | Removes all rows | Removes table |
| WHERE allowed | No WHERE | No WHERE |
| Slow (row-by-row) | Fast | Instant |
| Auto-ID stays | Auto-ID resets | Table gone |
| DML | DDL | DDL |

### WHERE vs HAVING
| WHERE | HAVING |
|-------|--------|
| Filters individual rows | Filters groups |
| GROUP BY se pehle | GROUP BY ke baad |
| Cannot use aggregates | Can use aggregates |

### GROUP BY vs WINDOW
| GROUP BY | WINDOW |
|----------|--------|
| Rows collapse into groups | All rows remain |
| Ek row per group output | Har row + aggregate |
| Detail lost | Detail + summary |

### VIEW vs TABLE
| TABLE | VIEW |
|-------|------|
| Physical data | Virtual (saved query) |
| Storage space leta hai | No extra space |
| Fast | Slightly slower |

### OLTP vs OLAP
| OLTP | OLAP |
|------|------|
| Day-to-day operations | Analysis & Reporting |
| INSERT, UPDATE, DELETE | SELECT, Aggregations |
| Example: Order placing | Example: Sales report |

---

## 1️⃣2️⃣ AGGREGATE FUNCTIONS

Multiple rows pe kaam karte hain, ek result return karte hain.

| Function | Kya Karta Hai | Example |
|----------|---------------|---------|
| COUNT() | Kitni rows | COUNT(*) = 100 |
| SUM() | Jodo sab values | SUM(salary) = 500000 |
| AVG() | Average | AVG(age) = 28 |
| MIN() | Sabse chhoti value | MIN(price) = 10 |
| MAX() | Sabse badi value | MAX(salary) = 100000 |

**Important:** NULL values ignore hoti hain (COUNT ke alawa)

---

## 1️⃣3️⃣ SCALAR (STRING) FUNCTIONS

Ek value pe kaam karte hain.

| Function | Use | Example |
|----------|-----|---------|
| UPPER() | CAPITAL | 'amit' → 'AMIT' |
| LOWER() | small | 'AMIT' → 'amit' |
| LENGTH() | Kitne chars | 'ABC' → 3 |
| TRIM() | Spaces hatao | ' AB ' → 'AB' |
| CONCAT() | Jodo | 'A' \|\| 'B' → 'AB' |

---

## 1️⃣4️⃣ OPERATORS

| Type | Operators | Example |
|------|-----------|---------|
| Arithmetic | + - * / | salary * 12 |
| Comparison | = <> < > <= >= | salary > 50000 |
| Logical | AND OR NOT | age > 18 AND salary > 30000 |
| Pattern | LIKE, ILIKE | name LIKE 'A%' |
| Range | BETWEEN, IN | age BETWEEN 18 AND 60 |
| NULL check | IS NULL, IS NOT NULL | phone IS NULL |

---

## 1️⃣5️⃣ IMPORTANT KEYWORDS

| Keyword | Use | Example |
|---------|-----|---------|
| DISTINCT | Duplicates hatao | SELECT DISTINCT city |
| ORDER BY | Sort (ASC/DESC) | ORDER BY salary DESC |
| LIMIT | Kitni rows | LIMIT 10 |
| OFFSET | Kitni skip | OFFSET 20 |
| CASE | If-else logic | CASE WHEN...THEN...ELSE...END |
| COALESCE | First non-NULL | COALESCE(phone, 'N/A') |
| NULLIF | NULL if equal | NULLIF(0, 0) → NULL |

---

## 1️⃣6️⃣ ADVANCED TOPICS (Brief)

| Topic | Simple Definition |
|-------|-------------------|
| **Subquery** | Query ke andar query. Inner query pehle run hoti hai. |
| **CTE (WITH)** | Named temporary result. Readable, reusable. |
| **Window Function** | Har row ke saath aggregate/rank. Rows collapse nahi hote. OVER() use hota hai. |
| **Index** | Book index jaisa. Search fast karta hai. Bina index full table scan. |
| **Transaction** | BEGIN → queries → COMMIT (save) ya ROLLBACK (undo). |
| **Stored Procedure** | Saved SQL code, baar-baar run kar sakte ho. Parameters accept karta hai. |
| **Trigger** | Event pe auto-run. Jaise INSERT ke baad log table mein entry. |

---

## 1️⃣7️⃣ DATA MODELING

| Phase | What | Example |
|-------|------|---------|
| Conceptual | High-level entities | Student, Course |
| Logical | Add attributes & PKs | Student(id, name), Course(id, title) |
| Physical | Actual table DDL | CREATE TABLE students(...) |

### Star Schema vs Snowflake Schema
| Star | Snowflake |
|------|-----------|
| 1 Fact table + flat Dim tables | Dim tables further normalized |
| Fast queries (less JOINs) | Storage efficient |
| More storage | More complex queries |

---

## 1️⃣8️⃣ COMMON INTERVIEW SCENARIO: SLOW QUERY

Problem: Query slow hai. Kya karoge?

| Step | Action |
|------|--------|
| 1 | EXPLAIN ANALYZE se check karo execution plan |
| 2 | Index missing hai kya? WHERE/JOIN columns pe index banao |
| 3 | SELECT * ki jagah specific columns lo |
| 4 | Subqueries ko JOINs/CTE mein badlo |
| 5 | WHERE clause pe function use mat karo (WHERE YEAR(date) = 2024 ❌) |

---

## 1️⃣9️⃣ GIT & GITHUB

| Term | Meaning |
|------|---------|
| **Git** | Version control system. Code history track karta hai. |
| **GitHub** | Cloud pe Git repository. Backup + Sharing + Portfolio. |
| **Repository** | Project folder tracked by Git. |
| **Commit** | Changes ka snapshot save karna. |
| **Push** | Local se GitHub pe upload. |
| **Pull** | GitHub se local pe download. |
| **ACP** | Add → Commit → Push (Git workflow) |
| **.gitignore** | Files jo Git track na kare (passwords, large files) |

---

## 2️⃣0️⃣ POSTGRESQL SPECIFIC FACTS

| Fact | Detail |
|------|--------|
| Type | ORDBMS (Object-Relational) |
| License | Open Source, Free |
| ACID | Yes |
| JSON Support | Yes (JSONB) |
| Max DB Size | Unlimited |
| Max Table Size | 32 TB |
| Famous Users | Apple, Spotify, Instagram, Uber |

---

## ✅ END OF THEORY