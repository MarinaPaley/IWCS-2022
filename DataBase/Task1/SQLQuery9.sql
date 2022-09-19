--9.ѕоказать и отсортировать в обратном алфавитном пор€дке 
--все уникальные значени€ пол€ CultureID из 
--таблицы Production.ProductModelProductDescriptionCulture.
SELECT DISTINCT CultureID
FROM Production.ProductModelProductDescriptionCulture
ORDER BY CultureID DESC;

SELECT DISTINCT Color
FROM Production.Product;