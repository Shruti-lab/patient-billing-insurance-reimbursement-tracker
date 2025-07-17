# Patient Billing & Insurance Reimbursement Tracker (PL/SQL Project)

## 📄 Description
A robust healthcare billing and claim reimbursement backend built with PL/SQL. It supports automatic claim generation, claim auditing, and financial reporting using advanced database concepts (triggers, functions, procedures). Ideal for healthcare workflows.

## 🔧 Tech Stack
Oracle Database XE (Docker) - relational database server
Oracle PL/SQL – Core logic and data processing, schema, constraints, sequences
Data Grip - IDE for connecting to oracle database XE and run queries
Tableau – For Data visualization for reports

## 🧠 Features
- Insert patients, generate bills, and create claims automatically
- Trigger-based audit logging for every claim status change
- Calculate remaining insurance coverage dynamically
- Modular PL/SQL code organization (triggers, procedures, functions)

## 📂 Folder Guide

| Folder         | Description                                |
|----------------|--------------------------------------------|
| `/sql/`        | All DDL, sample data, PL/SQL code          |
| `/reports/`    | reports results and dashboards     |
| `/docs/`       | Architecture and data flow, schema diagrams        |

## 🧪 How to Run
On bash:
### 1. Run tables and sequences
```bash
sqlplus user/password@localhost:1521/XE @sql/tables.sql
sqlplus user/password@localhost:1521/XE @sql/sequences.sql
```

### 2. Add triggers, functions, procedures
```bash
sqlplus ... @sql/triggers.sql
sqlplus ... @sql/functions.sql
sqlplus ... @sql/procedures.sql
```

### 3. Insert sample data
```bash
sqlplus ... @sql/sample_data.sql
```

### 4. Run reports
```bash
sqlplus ... @sql/7_reports.sql
```

## 📊 Sample Reports (put under the reports Results + dashboards)
1. Coverage left per patient
2. Approved vs denied claims
3. Insurer-wise summaries
4. Full audit log history

🔒 License
MIT License.
