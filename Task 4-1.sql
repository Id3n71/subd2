--Показать   товары,   цена   которых   ниже   средней   цены   (не   учитывать
--товары   с   ценой,   равной   нулю)   (Таблица  Production.Product). Вывести Name и ListPrice.

SELECT "Name" , "ListPrice" 
FROM "Production"."Product" 
WHERE "ListPrice"  > 0
  AND "ListPrice"  < (
    SELECT AVG("ListPrice")
    FROM "Production"."Product"  
    WHERE "ListPrice"  > 0
  );

 
 SELECT AVG("ListPrice") AS AveragePrice
FROM "Production"."Product" p 
WHERE "ListPrice"  > 0;
