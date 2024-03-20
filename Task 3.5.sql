--Показать список продуктов (ProductID), которые имеют несколько дат выполнения заказа (DueDate), из таблицы 
--Purchasing.PurchaseOrderDetail, используя SELF JOIN.

select distinct pod."ProductID" 
from "Purchasing"."PurchaseOrderDetail" pod 
inner join "Purchasing"."PurchaseOrderDetail" pod2 on pod."ProductID" = pod2."ProductID"
where pod."DueDate" <> pod2."DueDate";