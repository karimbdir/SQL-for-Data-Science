BASIC FILTERING

WHERE Clause operators
SINGLE CONDITION

SELECT ProductName, UnitPrice,SupplierID
FROM Products
WHERe ProductName = 'Tofu';

SINGLE VALUE

Select ProductName,UnitPrice,SupplierID
FROM Products
WHERE UnitPrice >= 75;

NON-Matches
 
SELECT ProductName,UnitPrice,SupplierID
FROM Products
WHERE ProductName <> 'Alice Mutton';

Range of VALUE
SELECT ProductName,UnitPrice,SupplierID, UnitsInStock
FROM Products
WHERE UnitsInStock BETWEEN 15 AND 80;

NO VALUE
SELECT ProductName,UnitPrice,SupplierID, UnitsInStock
FROM Products
WHERE ProductName IS NULL;



ADVANCED FILTERING , IN, OR ,and NOT

IN operator

SELect SELECT ProductName,UnitPrice,SupplierID
FROM Products
WHERE SupplierID In (9,10,11); 

OR operator

SELECT ProductName,UnitPrice,SupplierID
FROM Products
WHERe ProductName = 'tofu' or 'Konbu';

OR with AND operator
SELECT ProductName,UnitPrice,SupplierID
FROM Products
WHERE (SupplierID = 9 OR SupplierID = 11) and UnitPrice > 15;


NOT OPERATOR

SELECT  *
FROM Employees
WHERE NOT City = 'London' and NOT City='Seattle';

WildCards

'%Pizza' = Grabs anything ending with the word Pizza
'Pizza%' = Grabs anything after the word Pizza
'%Pizza%' = Grabs anything before and after the word Pizza 
'S%E' = Grabs anything that starts with "S" and ends with "E" (like Sadie)
't%@gmail.com' = Grabs gmail addresses that start with "t" (tom)

Underscore(_) WildCard
WHERE size LIKE '_pizza' is same '%Pizza'
output:
       spizza
	   mpizza

Sort with ORDER BY

SELECT something
FROM database
order by DESC ASC 2 3 


Math operations

SELECT ProductID, UnitsOnOrder, UnitPrice, UnitsOnOrder * UnitPrice AS Total_Order_Cost
FROM Products; 

SELECT ProductID, Quantity, UnitPrice, Discount, (UnitPrice - Discount) / Quantity AS Total_Cost
FROM OrderDetails;

 
AGGREGATE FUNCTIONS
AVG()
COUNT()
MIN()
MAX()
SUM()

SELECT AVG(UnitPrice) AS avg_price
FROM Products;

SELECT COUNT (*) AS total_customers
FROM Customers;    = Count all the rows containing null and not null

SELECT COUNT(CustomerID) AS total_customers
FROM Customers;   = Count all rows ignoring NULL 

SELECT MAX(UnitPrice) AS max_prod_price, MIN(UnitPrice) As min_prod_price
FROM Products;

SELECT COUNT(DISTINCT CustomerID)
FROM Customers;

GROUPING data with SQL

SELECT Region, COUNT(CustomerID) AS total_customers
From customers
GROUP BY Region;

SELECT CustomerID, COUNT(*) AS orders
FROM ORDERS
GROUP BY CustomerID
HAVING COUNT (*) >=2;

SELECT SupplierID,COUNT(*) AS Num_Prod
FROM Products
WHERE UnitPrice >=4
GROUP BY SupplierID
HAVING COUNT(*) >=2;


