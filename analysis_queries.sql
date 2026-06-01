-- 1. Total Employees
SELECT COUNT(*) AS TotalEmployees
FROM EmployeeAttrition;

-- 2. Attrition Count
SELECT COUNT(*) AS AttritionCount
FROM EmployeeAttrition
WHERE Attrition = 'Yes';

-- 3. Attrition Rate
SELECT
ROUND(
COUNT(CASE WHEN Attrition='Yes' THEN 1 END)*100.0/
COUNT(*),2
) AS AttritionRate
FROM EmployeeAttrition;

-- 4. Employees by Department
SELECT Department, COUNT(*) AS EmployeeCount
FROM EmployeeAttrition
GROUP BY Department
ORDER BY EmployeeCount DESC;

-- 5. Attrition by Department
SELECT Department, COUNT(*) AS AttritionCount
FROM EmployeeAttrition
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY AttritionCount DESC;

-- 6. Average Salary by Department
SELECT Department,
AVG(MonthlyIncome) AS AvgSalary
FROM EmployeeAttrition
GROUP BY Department;

-- 7. Highest Paid Employees
SELECT *
FROM EmployeeAttrition
ORDER BY MonthlyIncome DESC
LIMIT 10;

-- 8. Average Years at Company
SELECT AVG(YearsAtCompany)
AS AvgYears
FROM EmployeeAttrition;

-- 9. Attrition by Job Role
SELECT JobRole,
COUNT(*) AS AttritionCount
FROM EmployeeAttrition
WHERE Attrition='Yes'
GROUP BY JobRole
ORDER BY AttritionCount DESC;

-- 10. Employees with More Than 10 Years
SELECT *
FROM EmployeeAttrition
WHERE YearsAtCompany > 10;

-- 11. Young Employees
SELECT *
FROM EmployeeAttrition
WHERE Age < 30;

-- 12. Salary Distribution
SELECT
MIN(MonthlyIncome) AS MinSalary,
MAX(MonthlyIncome) AS MaxSalary,
AVG(MonthlyIncome) AS AvgSalary
FROM EmployeeAttrition;

-- 13. Attrition by Experience
SELECT
YearsAtCompany,
COUNT(*) AS AttritionCount
FROM EmployeeAttrition
WHERE Attrition='Yes'
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

-- 14. Top Departments by Salary
SELECT
Department,
AVG(MonthlyIncome) AS AvgSalary
FROM EmployeeAttrition
GROUP BY Department
ORDER BY AvgSalary DESC;

-- 15. Total Employees by Attrition Status
SELECT
Attrition,
COUNT(*) AS EmployeeCount
FROM EmployeeAttrition
GROUP BY Attrition;
