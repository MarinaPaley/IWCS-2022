--8. Показать поля ProductID, [Name] из 
--таблицы Production.Product с применением функции COALESCE().
--Показать поле LastDate, так, чтобы, 
--если значение в поле SellEndDate известно, 
--то показать его, а иначе, показать значение 
--в поле DiscontinuedDate. Если и в поле DiscontinuedDate 
--значение неизвестно, то вывести текущую дату.
SELECT 
	  ProductID
	, [Name]
	, COALESCE
		( CONVERT(NVARCHAR(50), SellEndDate, 106)
		, CONVERT(NVARCHAR(50), DiscontinuedDate, 106)
		, CONVERT(NVARCHAR(50), GETDATE(), 106))
	AS LastDate
FROM Production.Product;
GO
DECLARE @D DATETIME = GETDATE();
DECLARE @S NVARCHAR(50) = CONVERT(NVARCHAR(50), @D, 106);
PRINT @S;
SELECT @S AS N'Сегодня';

SELECT CAST('1' AS INT)  AS '1';