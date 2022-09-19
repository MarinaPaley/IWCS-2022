-- 7. Показать поля BusinessEntityID, 
--PersonType, Title и LastName из таблицы Person.Person. 
--Все неизвестные значения поля Title заменить на 'Dear.'. 
--Названия полей оставить без изменения.
SELECT 
	  PersonType
	, ISNULL(Title, N'Уважаемый') AS '??'
	, LastName
FROM Person.Person;