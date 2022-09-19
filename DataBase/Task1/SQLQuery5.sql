-- 5. ѕоказать пол€ ProductAssemblyID и UnitMeasureCode
-- из таблицы Production.BillOfMaterials, 
-- где значени€ пол€ UnitMeasureCode содержат СOZТ.
SELECT 
	  ProductAssemblyID 
	, UnitMeasureCode
FROM Production.BillOfMaterials
WHERE UnitMeasureCode LIKE '%OZ%';