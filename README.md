# Help Desk SQL Analysis

## Project Overview
This project demonstrates SQL-based analysis of IT help desk ticket data using SQLite and DBeaver. The dataset was exported from Excel and loaded into a relational database using Python.

The goal of this project is to practice real-world data analyst workflows:
CSV → Database → SQL Queries → Insights

## Dataset
The dataset contains IT help desk ticket records including:
- Department
- Issue Type
- Priority
- Resolution Time
- Technician
- Ticket Date

## Tools Used
- Python (pandas, sqlite3)
- SQLite
- DBeaver
- SQL

## Analysis Performed
- Ticket volume by department
- Ticket frequency by issue type
- Monthly ticket trends
- Average resolution time by priority
- Technician workload and performance

## Repository Structure
helpdesk-sql-analysis
│
├── Create_db.py
├── helpdesk.db
├── helpdesk_tickets.csv
└── sql/analysis_queries.sql

## Example Query
```sql
SELECT department, COUNT(*) AS ticket_count
FROM tickets
GROUP BY department
ORDER BY ticket_count DESC;
