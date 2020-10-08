Working with Text Strings

SELECT CompanyName, ContactName, CompanyName ||'('||ContactName||')'
FROM customers;

Trimming Strings

SELECT TRIM("     You the best.    ") AS TrimmedString;

Substring

SELECT first_name, SUBSTR(first_name,2,3)
FROM Employees
WHERE department_id=60;

CASE Statements;

SELECT employeeid,firstname,lastname,city, case City 
WHEN 'Calgary' THEN 'Calgary'
ELSE 'Other'
END calgary
FROM Employees
ORDER BY LastName,FirstName;

Views

CREATE VIEW my_view
AS 
SELECT r.regiondescription, t.territorydescription, e.LastName,e.FirstName, e.Hiredate,e.Reportsto
FROM Region r 
INNER JOIN Territories t on r.regionid = t.regionid
INNER JOIN Employeeterritories et on t.TerritoryID = et.TerritoryID
INNER JOIN Emplyees e on et.employeeid = e.EmployeeID;

