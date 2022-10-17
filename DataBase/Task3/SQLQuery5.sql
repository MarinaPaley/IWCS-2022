SELECT 
	  c.FirstName
	, c.MiddleName
	, c.BirthDate
	, c.Gender
	, m.FamilyName
	, m.FirstName
	, m.MiddleName
	, p.FamilyName
	, p.FirstName
	, p.MiddleName
FROM Children AS c
INNER JOIN Parents AS m
ON m.ID = c.ID_Mama
INNER JOIN Parents AS p
ON p.ID = c.ID_Papa;