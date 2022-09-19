--10. �� ������� Sales.SalesTerritory 
--�������� ���� TerritoryID, [Name] � CountryRegionCode. 
--��� �������� ���� CountryRegionCode, ������ US, 
--�������� �� NULL. 
--�������� ����� �������� ��� ���������.
SELECT 
	  TerritoryID
	, [Name]
	, NULLIF(CountryRegionCode, 'US') AS CountryRegionCode
FROM Sales.SalesTerritory 