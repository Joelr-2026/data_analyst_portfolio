# 📚 COMPLETE SQL THEORY — INTERVIEW READY

---

## 1. WHAT IS DATA?

| Term | Definition |
|------|------------|
| Data | Raw facts (numbers, text) |
| Information | Processed data with meaning |
| Database | Organized collection of data |
| DBMS | Software to manage databases |
| RDBMS | DBMS with tables + relationships |

---

## 2. DATABASE TYPES

| Type | Example | Use |
|------|---------|-----|
| Relational | PostgreSQL, MySQL | Banking, ERP |
| NoSQL (Document) | MongoDB | Real-time apps |
| NoSQL (Key-Value) | Redis | Caching |
| NoSQL (Graph) | Neo4j | Social networks |

---

## 3. ACID PROPERTIES

| Property | Meaning |
|----------|---------|
| Atomicity | All or nothing |
| Consistency | Data valid always |
| Isolation | Users don't interfere |
| Durability | Committed data never lost |

---

## 4. SQL COMMANDS

| Category | Commands | Kya Karta Hai |
|----------|----------|---------------|
| DDL | CREATE, ALTER, DROP, TRUNCATE | Structure |
| DML | INSERT, UPDATE, DELETE | Data |
| DQL | SELECT | Query |
| DCL | GRANT, REVOKE | Permission |
| TCL | COMMIT, ROLLBACK | Transaction |

---

## 5. CONSTRAINTS

| Constraint | Use |
|------------|-----|
| PRIMARY KEY | Unique + Not Null |
| FOREIGN KEY | Link tables |
| UNIQUE | No duplicates |
| NOT NULL | Required |
| CHECK | Custom rule |
| DEFAULT | Auto value |

---

## 6. NORMALIZATION

| Form | Rule |
|------|------|
| 1NF | Atomic values |
| 2NF | No partial dependency |
| 3NF | No transitive dependency |

---

## 7. KEYS

| Key | Definition |
|-----|------------|
| Primary Key | Unique row ID |
| Foreign Key | Links to PK |
| Candidate Key | Can be PK |
| Composite Key | 2+ columns PK |
| Surrogate Key | Artificial ID |

---

## 8. SQL EXECUTION ORDER

| Writing | Execution |
|---------|-----------|
| SELECT | 5th |
| FROM | 1st |
| WHERE | 2nd |
| GROUP BY | 3rd |
| HAVING | 4th |
| ORDER BY | 6th |
| LIMIT | 7th |

---

## 9. RELATIONSHIPS

| Type | Example |
|------|---------|
| One-to-One | User ↔ Profile |
| One-to-Many | Customer ↔ Orders |
| Many-to-Many | Students ↔ Courses |

---

## 10. DIFFERENCES

| Topic | A | B |
|-------|---|---|
| DBMS vs RDBMS | No relations | Tables + FK |
| CHAR vs VARCHAR | Fixed length | Variable length |
| NUMERIC vs FLOAT | Exact | Approximate |
| DELETE vs TRUNCATE | Row-by-row, slow | All rows, fast |
| WHERE vs HAVING | Row filter | Group filter |
| GROUP BY vs WINDOW | Collapse rows | All rows + agg |
| VIEW vs TABLE | Virtual | Physical |
| OLTP vs OLAP | Transactions | Analysis |

---

## 11. AGGREGATE FUNCTIONS

| Function | Use |
|----------|-----|
| COUNT() | Row count |
| SUM() | Total |
| AVG() | Average |
| MIN() | Smallest |
| MAX() | Largest |

---

## 12. SCALAR FUNCTIONS

| Function | Use |
|----------|-----|
| UPPER() | Capitalize |
| LOWER() | Lowercase |
| LENGTH() | String length |
| TRIM() | Remove spaces |
| CONCAT() | Join strings |

---

## 13. OPERATORS

| Type | Symbol |
|------|--------|
| Arithmetic | + - * / |
| Comparison | = <> > < >= <= |
| Logical | AND OR NOT |
| Pattern | LIKE, ILIKE |
| Range | BETWEEN, IN |
| NULL | IS NULL, IS NOT NULL |

---

## 14. IMPORTANT KEYWORDS

| Keyword | Use |
|---------|-----|
| DISTINCT | No duplicates |
| ORDER BY | Sort |
| LIMIT | Max rows |
| OFFSET | Skip rows |
| CASE | If-else |
| COALESCE | First non-null |
| NULLIF | NULL if equal |

---

## 15. ADVANCED TOPICS

| Topic | 1-Line |
|-------|--------|
| Subquery | Query inside query |
| CTE | Named temp result (WITH) |
| Window Function | Per-row agg/rank |
| Index | Fast search |
| Transaction | BEGIN-COMMIT-ROLLBACK |
| Stored Procedure | Saved SQL code |
| Trigger | Auto-run on event |

---

## 16. GIT & GITHUB

| Term | Meaning |
|------|---------|
| Git | Version control |
| GitHub | Cloud repo |
| Commit | Save snapshot |
| Push | Upload |
| Pull | Download |
| Branch | Separate version |
| ACP | Add → Commit → Push |