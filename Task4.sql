--Из таблицы Sales.Store показать ID сотрудника
--(BusinessEntityID), название магазина (Name) и ID продавца
--(SalesPersonID). Показать только существующие ID продавцов.

select 
	"BusinessEntityID"  
,	"Name" 
,	"SalesPersonID"  
from "Sales"."Store" 
where "SalesPersonID" is not null;