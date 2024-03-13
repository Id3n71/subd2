--Выбрать те линейки товаров (ProductLine) из таблицы
--Production.Product, где максимальная цена больше 3000 (из выборки исключить пустые поля).

SELECT
 "ProductLine"
 , MAX("ListPrice") AS "MaxPrice"
FROM "Production"."Product"
WHERE "ProductLine" IS NOT NULL
GROUP BY "ProductLine"
HAVING MAX("ListPrice") >= 3000;