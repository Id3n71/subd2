--Показать список дат выполнения заказа (DueDate), к которым относятся несколько продуктов (ProductID), из таблицы 
--Purchasing.PurchaseOrderDetail, используя SELF JOIN.

select pod."DueDate" 
from "Purchasing"."PurchaseOrderDetail" pod 
inner join "Purchasing"."PurchaseOrderDetail" pod2 on pod."DueDate" = pod2."DueDate" and pod."ProductID" <> pod2."ProductID"
group by pod."DueDate"
having count(distinct  pod."ProductID") > 1;
