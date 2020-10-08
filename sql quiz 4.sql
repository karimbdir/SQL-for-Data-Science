1 - Pull a list of customer ids with the customer’s full name, and address, along with combining their city and country together. Be sure to make a space in between these two and make it UPPER CASE. (e.g. LOS ANGELES USA

SELECT CustomerId, FirstName || " " || LastName as FullName, Address, UPPER(City || " " || Country) AS CityCountry
FROM Customers;

2 - Create a new employee user id by combining the first 4 letters of the employee’s first name with the first 2 letters of the employee’s last name. Make the new field lower case and pull each individual step to show your work.

SELECT FirstName, LastName, LOWER(SUBSTR(FirstName,1,4)) AS FN, LOWER(SUBSTR(LastName,1,2)) AS LN, LOWER(SUBSTR(FirstName,1,4)) || LOWER(SUBSTR(LastName,1,2)) AS EmployeeUserId
FROM Employees;

3 - Show a list of employees who have worked for the company for 15 or more years using the current date function. Sort by lastname ascending.

SELECT FirstName, LastName,HireDate,(STRFTIME('%Y','now') - STRFTIME ('%Y', HireDate)) - (STRFTIME('%m-%d', 'now') < STRFTIME('%m-%d', HireDate)) AS Years
FROM Employees
WHERE Years >= 15
ORDER BY LastName DESC;

4 - Profiling the Customers table, answer the following question.

SELECT COUNT(*)
FROM Customers
WHERE [PostalCode, Phone,Company ,Fax, FirstName ,Address] IS NULL;

Columns are done seperatly

5 -Find the cities with the most customers and rank in descending order.

SELECT City, COUNT(*)
FROM Customers
GROUP BY City
ORDER BY COUNT(*) DESC;

6- Create a new customer invoice id by combining a customer’s invoice id with their first and last name while ordering your query in the following order: firstname, lastname, and invoiceID.

SELECT C.FirstName, C.LastName, I.InvoiceId, C.FirstName || C.LastName || I.InvoiceId AS NewCustomerId
FROM Customers C INNER JOIN Invoices I
ON C.CustomerID = I.CustomerID
WHERE NewCustomerId LIKE 'AstridGruber%';