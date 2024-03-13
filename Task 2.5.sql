--Вывести EmployeeID, ShipDate и сумму по SubTotal для
--всевозможных EmployeeID с одинаковой ShipDate, предусмотреть
--вывод общей суммы StandardPrice за ShipDate из таблицы
--Purchasing.PurchaseOrderHeader. (Использовать CUBE).

SELECT 
	"EmployeeID" 
	, "ShipDate" 
	, SUM("SubTotal") AS SubTotalSum
FROM "Purchasing"."PurchaseOrderHeader"  
GROUP BY CUBE("EmployeeID" , "ShipDate");