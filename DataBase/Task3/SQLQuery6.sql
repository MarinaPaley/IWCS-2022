SELECT 
	  MAX(ListPrice) AS maxListPrice
	, Color
	, Size
FROM Production.Product
WHERE Color IS NOT NULL AND Size IS NOT NULL
GROUP BY Color, Size;

--CUBE
SELECT 
	  MAX(ListPrice) AS maxListPrice
	, Color
	, Size
	, GROUPING(Color) AS TotalColor
	, GROUPING(Size) AS TotalSize
FROM Production.Product
WHERE Color IS NOT NULL AND Size IS NOT NULL
GROUP BY CUBE (Color, Size);

--ROLLUP
SELECT 
	  MAX(ListPrice) AS maxListPrice
	, Color
	, Size
	, GROUPING(Color) AS TotalColor
	, GROUPING(Size) AS TotalSize
FROM Production.Product
WHERE Color IS NOT NULL AND Size IS NOT NULL
GROUP BY ROLLUP (Color, Size);

--GROUPPING SETS()
SELECT 
	  MAX(ListPrice) AS maxListPrice
	, Color
	, Size
	, GROUPING(Color) AS TotalColor
	, GROUPING(Size) AS TotalSize
FROM Production.Product
WHERE Color IS NOT NULL AND Size IS NOT NULL
GROUP BY GROUPING SETS (Color, Size, ());

