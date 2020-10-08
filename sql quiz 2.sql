1 - Find all the tracks that have a length of 5,000,000 milleseconds or more.

SELECT COUNT(TrackID)
FROM Tracks
WHERE Milliseconds >= 5000000;

2 - Find all the invoices whose total is between $5 and $15 dollars.

SELECT InvoiceId, Total
FROM Invoices
WHERE Total > 5 AND Total < 15;

3 - Find all the customers from the following State: RJ,DF,AB,BC,CA,WA,NY.

SELECT FirstName, LastName, Company, STATE
FROM Customers
WHERE STATE IN ('RJ','DF','AB','BC','CA','WA','NY');

4 - Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

SELECT CustomerID, InvoiceId, Total, InvoiceDate
FROM Invoices
WHERE CustomerID IN(56,58) AND Total BETWEEN 1 AND 5;

5 - Find all the tracks whose name starts with 'All'.

SELECT TrackId, Name
FROM Tracks
WHERE Name LIKE 'ALL%';

6 - Find all the customer emails that start with "J" and are from gmail.com.

SELECT CustomerId, Email
FROM Customers
WHERE Email LIKE "j%@gmail.com";

7 - Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

SELECT InvoiceId , BillingCity, Total
FROM Invoices
WHERE BillingCity IN ('Brasília','Edmonton','Vancouver')
ORDER BY InvoiceId DESC;

8 - Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.

SELECT CustomerID, COUNT(*) AS Orders
FROM Invoices
GROUP BY CustomerID
ORDER BY Orders DESC;

9 - Find the albums with 12 or more tracks

SELECT AlbumId, COUNT (*) AS Number_of_tracks
FROM Tracks
GROUP BY AlbumId
HAVING COUNT (*) >= 12;