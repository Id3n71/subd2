--Ранжирование   товаров   по   размеру:   от   меньшего   к   большему.
--("Production"."Product").   Примечание   к   ранжированию   –   ранг
--может начинаться с произвольного числа (например, 2 или 5), главное – ранг не должен уменьшаться.

SELECT "Name" , "ListPrice" ,
       (SELECT COUNT(*)
        FROM "Production"."Product"  AS p2
        WHERE p2."ListPrice" < p1."ListPrice") AS rank
FROM "Production"."Product"  AS p1
ORDER BY rank;
