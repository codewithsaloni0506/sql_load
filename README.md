# SQL Load Project (PostgreSQL)

This repository contains a beginner-friendly SQL project that demonstrates how to build and load a database step-by-step using structured SQL scripts.

It includes scripts for:

- Creating a database  
- Creating tables (fact & dimension structure)  
- Modifying table structures  
- Loading CSV data into PostgreSQL  

This project is useful for learning SQL database setup, schema management, and data loading workflows.

---

## 📁 Project Structure

sql_load/
│
├── 1_create_database.sql
├── 2_create_tables.sql
├── 3_modify_tables.sql
├── csv_files/
│ ├── company_dim.csv
│ ├── skills_dim.csv
│ ├── job_postings_fact.csv
│ └── skills_job_dim.csv
└── README.md


---

## 📄 File Description

| File Name | Purpose |
|----------|---------|
| `1_create_database.sql` | Creates the PostgreSQL database |
| `2_create_tables.sql`   | Creates tables inside the database |
| `3_modify_tables.sql`   | Modifies schema and loads CSV data |
| `csv_files/`            | Contains datasets used for loading |

---

## 🚀 How to Run This Project (PostgreSQL)

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/codewithsaloni0506/sql_load.git
cd sql_load
2️⃣ Open PostgreSQL Environment
You can run this project using:

pgAdmin

VS Code SQL Extension

PostgreSQL Terminal (psql)

3️⃣ Execute Scripts in Order
-- Step 1: Create Database
\i 1_create_database.sql

-- Step 2: Create Tables
\i 2_create_tables.sql

-- Step 3: Modify Tables + Load Data
\i 3_modify_tables.sql
📥 Data Loading
This project uses PostgreSQL’s efficient COPY command:

COPY company_dim
FROM 'path/company_dim.csv'
WITH (FORMAT csv, HEADER true);


Diagrams 

![In-Demand Skills](sql_load\project1\assets\indemand skill.png)

![Top Paying skills](sql_load\project1\assets\top_skills.png)


🎯 Learning Outcomes
By working through this project, you will understand:

How databases are created using SQL

How tables and relationships are defined

How schemas evolve using ALTER TABLE

How data is loaded into PostgreSQL using COPY

How SQL scripts are organized in real projects

🛠 Future Improvements
Possible enhancements for this project:

Add analytical SQL queries

Add ER diagrams

Include advanced reporting queries

Automate loading with Python

👩‍💻 Author
Created by Saloni
GitHub: codewithsaloni0506
