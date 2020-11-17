-- comment
--not case sensitive
--semicolons not required

SELECT * FROM Customer;

SELECT 'Hello world';
SELECt 2 + 2;

-- useful: SELECT (columns) from (table)
--					^select list
--two columns
SELECT FirstName, LastName FROM Customer;

--one column
SELECT FirstName + ' ' + LastName FROM Customer;

--column alias syntax
SELECT FirstName, LastName AS Fullname FROM Customer;
SELECT FirstName, LastName AS "Full name" FROM Customer;
SELECT FirstName, LastName AS [Full name] FROM Customer;

--filtering with WHERE

SELECT *
FROM Customer
WHERE LEN(FirstName) >5;

SELECT *
FROM Customer
WHERE Country = 'Brazil';

--boolean ops are spelled out" AND, OR, NOT

--every customer with first name starting with B
SELECT *
FROM Customer
WHERE FirstName >= 'B' AND FirstName < 'C';

--aggregate functions
SELECT COUNT(*)
FROM Customer;

--other agg functions: AVG, SUM, MIN, MAX
SELECT SUM(Total) FROM Invoice;
SELECT AVG(Total) FROM Invoice;
SELECT SUM(Total) FROM Invoice;

--agg. functions by default agg. all rows into 1.
--if we want to group into more than just one row, we can use GROUP 
SELECT *
FROM Invoice
GROUP BY CustomerId;
--Msg 8120, Level 16, State 1, Line 51
--Column 'Invoice.InvoiceId' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.

--how much has each cutomer bought
SELECT CustomerId, sum(total)
FROM Invoice
GROUP BY CustomerId;

--how can i filter after based on after the rows have been grouped
SELECT CustomerId, sum(total)
FROM Invoice
WHERE SUM(TOTAL)>40
GROUP BY CustomerId;--use having 

--customers who have bought > 40 worth
SELECT CustomerId, sum(total)
FROM Invoice
GROUP BY CustomerId
HAVING SUM(TOTAL)>40;

SELECT CustomerId, sum(total)
FROM Invoice
GROUP BY CustomerId
HAVING SUM(TOTAL)>40
ORDER BY SUM(TOTAL) DESC;

--other select options
--SELECT DISTINCT (remove duplicates as the last step)
-- SELECT TOP (N) (discard after the firs N rows)

--logical order of execution of the SELECT statement

--FROM
--WHERE
--GROUP BY
--HAVING
--SELECT
--ORDER BY

SELECT *
FROM Invoice

SELECT FirstName, LastName, CustomerId, Country
FROM customer
WHERE country != 'USA';

SELECT FirstName, LastName, CustomerId, Country
FROM customer
WHERE country = 'Brazil';

SELECT *
FROM Employee
where Title = 'Sales support agent';

SELECT BillingCountry + ' ' + BillingAddress
As BillingAddress
FROM invoice;

SELECT SUM(*)
FROM Invoice
where InvoiceDate >= '2009' AND InvoiceDate < '2010';

