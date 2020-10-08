Using Subqueries

SELECT CustomerID, CompanyName, Region
FROM Customers
WHERE CustomerID in (SELECT CustomerID
                                     FROM orders
									 WHERE Freight >100);
									 

SELECT Customer_name, Customer_contact
FROM Customers
WHERE cust_id IN
   SELECT customer_id
   FROM Orders
   WHERE order_number IN (SELECT order_number
       FROM OrderItems
	      WHERE prod_name = 'Toothbrush');
		  



SELECT COUNT(*) AS orders
FROM Orders
WHERE customer_id = '143569';

SELECT customer_name
	,customer_state(SELECT COUNT(*) AS orders FROM Orders WHERE Orders.customer_id = Customer.customer_id) AS orders
FROM customers
ORDER BY Customer_name

JOINING TABLES 

Cartesian (Cross) Joins

Table 1 = Suppliers
Table 2 = Products

SELECT product_name , unit_price, company_name
FROM Suppliers CROSS JOIN Products; 

Output = the number of joins in the 1st table multiplied by the number of rows in the 2nd table.

INNER Joins

SELECT suppliers.CompanyName,ProductName,UnitPrice
FROM Suppliers INNER JOIN Products ON Suppliers.supplierid = Products.supplierid;


INNER JOIN WITH MULTIPLE TABLES

SELECT o.OrderID, c.CompanyName, e.LastName
FROM ((Orders o INNER JOIN Customers C ON o.CustomerID = c.CustomerID)
INNER JOIN Employees e ON o.EmployeeID = e.EmplyeeID);

Aliases and Self Joins

Aliases
SELECT vendor_name, product_name, product_price
FROM Vendors AS v, Products AS prod_name
WHERE v.vendor_id = p.vendor_id;

Self
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID = B.CustomerID
AND A.City = B.City
ORDER BY A.City;


Advanced Joins: Left , Right and Full Outer Joins

Left Joins

SELECT C.CustomerName , O.OrderID
FROM Customers C 
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
ORDER BY C.CustomerName;

Right Joins

SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmplyeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

Full Outer Joins
SELECT Customers.CustomerName,Orders.OrderID

FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;


Unions
BASIC
SELECT column_name FROM Table1
UNION
SELECT column_name FROM table2;

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION 
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;





