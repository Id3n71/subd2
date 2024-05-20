--Получите   список   всех  PurchaseOrderDetailID,   у   которых
--UnitPrice равна UnitPrice c PurchaseOrderID = 31

SELECT "PurchaseOrderDetailID" 
FROM "Purchasing"."PurchaseOrderDetail" pod2 
WHERE "UnitPrice"  = (
    SELECT "UnitPrice" 
    FROM "Purchasing"."PurchaseOrderDetail" pod 
    WHERE "PurchaseOrderID"  = 31
    LIMIT 1
);
