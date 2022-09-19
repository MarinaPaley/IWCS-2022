--6.Из таблицы Production.[Location] 
--показать ID местоположения и название 
--магазина (LocationID и [Name]). 
--Название магазина должно быть или 
--Metal Storage, или Paint Storage, 
--или Finished Goods Storage. 
--Использовать оператор IN.
SELECT 
	  LocationID
	, [Name] 
FROM Production.[Location]
--WHERE [Name] LIKE 'Metal Storage' OR 
--      [Name] LIKE 'Paint Storage' OR
--	  [Name] LIKE 'Finished Goods Storage';
WHERE [Name] IN 
('Metal Storage', 'Paint Storage', 'Finished Goods Storage');