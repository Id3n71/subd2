--4) Создать копию таблицы по условию
select p."ID"
into table "Product3"
from "Products" p
where p."ID" in (1, 3);