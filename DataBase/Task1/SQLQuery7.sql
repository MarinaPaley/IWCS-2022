-- 7. �������� ���� BusinessEntityID, 
--PersonType, Title � LastName �� ������� Person.Person. 
--��� ����������� �������� ���� Title �������� �� 'Dear.'. 
--�������� ����� �������� ��� ���������.
SELECT 
	  PersonType
	, ISNULL(Title, N'���������') AS '??'
	, LastName
FROM Person.Person;