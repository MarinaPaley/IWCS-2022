--ROW_NUMBER()
SELECT
      ROW_NUMBER() OVER 
		(ORDER BY ListPrice ASC) AS N
	,  [Name]
	, ListPrice
	, Color
	, Size
FROM Production.Product
WHERE ListPrice > 0;

--ROW_NUMBER()
SELECT
      ROW_NUMBER() OVER 
		(ORDER BY [Name] ASC) AS N
	,  [Name]
	, ListPrice
	, Color
	, Size
FROM Production.Product
WHERE ListPrice > 0;

--RANK()
SELECT
      RANK() OVER 
		(ORDER BY ListPrice ASC) AS N
	,  [Name]
	, ListPrice
	, Color
	--, Size
FROM Production.Product
WHERE ListPrice > 0 AND Color IS NOT NULL;

--PARTION
SELECT 
      RANK() OVER( 
        PARTITION BY Color 
        ORDER BY ListPrice) AS N 
    , [Name] 
    , ListPrice 
    , Color 
FROM Production.Product 
WHERE ListPrice > 0 AND Color IS NOT NULL; 

--DEFENCE_RANK()
SELECT
      DENSE_RANK() OVER 
		(ORDER BY ListPrice ASC) AS N
	,  [Name]
	, ListPrice
	, Color
	, Size
FROM Production.Product
WHERE ListPrice > 0;

--NTILE()
SELECT
      NTILE(5) OVER 
		(ORDER BY ListPrice ASC) AS N
	,  [Name]
	, ListPrice
	, Color
	, Size
FROM Production.Product
WHERE ListPrice > 0;