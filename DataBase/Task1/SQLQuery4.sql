-- 4. �������� ID ����������� (BusinessEntityID),
--������������ (NOT NULL) ����� ������ (SalesQuota)
-- � �������������� ������� (Bonus) �� ������� Sales.SalesPerson.
SELECT 
	  BusinessEntityID
	, SalesQuota
	, Bonus
FROM Sales.SalesPerson
WHERE SalesQuota IS NOT NULL;