--Для   каждого  Product  вывести   отклонение   от   среднего SafetyStockLevel. Таблица "Production"."Product".

SELECT "Name" , "SafetyStockLevel" ,
       "SafetyStockLevel"  - (
           SELECT AVG("SafetyStockLevel")
           FROM "Production"."Product"  
       ) AS DeviationFromAverage
FROM "Production"."Product" ;

 SELECT AVG("SafetyStockLevel") AS AveragePrice
FROM "Production"."Product" p 