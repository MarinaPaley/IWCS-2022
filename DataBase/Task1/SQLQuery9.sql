--9.Показать и отсортировать в обратном алфавитном порядке 
--все уникальные значения поля CultureID из 
--таблицы Production.ProductModelProductDescriptionCulture.
SELECT DISTINCT CultureID
FROM Production.ProductModelProductDescriptionCulture
ORDER BY CultureID DESC;

SELECT DISTINCT Color
FROM Production.Product;