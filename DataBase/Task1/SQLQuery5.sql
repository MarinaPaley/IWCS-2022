-- 5. �������� ���� ProductAssemblyID � UnitMeasureCode
-- �� ������� Production.BillOfMaterials, 
-- ��� �������� ���� UnitMeasureCode �������� �OZ�.
SELECT 
	  ProductAssemblyID 
	, UnitMeasureCode
FROM Production.BillOfMaterials
WHERE UnitMeasureCode LIKE '%OZ%';