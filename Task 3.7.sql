--Показать комбинированный список таблиц Person.EmailAddress, Person.BusinessEntityAddress по 
--полям BusinessEntityID, rowguid, ModifiedDate, используя UNION.

select ea."BusinessEntityID",
ea."rowguid",
ea."ModifiedDate"
from "Person"."EmailAddress" ea 
union
select bea."BusinessEntityID",
bea."rowguid",
bea."ModifiedDate"
from "Person"."BusinessEntityAddress" bea; 

