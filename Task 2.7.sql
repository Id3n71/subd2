--Изменить запрос п.5 использовать GROUPING SETS. Отделить строки,
--созданные с помощью агрегатных функций от строк из фактической таблицы.

SELECT 
	"EmployeeID" 
	, "ShipDate" 
	, SUM("SubTotal") AS SubTotalSum
	, GROUPING	("EmployeeID","ShipDate") AS "Grouping"
FROM "Purchasing"."PurchaseOrderHeader"  
GROUP BY GROUPING SETS (("EmployeeID") , ("ShipDate"));