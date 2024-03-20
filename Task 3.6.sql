--Показать список покупателей (CustomerID), которые имеют несколько стоимостей доставки (Freight), из таблицы
--Sales.SalesOrderHeader, используя SELF JOIN. Значение стоимостей не менее 50.\

select soh."Freight"
from "Sales"."SalesOrderHeader" soh
inner join "Sales"."SalesOrderHeader" soh2  on soh."Freight" = soh2."Freight" and soh."CustomerID" <> soh2."CustomerID"
where soh."Freight" >= 50
group by soh."Freight";