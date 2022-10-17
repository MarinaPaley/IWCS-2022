SELECT *
FROM Parents AS p, Children AS c
WHERE p.ID = c.ID_Mama

--INNER JOIN.. ON
SELECT c.ID
	 , p.FamilyName AS '‘амили¤ мамы'
	 , p.FirstName AS '»м¤ мамы'
	 , p.MiddleName
	 , p2.FamilyName
	 , p2.FirstName
	 , p2.MiddleName
	 , c.FamilyName
	 , c.FirstName
	 , c.MiddleName
	 , c.BirthDate
	 , c.Gender
FROM Children AS c
INNER JOIN Parents AS p
ON c.ID_Mama = p.ID
INNER JOIN Parents AS p2
ON c.ID_Papa = p2.ID