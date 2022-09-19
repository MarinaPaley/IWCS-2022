--6.�� ������� Production.[Location] 
--�������� ID �������������� � �������� 
--�������� (LocationID � [Name]). 
--�������� �������� ������ ���� ��� 
--Metal Storage, ��� Paint Storage, 
--��� Finished Goods Storage. 
--������������ �������� IN.
SELECT 
	  LocationID
	, [Name] 
FROM Production.[Location]
--WHERE [Name] LIKE 'Metal Storage' OR 
--      [Name] LIKE 'Paint Storage' OR
--	  [Name] LIKE 'Finished Goods Storage';
WHERE [Name] IN 
('Metal Storage', 'Paint Storage', 'Finished Goods Storage');