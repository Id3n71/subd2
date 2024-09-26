--Найти суммарную цену (ListPrice) товара сорокового размера и 
--черного цвета из таблицы Production.Product

SELECT SUM("ListPrice") as "SumPrice"
FROM "Production"."Product" 
WHERE "Size" like '40%' AND "Color" like 'Black%';