CREATE TABLE Company
(
	  ID INT PRIMARY KEY
	, [Name] NVARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE Vegetables
(
      ID INT PRIMARY KEY
	, [Name] NVARCHAR(15) NOT NULL UNIQUE
);

--DROP TABLE Vegetables_Company;
CREATE TABLE Vegetables_Company
(
	  ID INT PRIMARY KEY
	, ID_Company INT FOREIGN KEY
	  REFERENCES Company (ID)
	, ID_Vegetable INT FOREIGN KEY
	  REFERENCES Vegetables (ID)
	, Price MONEY NOT NULL
);

--DROP TABLE Sale;
CREATE TABLE Sale
(
	  ID INT PRIMARY KEY
	, ID_Vegetables INT FOREIGN KEY
	  REFERENCES Vegetables_Company(ID)
	, SaleData DATE NOT NULL
	, Quantity INT NOT NULL
);
--DROP TABLE Purchasing;
CREATE TABLE Purchasing
(
	  ID INT PRIMARY KEY
	, ID_Vegetables INT FOREIGN KEY
	  REFERENCES Vegetables_Company(ID)
	, BuyData DATE NOT NULL
	, Quantity INT NOT NULL
);

INSERT INTO Company
VALUES 
  (1, 'Первая')
, (2, 'Вторая')
, (3, 'Третья');
INSERT INTO Company
VALUES  (4, 'Четвертая');


INSERT INTO Vegetables
VALUES
  (1, 'Огурцы')
, (2, 'Помидоры')
, (3, 'Лук')
, (4, 'Картофель')
, (5, 'Морковь');


INSERT INTO Vegetables_Company
VALUES 
  (1, 1, 1, 100)
, (2, 1, 2, 150)
, (3, 2, 1, 80)
, (4, 3, 3, 50)
, (5, 2, 4, 40)
, (6, 3, 5, 60)
, (7, 1, 3, 45)
, (8, 1, 4, 55)
, (9, 1, 5, 35);

INSERT INTO Vegetables_Company
VALUES (10, 4, 1, 200);


SELECT *
FROM Company;
SELECT *
FROM Vegetables;

SELECT vc.ID
	, c.[Name] Company
	, v.[Name] Vegetable
	, vc.Price
FROM Vegetables_Company vc
INNER JOIN Company c
ON vc.ID_Company = c.ID
INNER JOIN Vegetables v
ON vc.ID_Vegetable = v.ID;


INSERT INTO Purchasing
VALUES
  (1, 1, '2022-10-01', 100)
, (2, 2, '2022-10-01', 200)
, (3, 3, '2022-10-03', 100)
, (4, 4, '2022-10-04', 150)
, (5, 5, '2022-10-06', 100)
, (6, 6, '2022-10-07', 120)
, (7, 7, '2022-10-08', 150)
, (9, 9, '2022-10-10', 200);

INSERT INTO Purchasing
VALUES (8, 8, '2022-10-10', 200);

INSERT INTO Sale
VALUES
  (1, 1, '2022-10-02', 10)
, (2, 2, '2022-10-02', 20)
, (3, 3, '2022-10-03', 10)
, (4, 4, '2022-10-04', 15)
, (5, 5, '2022-10-07', 10)
, (6, 6, '2022-10-07', 120)
, (7, 7, '2022-10-09', 15)
, (8, 8, '2022-10-10', 10)
, (9, 9, '2022-10-10', 200);

SELECT 
	  p.ID
	, c.[Name] Company
	, v.[Name] Vegetable
	, p.BuyData
	, p.Quantity
FROM Purchasing p
INNER JOIN Vegetables_Company vc
ON p.ID_Vegetables = vc.ID
INNER JOIN Company c
ON vc.ID_Company = c.ID
INNER JOIN Vegetables v
ON vc.ID_Vegetable = v.ID


SELECT 
	  p.ID
	, c.[Name] Company
	, v.[Name] Vegetable
	, p.SaleData
	, p.Quantity
FROM Sale p
INNER JOIN Vegetables_Company vc
ON p.ID_Vegetables = vc.ID
INNER JOIN Company c
ON vc.ID_Company = c.ID
INNER JOIN Vegetables v
ON vc.ID_Vegetable = v.ID

SELECT *
FROM Purchasing p
LEFT JOIN Sale s
ON p.BuyData = s.SaleData;


SELECT *
FROM Purchasing p
RIGHT JOIN Sale s
ON p.BuyData = s.SaleData;

SELECT *
FROM Purchasing p
FULL JOIN Sale s
ON p.BuyData = s.SaleData;


SELECT DISTINCT vc1.ID
	, vc1.ID_Company
	, vc1.ID_Vegetable
	, vc1.Price
FROM Vegetables_Company AS vc1
INNER JOIN Vegetables_Company AS vc2
ON vc1.ID_Company = vc2.ID_Company
AND vc1.ID_Vegetable <> vc2.ID_Vegetable;

SELECT DISTINCT vc1.ID
	, vc1.ID_Company
	, vc1.ID_Vegetable
	, vc1.Price
FROM Vegetables_Company AS vc1
INNER JOIN Vegetables_Company AS vc2
ON vc1.ID_Company <> vc2.ID_Company
AND vc1.ID_Vegetable = vc2.ID_Vegetable;

SELECT *
FROM Sale
UNION
SELECT *
FROM Purchasing;

SELECT *
FROM Sale
UNION ALL
SELECT *
FROM Purchasing;

SELECT *
FROM Sale
INTERSECT
SELECT *
FROM Purchasing;

SELECT *
FROM Sale
EXCEPT
SELECT *
FROM Purchasing;

