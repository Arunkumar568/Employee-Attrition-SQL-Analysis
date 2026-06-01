# Employee-Attrition-SQL-Analysis

# Employee Attrition Analysis Using SQL

![SQL](https://img.shields.io/badge/SQL-Analysis-blue)
![Database](https://img.shields.io/badge/Database-MySQL-green)
![Data Analytics](https://img.shields.io/badge/Data-Analytics-orange)
![Project Status](https://img.shields.io/badge/Status-Completed-brightgreen)

## Project Overview

Employee attrition is one of the most critical workforce challenges faced by organizations. This project analyzes employee turnover patterns using SQL and provides insights into attrition trends, salary distribution, employee experience, and departmental workforce dynamics.

The analysis was performed on a dataset containing **3,000 employee records** across multiple departments.

---

## Business Problem

Organizations often struggle to identify the root causes of employee turnover.

This project aims to answer:

* What is the overall attrition rate?
* Which departments experience the highest turnover?
* Which job roles are most affected?
* How does employee experience influence attrition?
* What salary trends exist among employees who leave?

---

## Dataset Information

| Attribute      | Description                |
| -------------- | -------------------------- |
| EmployeeID     | Unique Employee Identifier |
| Age            | Employee Age               |
| Department     | Employee Department        |
| JobRole        | Employee Job Role          |
| MonthlyIncome  | Monthly Salary             |
| YearsAtCompany | Employee Tenure            |
| Attrition      | Employee Left or Stayed    |

### Total Records

```text
3000 Employees
```

---

## Database Schema

### EmployeeAttrition Table

```sql
CREATE TABLE EmployeeAttrition (
    EmployeeID INT PRIMARY KEY,
    Age INT,
    Department VARCHAR(50),
    JobRole VARCHAR(100),
    MonthlyIncome INT,
    YearsAtCompany INT,
    Attrition VARCHAR(5)
);
```

---

## SQL Skills Demonstrated

* Data Aggregation
* Data Filtering
* GROUP BY
* ORDER BY
* Aggregate Functions
* Business KPI Analysis
* Workforce Analytics
* SQL Reporting

---

## Key Analysis Performed

### Employee Metrics

* Total Employees
* Attrition Count
* Attrition Rate

### Department Analysis

* Employees by Department
* Attrition by Department
* Salary by Department

### Job Role Analysis

* Attrition by Job Role
* Workforce Distribution

### Salary Analysis

* Average Salary
* Highest Paid Employees
* Salary Distribution

### Experience Analysis

* Attrition by Years at Company
* Long-Term Employee Analysis

---

## Sample SQL Query

```sql
SELECT
    Department,
    COUNT(*) AS AttritionCount
FROM EmployeeAttrition
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY AttritionCount DESC;
```

---

## Repository Structure

```text
Employee-Attrition-SQL-Analysis
│
├── README.md
├── employee_attrition_3000_rows.csv
├── create_table.sql
└── analysis_queries.sql
```

---

## Key Business Insights

* Department-level attrition trends can help HR identify high-risk areas.
* Employee tenure plays a major role in turnover patterns.
* Salary distribution provides insight into compensation-related retention challenges.
* Workforce analytics enables data-driven HR decision making.

---

## Tools Used

* SQL
* MySQL
* GitHub

---

## Author

Arunkumar Karukolla

Data Analyst | SQL | Power BI | Python

GitHub Portfolio: https://github.com/Arunkumar568

