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
Folder	Description
/sql/	All DDL, sample data, PL/SQL code
/python_app/	(Optional) Backend scripts for API or CLI
/tableau/	Dashboards or screenshots of analytics
/docs/	Architecture and data flow diagrams

## 🧪 How to Run
bash
Copy
Edit
### 1. Run tables and sequences
sqlplus user/password@localhost:1521/XEPDB1 @sql/1_tables.sql
sqlplus user/password@localhost:1521/XEPDB1 @sql/2_sequences.sql

### 2. Add triggers, functions, procedures
sqlplus ... @sql/3_triggers.sql
sqlplus ... @sql/4_functions.sql
sqlplus ... @sql/5_procedures.sql

### 3. Insert sample data
sqlplus ... @sql/6_sample_data.sql

### 4. Run reports
sqlplus ... @sql/7_reports.sql

## 📊 Sample Reports (put under the reports Results + dashboards)
1. Coverage left per patient
2. Approved vs denied claims
3. Insurer-wise summaries
4. Full audit log history

🔒 License
MIT License.
