--Ограничить результирующий набор, полученный в п.8.

select "ProductID"
from "Production"."Product"
intersect
select "ProductID"
from "Production"."ProductInventory"
order by "ProductID" 
limit 17;
