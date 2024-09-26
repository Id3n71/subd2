--Показать список ID людей (поле BusinessEntityId), в котором указано, является человек вендором или нет, из таблиц
--Purchasing.Vendor, Person.BusinessEntity, используя RIGHT OUTER JOIN

SELECT 
    be."BusinessEntityID", 
    v."PreferredVendorStatus" as "VendorStatus"
FROM 
    "Person"."BusinessEntity" be 
RIGHT OUTER JOIN "Purchasing"."Vendor" v ON be."BusinessEntityID"  = v."BusinessEntityID" 

