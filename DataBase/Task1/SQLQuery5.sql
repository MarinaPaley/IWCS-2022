-- 5. Показать поля ProductAssemblyID и UnitMeasureCode
-- из таблицы Production.BillOfMaterials, 
-- где значения поля UnitMeasureCode содержат ‘OZ’.
SELECT 
	  ProductAssemblyID 
	, UnitMeasureCode
FROM Production.BillOfMaterials
WHERE UnitMeasureCode LIKE '%OZ%';