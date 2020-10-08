SELECT STATEMENT :
SELECT prod_name
FROM Products;

Select a column from table to extract information

SELECT prod_name, prod_id, prod_price
Or SELECT prod_name,
                    Prod_id,
                    Prod_price
FROM Products;

SELECT ALL COLUMNS
SELECT * 
FROM Products;

LIMIT RESULTS
SELECT
FROM
LIMIT (number of records) ;

CREATING TABLE
Create table Shoes
(
Id char(10) PRIMARY KEY,
Brand char(10) NOT NULL,
Type char(250) NOT NULL,
Color char(250) NOT NULL,
Price decimal(8,2) NOT NULL,
Desc Varchar(750) NULL); 

Insert Data

INSERT INTO Shoes
VALUES (‘14535974’,’Gucci’,’Slippers’,’Pink’,’695.00’,NULL);


Create temporary tables	
CREATE TEMPORARY TABLE Sandals AS (
SELECT * 
FROM Shoes
WHERE shoe_type = ‘sandals’)		
Add Comments to SQL

Add COMMENT

Single Line
SELECT shoe_id 
- - , brand_id, 
shoe_name
from shoes

Section

Select shoe_id /*,
brand_id,shoe_name*/
from shoes


