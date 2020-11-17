CREATE SCHEMA Assignment1;
go

--DROP TABLE Assignment1.Orders;
--DROP TABLE Assignment1.Products;
--DROP TABLE Assignment1.Customers;
CREATE TABLE Assignment1.Products(
	Id INT NOT NULL IDENTITY PRIMARY KEY,
	Name NVARCHAR(150) NOT NULL,
	Price MONEY not NULL,
);

CREATE TABLE Assignment1.Customers(
	Id INT NOT NULL IDENTITY PRIMARY KEY,
	FirstName NVARCHAR(150) NOT NULL,
	LastName NVARCHAR(150) NOT NULL,
	CardNumber INT not NULL,
);

CREATE TABLE Assignment1.Orders(
	Id INT NOT NULL IDENTITY PRIMARY KEY,
	ProductId INT NOT NULL FOREIGN KEY REFERENCES Assignment1.Products (Id),
	CustomerId INT NOT NULL FOREIGN KEY REFERENCES Assignment1.Customers (Id),
);

INSERT INTO Assignment1.Products VALUES
	('Product1',3.00), ('Product2',6.99), ('Product3',5.99);

INSERT INTO Assignment1.Customers VALUES
	('Cust1','Cust1Last',123), ('Cust2','Cust2Last',456), ('Cust3','Cust3Last',789);

INSERT INTO Assignment1.Orders VALUES
	(1,3), (2,2), (3,1);


INSERT INTO Assignment1.Products VALUES
	('iPhone',200.00);

INSERT INTO Assignment1.Customers VALUES
	('Tina','Smith', 345);

	--tina buys an iPhone
INSERT INTO Assignment1.Orders VALUES
	(4,4);

	--tina's orders
SELECT * FROM Assignment1.Orders
	WHERE CustomerId = 4;

	--iPhone sales
 DECLARE @Count INT;
 SELECT @Count = COUNT(*) FROM Assignment1.Orders AS O
			WHERE ProductId = 4
			GROUP BY O.Id;
SELECT SUM(p.Price*@Count) FROM Assignment1.Products AS p
	WHERE p.Id = 4
	GROUP BY p.Id;

UPDATE Assignment1.Products SET Price = 250.00
	WHERE Id = 4;

SELECT * FROM Assignment1.Products;
SELECT * FROM Assignment1.Orders;
SELECT * FROM Assignment1.Customers;
