--Показать поля BusinessEntityID, NationalIDNumber, LoginID,OrganizationNode из таблицы HumanResources.Employee.
--Показать только существующие значения поля OrganizationNode.
--Если поле OrganizationNode имеет значение 0x5AE358, то нужно обратить это значение в NULL. Названия полей оставить без изменений.

select 
	"BusinessEntityID" 
, 	"NationalIDNumber" 
, 	"LoginID" ,
       nullif ("OrganizationNode" , '0x5AE358') as OrganizationNode
from "HumanResources"."Employee"
where "OrganizationNode"  is not null;