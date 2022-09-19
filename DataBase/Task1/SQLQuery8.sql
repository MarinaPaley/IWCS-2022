--8. �������� ���� ProductID, [Name] �� 
--������� Production.Product � ����������� ������� COALESCE().
--�������� ���� LastDate, ���, �����, 
--���� �������� � ���� SellEndDate ��������, 
--�� �������� ���, � �����, �������� �������� 
--� ���� DiscontinuedDate. ���� � � ���� DiscontinuedDate 
--�������� ����������, �� ������� ������� ����.
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
SELECT @S AS N'�������';

SELECT CAST('1' AS INT)  AS '1';