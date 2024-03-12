--Показать поля TerritoryID, Name, Group, SalesYTD из таблицы
--Sales.SalesTerritory. Показать только те записи, для которых
--продажи на территории с начала года (SalesYTD) больше $3000000 и
--меньше $5000000. Использовать оператор BETWEEN.

select 
	"TerritoryID" 
,	"Name" 
,	"Group"
,	"SalesYTD" 
from "Sales"."SalesTerritory" 
where "SalesYTD" between 3000000 and 5000000;