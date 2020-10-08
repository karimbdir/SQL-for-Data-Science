1 - Retrive all the records from the Employees table.

SELECT *
FROM Employees

2 - Retrive the FirstName, LastName, Birthdate, Address, City and State from the Employees table.


SELECT FirstName, LastName, Birthdate, Address, City, STATE
FROM Employees
WHERE Birthdate = '1965-03-03 00:00:00'


3 - Retrive all the columns from the tracks table, but only return 20 rows.

SELECT * 
FROM Tracks
limit 20;